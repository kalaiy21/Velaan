<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Velaan</title>
  <link rel="stylesheet" href="./css/style.css">
  <link rel="shortcut icon" href="./resources/logo/velaan logo.png" type="image/x-icon">
</head>

<body>

  <section id="hero">
    <div>
      <video autoplay loop muted>
        <source src="./resources/video/video.mp4" type="video/mp4">
      </video>
      <!-- <img src="/resources/images/farm w mct 1.jpg" alt="video"> -->
    </div>
    <div class="hero-content">
      <div class="content">

        <div class="logo">
          <img src="./resources/logo/velaanlogo.png" alt="">
        </div>

        <div class="login">
          <h1>Login</h1>
          <form action="">
            <div class="form__group field">
              <input type="input" class="form__field" placeholder="Email" name="Email" id='Email' required />
              <label for="Email" class="form__label">Email</label>
            </div>
            <div class="form__group field">
              <input type="password" class="form__field" placeholder="Password" name="Password" id='Password' required />
              <label for="Password" class="form__label">Password</label>
            </div>
          </form>
        </div>
        
        <button class="login-btn">Login</button>
        <p class="footer">Or if you don’t have an account,<a href="./views/signup.jsp"> Create one.</a></p>
      </div>
    </div>
  </section>

</body>

</html>