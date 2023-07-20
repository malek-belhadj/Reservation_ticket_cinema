<?php
session_start();
require_once 'includes/dbh.inc.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://kit.fontawesome.com/51119822f9.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <!-- Include SweetAlert library -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.css">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@600;700&family=Urbanist:wght@100&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="style.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
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
      <li><a href="#Footer">Contact</a></li>
      <?php


      if (isset($_SESSION["userUid"])) {
        echo "<li><a href='includes/logout.inc.php' class='sign_in'>Log Out</a></li>";
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
    <!--the super mario bros.movie-->
    <div class="container">
        <div class="search-container">
            <input 
            type="text" 
            placeholder="name"id="movie-name"value="<?php 
            $value='';
            if (isset($_GET['param'])){
                $value = $_GET['param'];
              }
            echo "$value"?>"  />
            <button id="search-btn">search</button>
        </div>
        <div id="result"></div>
    </div>
    <div class="containerone">
        <form action="" method="post">
         <!--timepicker-->
        <div class="containerleft">
            <div class="wrapper">
                <div class="timepickertitle">Select the appropriate time</div>
                <div class="box">
                    <input type="radio" name="select" id="option-1">
                    <input type="radio" name="select" id="option-2">
                    <input type="radio" name="select" id="option-3">
                    <input type="radio" name="select" id="option-4">
                    <label for="option-1" class="option-1">
                        <div class="dot"></div>
                        <div class="text">12H30</div>
                    </label>
                    <label for="option-2" class="option-2">
                        <div class="dot"></div>
                        <div class="text">16H00</div>
                    </label>
                    <label for="option-3" class="option-3">
                        <div class="dot"></div>
                        <div class="text">19H00</div>
                    </label>
                    <label for="option-4" class="option-4">
                        <div class="dot"></div>
                        <div class="text">22H30</div>
                    </label>
                </div>
            </div>
        </div>
        <!--container left : time picker and seating chart-->
        <div class="containerright">
            <div class="movie-container">
                <select  id="movie" name="prix">
                    <option selected class="sel" value="0">pick the movie version</option>
                    <option value="30">VO</option>
                    <option value="20">VF</option>
                    <option value="15">VOST</option>
                    <option value="10">VOSTF</option>
                </select>
            </div>
            <ul class="showcase">
                <li>
                    <div class="seat"></div>
                    <small>available</small>
                </li>
                <li>
                    <div class="seat occupied"></div>
                    <small>occupied</small>
                </li>
                <li>
                    <div class="seat selected"></div>
                    <small>Selected</small>
                </li>
            </ul>
            <div class="containercinema">
                <div class="screen"></div>
                <div class="row">
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat occupied"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                </div>
                <div class="row">
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat occupied"></div>
                    <div class="seat occupied"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                </div>
                <div class="row">
                    <div class="seat occupied"></div>
                    <div class="seat occupied"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                </div>
                <div class="row">
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat occupied"></div>
                    <div class="seat occupied"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                </div>
                <div class="row">
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                </div>
                <div class="row">
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat "></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                    <div class="seat"></div>
                </div>
            </div>
            <p class="text">
                vous avez selectionné <span id="count">0</span> chaise(s) pour un prix de dt<span id="total">0</span>
            </p>
            
        </div>
        <div class="checkout">
            <button type="submit2" name="submit2" class="btn-checkout">checkout </button> 
<?php
 if (isset($_POST['submit2'])){
  // Get the selected values
  if (isset($_POST['select'])){echo "<script>
    Swal.fire({
      title: 'Ticket(s) reserved!',
      confirmButtonColor: '#e01a55',
      showClass: {
        popup: 'animate__animated animate__fadeInDown'
      },
      hideClass: {
        popup: 'animate__animated animate__fadeOutUp'
      }
    });
      </script>";}
else{
  echo "<script>Swal.fire({
    confirmButtonColor: '#e01a55',
      icon: 'error',
      title: 'Oops...',
      text: 'Please pick a time and a seat...',
    })</script>";
}
 }
?>
        </div>
    </form>
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
        <span> Reservili Website ©All rights reserved®</span>
        <span>created by Malek Belhadj&Mariem Zeineb Dhouib &copy; 2023</span>
        <span>Email: resermovie@gmail.com</span>
    </footer>
    <script src="script.js"></script>
    <script src="key.js"></script>
 </body>
 </html>
