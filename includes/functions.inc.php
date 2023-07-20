<?php

function uidExists($conn,$uid,$email){
    $sql = "SELECT * FROM users WHERE usersUid = ? OR usersEmail = ?;";
    $stmt=mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt,$sql)){
        header("location: ../login.php?error=stmtfailed1");
        exit();
    }
    mysqli_stmt_bind_param($stmt,"ss",$uid,$email);
    mysqli_stmt_execute($stmt);
    $resultData=mysqli_stmt_get_result($stmt);
    
    if ($row=mysqli_fetch_assoc($resultData)){
        mysqli_stmt_close($stmt);
        return $row;
    }
    else {
        $result=false;
        mysqli_stmt_close($stmt);
        return $result;
    }
}
function createUser($conn,$uid,$email,$pswd){
    $sql="INSERT INTO USERS (usersUid,usersEmail,usersPswd) VALUES (?,?,?);";
      $stmt=mysqli_stmt_init($conn);
      if (!mysqli_stmt_prepare($stmt,$sql)){
          header("location: ../login.php?error=stmtfailed");
          exit();
      }
      $hashedPswd=password_hash($pswd,PASSWORD_DEFAULT);
    mysqli_stmt_bind_param($stmt,"sss",$uid,$email,$hashedPswd);
      mysqli_stmt_execute($stmt);
      mysqli_stmt_close($stmt); 
      header("location: ../login.php?error=none");
      exit();
  }
  function loginUser($conn,$uid,$pswd){
    $uidExists=uidExists($conn,$uid,$uid);
    if ($uidExists===false){
        header("location: ../login.php?error1=wronglogin");
        exit();
    }
    $pswdHashed=$uidExists["usersPswd"];
    $checkPswd=password_verify($pswd,$pswdHashed);
    if($checkPswd===false){
        header("location: ../login.php?error1=wronglogin");
        exit();
    }
    else if ($checkPswd===true){
        session_start();
        $_SESSION["userId"]=$uidExists["usersId"];
        $_SESSION["userUid"]=$uidExists["usersUid"];
        header("location: ../index2.php?error1=none");
        exit();
    }
  }
?>