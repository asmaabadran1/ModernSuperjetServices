var btn = document.getElementById('btn')
function leftClick() {
	btn.style.left = '4px'
    document.getElementById('toggle-btn2').style.color = '#707070'
    document.getElementById('toggle-btn1').style.color = 'white'
    //select off
    document.getElementById("disable").disabled = "true";
    document.getElementById("disable").style.cursor="not-allowed";
}

function rightClick() {
	btn.style.left = '145px'
    document.getElementById('toggle-btn1').style.color = '#707070'
    document.getElementById('toggle-btn2').style.color = 'white'
    //select on
    document.getElementById("disable").disabled = "";
    document.getElementById("disable").style.cursor="pointer";
    document.getElementById("disable").min = formattedDate;

    
}

function read()
{
    document.getElementById("readbox").style.display = "block";
}


function checkForm(){
    
    /* option select
    var loc1=document.querySelector('#location1 option:checked').parentElement.label;
    var loc2=document.querySelector('#location2 option:checked').parentElement.label;*/


    var loc1=document.getElementById('location1').value;
    var loc2=document.getElementById('location2').value;

    //alert(e);
    if(loc1==loc2){
        alert("You Can't Select The Same Location");
        return false;
    }
}


function valueSender()
{
var a=document.getElementById('location1').value;
var b=document.getElementById('location2').value;
var c=document.getElementById('date1').value;
var d=document.getElementById('disable').value;


localStorage.setItem("fristloc", a);
localStorage.setItem("lastloc", b);
localStorage.setItem("fristdate", c);
localStorage.setItem("lasttdate", d);

}

var today = new Date();
  var day = ("0" + today.getDate()).slice(-2);
  var month = ("0" + (today.getMonth() + 1)).slice(-2);
  var year = today.getFullYear();
  var formattedDate = year + "-" + month + "-" + day;

  var input = document.querySelector('input[type="date"]');
  input.min = formattedDate;
/////////////////////////////////////////
