var getfirstloc = localStorage.getItem("fristloc");
var getlastloc = localStorage.getItem("lastloc");
var getfristdate = localStorage.getItem("fristdate");
var getlastdate = localStorage.getItem("lastdate");


document.getElementById('passfrolocation').innerText=getfirstloc;
document.getElementById('passfromlocation').innerText=getfirstloc; //pass right 

document.getElementById('passtolocation').innerText =getlastloc;
document.getElementById('passtlocation').innerText =getlastloc; //pass right 

document.getElementById('passdateone').innerText=getfristdate;
document.getElementById('passdteone').innerText =getfristdate; //pass right 





    //** Seat Checked **//

    const bt = document.querySelector('#passticvalue');         
        bt.addEventListener('click', function() {      // When click on button Get Ticket
            let checkboxes = document.querySelectorAll('input[type="checkbox"]:checked');
            let output = [];
            checkboxes.forEach((checkbox) => {        // Check on seat
                output.push(checkbox.value);          // Save seat value (the number of seat) at => output
                //seatnumm();
            });
            if(!output.length)         // if output is empty (none of seats are checked)
            {
                alert('You Must Choose A Seat!');               // Display message and stay at the same
                document.getElementById('samepge').href='#';   //  page until one of the seats is checked
            }
            else
            {
                alert('Your Seat Number : ' + output[0]);  // Else (seat is checked) display message of seat 
                                                       //  number and go to next page
                localStorage.setItem("seatnum", output[0]);   // Store seat number to localstorage for view ticket page
                document.getElementById('samepge').href='../form application/index.html';
            }
        });    
        /*function seatnumm()
        {
            let seat = document.querySelector('input[type="checkbox"]');

            var seatnum = 0;
                if (seat.checked){
                     seatnum--;
                }
                else{
                     seatnum++;
                }
               // console.log(seatnum);
                var gettotal = localStorage.getItem('getprice');
                document.getElementById('passtotal').innerHTML=gettotal*seatnum;
           }*/
        
        //** Calculate Menu **//

        //Number of item of each product * Price
        document.getElementById('addtototal').addEventListener('click',function(){
            var gettotal = localStorage.getItem('getprice');
             document.getElementById('passtotal').innerText= 
             document.getElementById('inputwater').value * document.getElementById('pricewater').value 
             + document.getElementById('inputtea').value * document.getElementById('pricetea').value
             + document.getElementById('inputcoffe').value * document.getElementById('pricecoffe').value 
             + document.getElementById('inputjuice').value * document.getElementById('pricejuice').value 
             + document.getElementById('inputtoast').value * document.getElementById('pricesan2').value 
             + document.getElementById('inputcrusoe').value * document.getElementById('pricecrusoe').value 
             + document.getElementById('inputsandwich').value * document.getElementById('pricesan1').value
             + parseInt(gettotal);

             var settotal =document.getElementById('passtotal').innerHTML;
             console.log(settotal);
             localStorage.setItem("totalget", settotal); 

             var menutotal = document.getElementById('inputwater').value * document.getElementById('pricewater').value 
             + document.getElementById('inputtea').value * document.getElementById('pricetea').value
             + document.getElementById('inputcoffe').value * document.getElementById('pricecoffe').value 
             + document.getElementById('inputjuice').value * document.getElementById('pricejuice').value 
             + document.getElementById('inputtoast').value * document.getElementById('pricesan2').value 
             + document.getElementById('inputcrusoe').value * document.getElementById('pricecrusoe').value 
             + document.getElementById('inputsandwich').value * document.getElementById('pricesan1').value;
             localStorage.setItem("menuget", menutotal); 



            // Store how much items been selected at localstorage for view ticket page
            var setcoffenum =document.getElementById('inputcoffe').value;
            localStorage.setItem("coffeget", setcoffenum); 

            var setteanum =document.getElementById('inputtea').value;
            localStorage.setItem("teaget", setteanum);

            var setwaternum =document.getElementById('inputwater').value;
            localStorage.setItem("waterget", setwaternum);

            var setjuicenum =document.getElementById('inputjuice').value;
            localStorage.setItem("juiceget", setjuicenum);

            var settoastnum =document.getElementById('inputtoast').value;
            localStorage.setItem("toastget", settoastnum);

            var setcrusoenum =document.getElementById('inputcrusoe').value;
            localStorage.setItem("crusoeget", setcrusoenum);

            var setsandwichnum =document.getElementById('inputsandwich').value;
            localStorage.setItem("sandwichget", setsandwichnum);


        });
        
