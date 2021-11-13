<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $basename = "pwaprojekt";

    $dbc = mysqli_connect($servername, $username, $password, $basename);

    $kategorija=$_POST['kategorija'];
    $naslov=$_POST['naslov'];
    $autor=$_POST['autor'];
    $datum=$_POST['datum'];
    $slika=$_FILES['slika']['name'];
    $opis=$_POST['opis'];

    $target_dir = 'slike/'.$slika;
    move_uploaded_file($_FILES["slika"]["tmp_name"], $target_dir);

    if (isset($_POST['delete'])) {
        $query = "DELETE FROM clanak WHERE (kategorija='$kategorija' AND naslov='$naslov' AND autor='$autor' AND datum='$datum')";
        $result = mysqli_query($dbc, $query);
        header("Location: administracija.html"); 
        exit();
    } else if (isset($_POST['update'])) {
        $query = "UPDATE clanak SET naslov='$naslov', autor='$autor', datum='$datum', slika='$slika', opis='$opis'   
        WHERE (naslov='$naslov' AND autor='$autor' AND datum='$datum')";
        $result = mysqli_query($dbc, $query);
        header("Location: administracija.html"); 
        exit();
    }
?>

