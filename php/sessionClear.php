<?php
    session_start();

    unset($_session);
    session_destroy();
    $_SESSION[]=null;
    header('location:../constructor.php');

?>