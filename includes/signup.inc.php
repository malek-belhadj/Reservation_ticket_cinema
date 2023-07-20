<?php
if (isset($_POST["submit"])){
    $uid=$_POST["uid"];
    $email=$_POST["email"];
    $pswd=$_POST["pswd"];
    require_once 'dbh.inc.php';
    require_once 'functions.inc.php';
    if (uidExists($conn,$uid,$email)!==false){
        header("location: ../login.php?error=usernametaken");
        exit();
    }
    createUser($conn,$uid,$email,$pswd);
}
else{
    header("location: ../login.php");
    exit();
}
?>