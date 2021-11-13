<?php
    session_start();
    unset($_SESSION);
    session_destroy();
    session_write_close();
    header("refresh:1; url=index.php");
    echo "<br>Uspješno ste odjavljeni."; 
    die;
?>