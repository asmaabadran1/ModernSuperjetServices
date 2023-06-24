var getname = localStorage.getItem("sendname");
var getphone = localStorage.getItem("sendphone");
var getemail = localStorage.getItem("sendemail");
var getseatnum = localStorage.getItem("seatnum");
const getpic= localStorage.getItem("passpicc");

document.getElementById('passname').innerHTML=getname;
document.getElementById('passphone').innerHTML=getphone;
document.getElementById('passemail').innerHTML=getemail;
document.getElementById('passseat').innerHTML=getseatnum;
document.getElementById('passpic').style.backgroundImage= getpic;



var getfirstloc = localStorage.getItem("fristloc");
var getlastloc = localStorage.getItem("lastloc");
var getfristdate = localStorage.getItem("fristdate");
var getlastdate = localStorage.getItem("lastdate");


document.getElementById('passfromlocation').innerText=getfirstloc;
document.getElementById('passfromlocationn').innerText=getfirstloc;//pass down

document.getElementById('passtolocation').innerText =getlastloc;
document.getElementById('passtolocationn').innerText =getlastloc;//pass down

document.getElementById('passdateone').innerText=getfristdate;
document.getElementById('passdateonee').innerText=getfristdate; //pass down

document.getElementById('passdatetwo').innerText=getlastdate;

document.getElementById('passnamee').innerHTML=getname;

document.getElementById('passseatnum').innerHTML=getseatnum;


var getcoffenum = localStorage.getItem('coffeget');
document.getElementById('numcoffe').innerText=getcoffenum;

var getteanum = localStorage.getItem('teaget');
document.getElementById('numtea').innerText=getteanum;

var getwaternum = localStorage.getItem('waterget');
document.getElementById('numwater').innerText=getwaternum;

var getjuicenum = localStorage.getItem('juiceget');
document.getElementById('numjuice').innerText=getjuicenum;

var getsandwichnum = localStorage.getItem('sandwichget');
document.getElementById('numsandwich').innerText=getsandwichnum;

var gettoastnum = localStorage.getItem('toastget');
document.getElementById('numtoast').innerText=gettoastnum;

var getcrusoenum = localStorage.getItem('crusoeget');
document.getElementById('numcrusoe').innerText=getcrusoenum;



                var qr = document.getElementById("qr");

    

                    qr.innerHTML = "";
                    const href ='"'+getname + getemail+ getphone+'"';
                    // size of the image
                    const size = 170;

                    new QRCode(qr , {
                        text:  href,
                        width: size,
                        height: size,

                        colorDark: "#040404",
                        colorLight: "#fafafa"
                    })

                    var link = document.getElementById("download");
                    link.addEventListener("click", setUpDownload);
                    function setUpDownload() {
                        // Find the image inside the #qr div
                        var image = document.getElementById("qr").getElementsByTagName("img");
                    
                        // Get the src attribute of the image, which is the data-encoded QR code
                        var qr = image[0].src;
                    
                        // Copy that to the download link
                        link.href = qr;
                    }

    var getstarttime = localStorage.getItem("getstime");
    document.getElementById("passstime").innerText= getstarttime;

    var getlasttime = localStorage.getItem("getltime");
    document.getElementById("passltime").innerText= getlasttime;

    var getpickuptloc = localStorage.getItem("getpick");
    document.getElementById("passpick").innerText= getpickuptloc;

    var getdropoffloc = localStorage.getItem("getdrop");
    document.getElementById("passdrop").innerText= getdropoffloc;

let gettypeofbus = localStorage.getItem("getbustype");

if (gettypeofbus==" classic") {
document.getElementById("ticketbody").style.borderRight='15px solid #9AD3BC';
}
else if (gettypeofbus==" deluxe") {
document.getElementById("ticketbody").style.borderRight='15px solid #F5B461';
}
else if (gettypeofbus==" elite") {
document.getElementById("ticketbody").style.borderRight='15px solid #FBF46D';
}


