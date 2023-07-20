<?php
session_start();
require_once 'includes/dbh.inc.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://kit.fontawesome.com/51119822f9.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@600;700&family=Urbanist:wght@100&display=swap"
    rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
  <link rel="stylesheet" href="style1.css"/>
  <title>Reservili</title>
</head>
<body>
  <!-- Navigation Bar -->
  <nav class="navigation">
    <h1 class="Title_website">Reservili</h1>
    <ul class="links">
      <li><a href="index2.php#Prog">Program</a></li>
      <li><a href="index2.php#Soon">Soon</a></li>
      <li><a href="about.php">About</a></li>
      <li><a href="index2.php#Footer">Contact</a></li>
      <?php
      if (isset($_SESSION["userUid"])) {
        echo "<li><a href='includes/logout.inc.php' class='sign_in'>Log Out</a></li>";
        echo "<script>
          Swal.fire({
            title: 'Welcome " . $_SESSION['userUid'] . " !',
            confirmButtonColor: '#e01a55',
            showClass: {
              popup: 'animate__animated animate__fadeInDown'
            },
            hideClass: {
              popup: 'animate__animated animate__fadeOutUp'
            }
          });
                </script>";
      } else {
        echo "<div class='Se_connecter'>";
        echo "<i class='fa-regular fa-user fa-lg' style='color: #ffffff;'></i>";
        echo "<a href='login.php' class='sign_in'>Login</a></div>";
      }
      if (isset($_GET["error"])) {
        if ($_GET["error"] == "logout")
          echo "<script>
          Swal.fire({
            title: 'Goodbye !', 
            confirmButtonColor: '#e01a55',
            showClass: {
              popup: 'animate__animated animate__fadeInDown'
            },
            hideClass: {
              popup: 'animate__animated animate__fadeOutUp'
            }
          });
        </script>";
      }
      ?>
    </ul>
  </nav>
  <div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">
    <div class="signup">
      <form action="includes/signup.inc.php" method="post">
        <label for="chk" aria-hidden="true">Sign up</label>
        <input type="text" name="uid" placeholder="User name" required="">
        <input type="email" name="email" placeholder="Email" required="">
        <input type="password" name="pswd" placeholder="Password" required="">
        <button type="submit" name="submit">Sign up</button>
      </form>
    </div>
    <div class="login">
      <form action="includes/login.inc.php" method="post">
        <label for="chk" aria-hidden="true">Login</label>
        <input type="text" name="uid1" placeholder="User name" required="">
        <input type="password" name="pswd1" placeholder="Password" required="">
        <button type="submit" name="submit1">Login</button>
      </form>
    </div>
    <?php
    if (isset($_GET["error1"])) {
      if ($_GET["error1"] == "wronglogin") {
        echo "<script>Swal.fire({
                          confirmButtonColor: '#e01a55',
                            icon: 'error',
                            title: 'Oops...',
                            text: 'Wrong credentials...',
                          })</script>";
      }
    }
    if (isset($_GET["error"])) {
      if ($_GET["error"] == "none") {
        echo "<script>Swal.fire({
                      confirmButtonColor: '#e01a55',
                        position: 'center',
                        icon: 'success',
                        title: 'Your account has been created',
                        showConfirmButton: false,
                        timer: 1500
                      })</script>";
      } else if ($_GET["error"] == "usernametaken") {
        echo "<script>Swal.fire({
                        title:'Username already taken.',
                        confirmButtonColor: '#e01a55'
                      })</script>";
      }
    }
    ?>
  </div>
  <footer id="Footer">
    <ul>
      <li>
        <a href=""><i class="fa-brands fa-facebook fa-lg" style="color: #e01a55"></i></a>
      </li>
      <li>
        <a href=""><i class="fa-brands fa-instagram" style="color: #e01a55"></i></a>
      </li>
      <li>
        <a href=""><i class="fa-brands fa-tiktok" style="color: #e01a55"></i></a>
      </li>
    </ul>
    <span>&emsp; &emsp; &emsp;Reservili Website ©All rights reserved®</span>
    <span>created by Malek Belhadj&Mariem Zeineb Dhouib &copy; 2023</span>
    <span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Email: resermovie@gmail.com
</span>
  </footer>
</body>
</html>