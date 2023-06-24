#### import the necessary libraries
from tensorflow.keras.applications.mobilenet_v2 import preprocess_input
from tensorflow.keras.preprocessing.image import img_to_array
from tensorflow.keras.models import load_model
from imutils.video import VideoStream
import numpy as np
import imutils
import cv2
 
#For arduino connection
import serial

#For arduino connection
arduino = serial.Serial('COM3', 9600)
                             
lowConfidence = 0.75

def detectAndPredictMask(frame, faceNet, maskNet):
    (h, w) = frame.shape[:2]
    blob = cv2.dnn.blobFromImage(frame, 1.0, (224, 224),(104.0, 177.0, 123.0))
    # pass the blob through the network and obtain the face detections
    faceNet.setInput(blob)
    detections = faceNet.forward()
    # initialize list of faces, their corresponding locations,
	# and the list of predictions from our face mask 
    faces = []
    locs = []
    preds = []
    # loop over the detections
    for i in range(0, detections.shape[2]):
        # extract the confidence
        confidence = detections[0, 0, i, 2]
        # filter out weak detections
        if confidence > lowConfidence:
            # compute the (x, y)-coordinates of the bounding box 
            box = detections[0, 0, i, 3:7] * np.array([w, h, w, h])
            (startX, startY, endX, endY) = box.astype("int")
            # ensure the bb fall within the dimensions of
			# the frame
            (startX, startY) = (max(0, startX), max(0, startY))
            (endX, endY) = (min(w - 1, endX), min(h - 1, endY))
            # extract face ROI, convert it from BGR to RGB 
			# , resize it to 224x224
            face = frame[startY:endY, startX:endX]
            face = cv2.cvtColor(face, cv2.COLOR_BGR2RGB)
            face = cv2.resize(face, (224, 224))
            face = img_to_array(face)
            face = preprocess_input(face)
            
            faces.append(face)
            locs.append((startX, startY, endX, endY))
    #  predict if at least one face  detected        
    if len(faces) > 0:
        #  make batch predictions on all
		# faces  rather than one-by-one predictions
       faces = np.array(faces, dtype="float32")
       preds = maskNet.predict(faces, batch_size=32)        
    return (locs, preds)
# load face detector model from disk
prototxtPath = r"face_detector\deploy.prototxt"
weightsPath = r"face_detector\res10_300x300_ssd_iter_140000.caffemodel"
faceNet = cv2.dnn.readNet(prototxtPath, weightsPath)
maskNet = load_model("mask_detector.model")
#  video 
print(" starting video stream...")
vs = VideoStream(src=0).start()
# loop over the frames from the video
while True:
    # grab the frame from  video  and resize it

    frame = vs.read()
    frame = imutils.resize(frame, width=900)
    # detect faces  and determine if  wearing a mask or not
    (locs, preds) = detectAndPredictMask(frame, faceNet, maskNet)
    for (box, pred) in zip(locs, preds):
        # unpack the bounding box and predictions
        (startX, startY, endX, endY) = box
        (mask, withoutMask) = pred
        # determine label and color we wil use to draw
		# the bounding box and text
        label = "Mask" if mask > withoutMask else "No Mask"
        color = (162,228,184) if label == "Mask" else (0, 0, 255)
        if label =="Mask":
            print("ACCESS GRANTED")
            #For arduino connection
            arduino.write(b'H')
           
        else:
            print("No Mask!")
            #For arduino connection
            arduino.write(b'L')
        #  probability  label    
        label = "{}: {:.2f}%".format(label, max(mask, withoutMask) * 100)
        # display the label and bounding box rectangle
        cv2.putText(frame, label, (startX, startY - 10),cv2.FONT_HERSHEY_SIMPLEX, 0.45, color, 2)
        cv2.rectangle(frame, (startX, startY), (endX, endY), color, 2)
    cv2.imshow("welcome", frame)  
    key = cv2.waitKey(1) & 0xFF
    if key == ord("e"):
        break
    # do a bit of cleanup
cv2.destroyAllWindows()
vs.stop()