<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Velaan signup</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../resources/logo/velaan logo.png" type="image/x-icon">
</head>

<body>
    <section id="hero">
        <div>
            <video autoplay loop muted>
                <source src="../resources/video/video.mp4" type="video/mp4">
            </video>
            <!-- <img src="/resources/images/farm w mct 1.jpg" alt="video"> -->
        </div>
        <div class="hero-content signup-herocontent">
            <div class="content signup-content">

                <div class="logo">
                    <img src="../resources/logo/velaanlogo.png" alt="">
                </div>

                <form action="<%= request.getContextPath() %>/sign" class="signup-form" method="post">
                    <div class="form__group field">
                        <input type="input" class="form__field" placeholder="Name" name="name" id='Name' required />
                        <label for="Name" class="form__label">Name</label>
                    </div>
                    
                    <div class="form__group field">
                        <input type="number" class="form__field" placeholder="Phone Number" name="number" id='phone'
                            required />
                        <label for="phone" class="form__label">Phone Number</label>
                    </div>
                    <div class="form__group field">
                        <input type="input" class="form__field" placeholder="Email" name="email" id='Email' required />
                        <label for="Email" class="form__label">Email</label>
                    </div>
                    <div class="form__group field">
                        <input type="password" class="form__field" placeholder="Password" name="password" id='Password'
                            required />
                        <label for="Password" class="form__label">Password</label>
                    </div>
                    <div class="form__group field">
                        <input type="input" class="form__field" placeholder="Location" name="location" id='Location' required />
                        <label for="Location" class="form__label">Location</label>
                    </div>
                    <select name="type" id="">
                        <option value="default" hidden >select</option>
                        <option value="Farmer">Farmer</option>
                        <option value="Consumer">Consumer</option>
                    </select>
                

                    <button class="login-btn" type="submit">Signup</button>
                </form>
                <p class="footer">Already have an account,<a href="../Index.jsp"> Login</a></p>
            </div>

        </div>
    </section>
</body>

</html>