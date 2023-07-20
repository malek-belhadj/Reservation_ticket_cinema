<?php

session_start();
require_once 'includes/dbh.inc.php';
?>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://kit.fontawesome.com/51119822f9.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="style3.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.css">
  <title>Reservili</title>
</head>

<body>
  <nav class="navigation">
    <h1 class="Title_website">Reservili</h1>
    <ul class="links">
      <li><a href="index2.php#Prog">Program</a></li>
      <li><a href="index2.php#Soon">Soon</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#Footer">Contact</a></li>
      <?php
      if (isset($_SESSION["userUid"])) {
        echo "<li><a href='includes/logout.inc.php' class='sign_in'>Log Out</a></li>";
      } else {
        echo "<div class='Se_connecter'>";
        echo "<i class='fa-regular fa-user fa-lg' style='color: #ffffff;'></i>";
        echo "<a href='login.php' class='sign_in'>Login</a></div>";
      }
      ?>
    </ul>
  </nav>
  <div class="about">
    <div class="inner-section">
      <h1>Welcome to Reservili!</h1>
      <p class="aboutustext">
        We are delighted to have youon our online platform that allows you to easily reserve tickets for your favorite
        movies.
        Reservili is designed to streamline your online booking experience.Our user-friendly platform offers a smooth
        and efficient booking process.
        <br>Our team consists of live event enthusiasts who understand the importance of a hassle-free booking
        experience. We strive to provide
        you with top-notch customer service, with online support available to answer your questions and assist you
        throughout the booking process.
        <br>By booking on our website, you benefit from the convenience of being able to reserve your tickets online
        24/7,
        from the comfort of your home or office.You can browse through our Program catalog, check the details of each
        movie, compare prices,
        and choose the seats that best suit you. <br>Thank you for
        choosing our website as your destination for entertainment. We look
        forward to seeing you soon!
      </p>
    </div>
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
    <span>Reservili Website ©All rights reserved®</span>
    <span>Created by Malek Belhadj&Mariem Zeineb Dhouib &copy; 2023</span>
    <span>Email: resermovie@gmail.com</span>
  </footer>
</body>

</html>