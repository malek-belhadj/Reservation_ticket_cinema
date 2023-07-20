<?php
if (isset($_POST["submit1"])){
    $uid=$_POST["uid1"];
    $pswd=$_POST["pswd1"];
    require_once 'dbh.inc.php';
    require_once 'functions.inc.php';
    loginUser($conn,$uid,$pswd);
}
else{
    header("location: ../login.php");
    exit();
}
?>