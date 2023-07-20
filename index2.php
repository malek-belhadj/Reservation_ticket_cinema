<?php
session_start();
require_once 'includes/dbh.inc.php';
$sql = 'SELECT * from movielundi;';
$sql1 = 'SELECT * from moviemardi;';
$sql2 = 'SELECT * from moviemercredi;';
$sql3 = 'SELECT * from moviejeudi;';
$sql4 = 'SELECT * from movievendredi;';
$sql5 = 'SELECT * from moviesamedi;';
$sql6 = 'SELECT * from moviedimanche;';
$sql7 = 'SELECT * from movieprochains;';

$movies_lundi = $conn->query($sql);
$movies_mardi = $conn->query($sql1);
$movies_mercredi = $conn->query($sql2);
$movies_jeudi = $conn->query($sql3);
$movies_vendredi = $conn->query($sql4);
$movies_samedi = $conn->query($sql5);
$movies_dimanche = $conn->query($sql6);
$movies_prochains = $conn->query($sql7);

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://kit.fontawesome.com/51119822f9.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="style2.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.css">
  <title>Reservili</title>
</head>

<body>
  <!-- Navigation Bar -->
  <nav class="navigation">
    <h1 class="Title_website">Reservili</h1>
    <ul class="links">
      <li><a href="#Prog">Program</a></li>
      <li><a href="#Soon">Soon</a></li>
      <li><a href="about.php">About</a></li>
      <li><a href="#Footer">Contact</a></li>
      <?php
      if (isset($_SESSION["userUid"])) {
        echo "<li><a href='includes/logout.inc.php' class='sign_in'>Log Out</a></li>";
      } 
      else {
        echo "<div class='Se_connecter'>";
        echo "<i class='fa-regular fa-user fa-lg' style='color: #ffffff;'></i>";
        echo "<a href='login.php' class='sign_in'>Login</a></div>";
      }
      ?>
    </ul>
  </nav>
  <!-- Header -->
  <header>
    <!-- Slideshow container -->
    <div class="slideshow-container">
      <!-- Full-width images with number and caption text -->
      <div class="mySlides fade">
        <img src="img/mario-bros.avif" style="width: 100%" />
        <img src="img/logo.avif" alt="" class="logo" />
      </div>

      <div class="mySlides fade">
        <img src="img/donjons.avif" style="width: 100%" />
        <img src="img/logo (1).avif" alt="" class="logo" />
      </div>
      <div class="mySlides fade">
        <img src="img/slide4.avif" style="width: 100%" />
        <img src="img/logo3.avif" alt="" class="logo" />
      </div>
      <!-- Next and previous buttons -->
      <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
      <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br/>

    <!-- The dots/circles -->
    <div style="text-align: center">
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span>
    </div>
    <a class="fancy" href="" id="link">
      <span class="top-key"></span>
      <span class="text">Réserver maintenant</span>
      <span class="bottom-key-1"></span>
      <span class="bottom-key-2"></span>
    </a>
  </header>

  <!--Movies to watch  -->
  <h2 id="Prog">Program of the week</h2>
  <section>
  <div class="lundi">
    <div class="week">
        <div class="day one">
            <p>  Mon<br>24  <br>avril</p>
        </div>
        <div class="day ">
            <p> Tue <br>25 <br> avril</p>
        </div>
        <div class="day">
            <p> Wed<br>26 <br>avril</p>
        </div>
        <div class="day">
            <p>Thu <br>27<br> avril</p>
        </div>
        <div class="day">
            <p>Fri<br>28<br> avril</p>
        </div>
        <div class="day">
            <p>Sat<br>29<br> avril</p>
        </div>
        <div class="day">
            <p> Sun<br>30<br> avril</p>
        </div>
    </div>
   </div>    
   <i class="bi bi-chevron-left"></i>
    <i class="bi bi-chevron-right"></i>
    <div class="cards">
      <?php
      while ($row = mysqli_fetch_assoc($movies_lundi)) {
        ?>
        <a href="movie.php?param=<?php echo $row["movieTitle"] ?>" class="card">
          <img src="<?php echo $row["moviePoster1"] ?>" alt="" class="poster">
          <div class="rest_card">
            <img src="<?php echo $row["moviePoster2"] ?>" alt="">
            <div class="cont">
              <h4>
                <?php echo $row["movieTitle"] ?>
              </h4>
              <div class="sub">
                <h4>
                  <?php echo $row['movieGenre'] . ', ' . $row['movieYear']; ?>
                </h4>
                <h3><span>IMDB</span><i class="bi bi-star-fill">
                    <?php echo $row["movieImdbRating"] ?>
                  </i></h3>
              </div>
            </div>
          </div>
        </a>
        <?php
      }
      ?>
    </div>
  </section>
  <div class="line"></div>

  <section>
  <div class="Mardi">
    <div class="week">
        <div class="day ">
            <p>  Mon<br>24  <br>avril  </p>
        </div>
        
        <div class="day one">
            <p> Tue <br>25 <br> avril</p>
        </div>
        <div class="day">
            <p> Wed<br>26 <br>avril</p>
        </div>
        <div class="day">
            <p>Thu <br>27<br> avril</p>
        </div>
        <div class="day">
            <p>Fri<br>28<br> avril</p>
        </div>
        <div class="day">
            <p>Sat<br>29<br> avril</p>
        </div>
        <div class="day">
            <p> Sun<br>30<br> avril</p>
        </div>
    </div>
    <i class="bi bi-chevron-left"></i>
    <i class="bi bi-chevron-right"></i>
    <div class="cards">
      <?php
      while ($row = mysqli_fetch_assoc($movies_mardi)) {
        ?>
        <a href="movie.php?param=<?php echo $row["movieTitle"] ?>" class="card">
          <img src="<?php echo $row["moviePoster1"] ?>" alt="" class="poster">
          <div class="rest_card">
            <img src="<?php echo $row["moviePoster2"] ?>" alt="">
            <div class="cont">
              <h4>
                <?php echo $row["movieTitle"] ?>
              </h4>
              <div class="sub">
                <h4>
                  <?php echo $row['movieGenre'] . ', ' . $row['movieYear']; ?>
                </h4>
                <h3><span>IMDB</span><i class="bi bi-star-fill"></i>
                  <?php echo $row["movieImdbRating"] ?>
                </h3>
              </div>
            </div>
          </div>
        </a>
        <?php
      }
      ?>
    </div>
  </section>
  <div class="line"></div>
  <section>
  <div class="mercredi">
        <div class="week">
            <div class="day ">
                <p>  Mon<br>24  <br>avril  </p>
            </div>         
            <div class="day ">
                <p> Tue <br>25 <br> avril</p>
            </div>
            <div class="day one">
                <p> Wed<br>26 <br>avril</p>
            </div>
            <div class="day">
                <p>Thu <br>27<br> avril</p>
            </div>
            <div class="day">
                <p>Fri<br>28<br> avril</p>
            </div>
            <div class="day">
                <p>Sat<br>29<br> avril</p>
            </div>
            <div class="day">
                <p> Sun<br>30<br> avril</p>
            </div>
        </div>
    <i class="bi bi-chevron-left"></i>
    <i class="bi bi-chevron-right"></i>
    <div class="cards">
      <?php
      while ($row = mysqli_fetch_assoc($movies_mercredi)) {
        ?>
        <a href="movie.php?param=<?php echo $row["movieTitle"] ?>" class="card">
          <img src="<?php echo $row["moviePoster1"] ?>" alt="" class="poster">
          <div class="rest_card">
            <img src="<?php echo $row["moviePoster2"] ?>" alt="">
            <div class="cont">
              <h4>
                <?php echo $row["movieTitle"] ?>
              </h4>
              <div class="sub">
                <h4>
                  <?php echo $row['movieGenre'] . ', ' . $row['movieYear']; ?>
                </h4>
                <h3><span>IMDB</span><i class="bi bi-star-fill"></i>
                  <?php echo $row["movieImdbRating"] ?>
                </h3>
              </div>
            </div>
          </div>
        </a>
        <?php
      }
      ?>
    </div>
  </section>
  <div class="line"></div>
  <section>
  <div class="jeudi">
            <div class="week">
                <div class="day ">
                    <p>  Mon<br>24  <br>avril  </p>
                </div>           
                <div class="day ">
                    <p> Tue <br>25 <br> avril</p>
                </div>
                <div class="day ">
                    <p> Wed<br>26 <br>avril</p>
                </div>
                <div class="day one">
                    <p>Thu <br>27<br> avril</p>
                </div>
                <div class="day">
                    <p>Fri<br>28<br> avril</p>
                </div>
                <div class="day">
                    <p>Sat<br>29<br> avril</p>
                </div>
                <div class="day">
                    <p> Sun<br>30<br> avril</p>
                </div>
            </div>
        </div>
    <i class="bi bi-chevron-left"></i>
    <i class="bi bi-chevron-right"></i>
    <div class="cards">
      <?php
      while ($row = mysqli_fetch_assoc($movies_jeudi)) {
        ?>
        <a href="movie.php?param=<?php echo $row["movieTitle"] ?>" class="card">
          <img src="<?php echo $row["moviePoster1"] ?>" alt="" class="poster">
          <div class="rest_card">
            <img src="<?php echo $row["moviePoster2"] ?>" alt="">
            <div class="cont">
              <h4>
                <?php echo $row["movieTitle"] ?>
              </h4>
              <div class="sub">
                <h4>
                  <?php echo $row['movieGenre'] . ', ' . $row['movieYear']; ?>
                </h4>
                <h3><span>IMDB</span><i class="bi bi-star-fill"></i>
                  <?php echo $row["movieImdbRating"] ?>
                </h3>
              </div>
            </div>
          </div>
        </a>
        <?php
      }
      ?>
    </div>
  </section>
  <div class="line"></div>

  <section>
  <div class="vendredi">
            <div class="week">
                <div class="day ">
                    <p>  Mon<br>24  <br>avril  </p>
                </div>
                
                <div class="day ">
                    <p> Tue <br>25 <br> avril</p>
                </div>
                <div class="day ">
                    <p> Wed<br>26 <br>avril</p>
                </div>
                <div class="day">
                    <p>Thu <br>27<br> avril</p>
                </div>
                <div class="day one">
                    <p>Fri<br>28<br> avril</p>
                </div>
                <div class="day">
                    <p>Sat<br>29<br> avril</p>
                </div>
                <div class="day">
                    <p> Sun<br>30<br> avril</p>
                </div>
            </div>
        </div>
    <i class="bi bi-chevron-left"></i>
    <i class="bi bi-chevron-right"></i>
    <div class="cards">
      <?php
      while ($row = mysqli_fetch_assoc($movies_vendredi)) {
        ?>
        <a href="movie.php?param=<?php echo $row["movieTitle"] ?>" class="card">
          <img src="<?php echo $row["moviePoster1"] ?>" alt="" class="poster">
          <div class="rest_card">
            <img src="<?php echo $row["moviePoster2"] ?>" alt="">
            <div class="cont">
              <h4>
                <?php echo $row["movieTitle"] ?>
              </h4>
              <div class="sub">
                <h4>
                  <?php echo $row['movieGenre'] . ', ' . $row['movieYear']; ?>
                </h4>
                <h3><span>IMDB</span><i class="bi bi-star-fill"></i>
                  <?php echo $row["movieImdbRating"] ?>
                </h3>
              </div>
            </div>
          </div>
        </a>
        <?php
      }
      ?>
    </div>
  </section>
  <div class="line"></div>
  <section>
  <div class="samedi">
            <div class="week">
                <div class="day ">
                    <p>  Mon<br>24  <br>avril  </p>
                </div>
                
                <div class="day ">
                    <p> Tue <br>25 <br> avril</p>
                </div>
                <div class="day ">
                    <p> Wed<br>26 <br>avril</p>
                </div>
                <div class="day">
                    <p>Thu <br>27<br> avril</p>
                </div>
                <div class="day">
                    <p>Fri<br>28<br> avril</p>
                </div>
                <div class="day one">
                    <p>Sat<br>29<br> avril</p>
                </div>
                <div class="day">
                    <p> Sun<br>30<br> avril</p>
                </div>
            </div>
        </div>
    </div>
    <i class="bi bi-chevron-left"></i>
    <i class="bi bi-chevron-right"></i>
    <div class="cards">
      <?php
      while ($row = mysqli_fetch_assoc($movies_samedi)) {
        ?>
        <a href="movie.php?param=<?php echo $row["movieTitle"] ?>" class="card">
          <img src="<?php echo $row["moviePoster1"] ?>" alt="" class="poster">
          <div class="rest_card">
            <img src="<?php echo $row["moviePoster2"] ?>" alt="">
            <div class="cont">
              <h4>
                <?php echo $row["movieTitle"] ?>
              </h4>
              <div class="sub">
                <h4>
                  <?php echo $row['movieGenre'] . ', ' . $row['movieYear']; ?>
                </h4>
                <h3><span>IMDB</span><i class="bi bi-star-fill"></i>
                  <?php echo $row["movieImdbRating"] ?>
                </h3>
              </div>
            </div>
          </div>
        </a>
        <?php
      }
      ?>
    </div>
  </section>
  <div class="line"></div>
  <section>
  <div class="dimanche">
        <div class="week">
            <div class="day ">
                <p>  Mon<br>24  <br>avril  </p>
            </div>
            
            <div class="day ">
                <p> Tue <br>25 <br> avril</p>
            </div>
            <div class="day ">
                <p> Wed<br>26 <br>avril</p>
            </div>
            <div class="day">
                <p>Thu <br>27<br> avril</p>
            </div>
            <div class="day">
                <p>Fri<br>28<br> avril</p>
            </div>
            <div class="day">
                <p>Sat<br>29<br> avril</p>
            </div>
            <div class="day one">
                <p> Sun<br>30<br> avril</p>
            </div>
        </div>
    </div>
   </div>
    <i class="bi bi-chevron-left"></i>
    <i class="bi bi-chevron-right"></i>
    <div class="cards">
      <?php
      while ($row = mysqli_fetch_assoc($movies_dimanche)) {
        ?>
        <a href="movie.php?param=<?php echo $row["movieTitle"] ?>" class="card">
          <img src="<?php echo $row["moviePoster1"] ?>" alt="" class="poster">
          <div class="rest_card">
            <img src="<?php echo $row["moviePoster2"] ?>" alt="">
            <div class="cont">
              <h4>
                <?php echo $row["movieTitle"] ?>
              </h4>
              <div class="sub">
                <h4>
                  <?php echo $row['movieGenre'] . ', ' . $row['movieYear']; ?>
                </h4>
                <h3><span>IMDB</span><i class="bi bi-star-fill"></i>
                  <?php echo $row["movieImdbRating"] ?>
                </h3>
              </div>
            </div>
          </div>
        </a>
        <?php
      }
      ?>
    </div>
  </section>
  <div class="line"></div>
  <h2>Soon</h2>
  <section id="Soon">
    <i class="bi bi-chevron-left"></i>
    <i class="bi bi-chevron-right"></i>
    <div class="cards">
      <?php
      while ($row = mysqli_fetch_assoc($movies_prochains)) {
        ?>
        <a href="movie.php?param=<?php echo $row["movieTitle"] ?>" class="card">
          <img src="<?php echo $row["moviePoster1"] ?>" alt="" class="poster">
          <div class="rest_card">
            <img src="<?php echo $row["moviePoster2"] ?>" alt="">
            <div class="cont">
              <h4>
                <?php echo $row["movieTitle"] ?>
              </h4>
              <div class="sub">
                <h4>
                  <?php echo $row['movieGenre'] . ', ' . $row['movieYear']; ?>
                </h4>
              </div>
            </div>
          </div>
        </a>
        <?php
      }
      ?>
    </div>
  </section>
  <div class="line"></div>
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
  <script src="functions.js"></script>
  <script src="alert.js"></script>
</body>

</html>