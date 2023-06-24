
    <div id="toggle">
                <div id="fade-in"></div>
                <img src="img/Tablet login-amico.png" alt="img signin" id="bgimgg">    
                <img src="img/Sign up-amico.png" alt="img signup" id="bgimg">


                <form action="add" method="POST">

                @csrf
                    <div id="container1">        
                        <h1>SIGN UP</h1>
                        <br>
                        <img src="./img/icons8-customer-26.png" alt="user icon" class="icon1">
                        <input type="email" placeholder="ENTER YOUR EMAIL" id="email1"  name=email class="inputstyle" required>
                        <br>
                        <img src="./img/icons8-lock-60.png" alt="lock icon">
                        <input type="password" placeholder="ENTER PASSWORD" id="password1" name=password class="inputstyle" required>

                        <button id="signup" class="defualtbutt" onclick="signup()">SIGN UP</button> 
                        <a id="toggle" href="#"  onclick="fade()">Already Have An Account? Sign in</a>

                        <div>
                        <a class="logout" href="#"  onclick="logout()">Log Out</a>
                        </div>
                    </div>
                  
                </form>
                    </div>
                </form>
                
    </div>
    <script src="js.js"></script>
    
</body>
</html>