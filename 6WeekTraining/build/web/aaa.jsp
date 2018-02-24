
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
  <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://raw.githubusercontent.com/daneden/animate.css/master/animate.css'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <div class="container">
    <div class="bg-img"></div>
    <div class="header">
        
            
    </div>
    <div class="main">
        <div class="login">
            <form name="form1" method="post" action="checkloginadmin.jsp"> 
                <input id="username" name="t1" required="required" type="text" placeholder="Username" />
                <input id="password" name="t2" required="required" type="password" placeholder="Password" />
                <button type="submit" value="Login" />Login</button>
                <span class="form-toggle">Not Registered Yet?</span>
            </form>
        </div>
        <div class="register">
            <form name="form1" method="post" action="checksignup.jsp"> 
                <input id="firstname" name="firstname" required="required" type="text" placeholder="First name" />
                <input id="lastname" name="lastname" required="required" type="text" placeholder="Last name" />
                <input id="email" name="email" required="required" type="enail" placeholder="Email" />
                <input id="username" name="username" required="required" type="text" placeholder="Username" />
                <input id="password" name="password" required="required" type="password" placeholder="Password" />
                <button type="submit" value="Login" />Register</button>
                <span class="form-toggle">Return to Login</span>
            </form>
        </div>
    </div>
    <div class="footer">
        <ul class="footer-nav">
            <li class="link">FAQ</li>
            <li class="link">About Us</li>
            <li class="link">Contact Us</li>
            <li class="link">Privacy Policy</li>
        </ul>
      <p class="disclaimer"><b>Disclaimer</b> Every effort is made to keep the website up and running smoothly. However, we takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control.</p>
    </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
