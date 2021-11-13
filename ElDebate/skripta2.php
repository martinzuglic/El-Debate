<?php

    $kategorija=$_POST['kategorija'];
    $naslov=$_POST['naslov'];
    $autor=$_POST['autor'];
    $datum=$_POST['datum'];
    $slika=$_FILES['slika']['name'];
    $opis=$_POST['opis'];

    if (isset($_POST['arhiva'])) {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $basename = "pwaprojekt";
        $dbc = mysqli_connect($servername, $username, $password, $basename);

        $target_dir = 'slike/'.$slika;
        move_uploaded_file($_FILES["slika"]["tmp_name"], $target_dir);

        $query = "INSERT INTO clanak (kategorija, naslov, autor, datum, slika, opis)
        VALUES ('$kategorija', '$naslov', '$autor', '$datum', '$slika', '$opis')";

        $result = mysqli_query($dbc, $query) or die('Error querying databese.');
        mysqli_close($dbc);
    }
?>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css" />
    
</head>

<body>
    <header>
        <title>skripta</title>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <a href="index2.php"><img src="slike/news.png" /></a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <nav>
                        <ul>
                            <h4>
                                <a href="index2.php">
                                    <li>HOME</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="svijet2.php">
                                    <li>SVIJET</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="sport2.php">
                                    <li>SPORT</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="unos2.html">
                                    <li>UNOS</li>
                                </a>
                            </h4>
                             <h4>
                                <a href="administracija.html">
                                    <li>ADMINISTRACIJA</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="logout.php">
                                    <li>ODJAVA</li>
                                </a>
                            </h4>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="row">
            <div class="col-12 mx-auto">
                <section role="main">
                    <div>
                        <h3>
                            <?php
                                echo $naslov;
                            ?>
                        </h3>
                    </div>
                    <div>
                        <h5>
                            <?php
                                echo $kategorija;
                            ?>
                        </h5>
                    </div>
                    <div>
                        <h5>
                            <?php
                                echo "Autor: $autor";
                            ?>
                        </h5>
                    </div>
                    <section class="datum">
                        <?php
                            echo "Datum: $datum";
                        ?>
                    </section>
                    <section class="slika">
                        <?php
                            echo "<img src ='slike/$slika'";
                        ?>
                    </section>
                    <section class="opis">
                        <?php
                            echo $opis;
                        ?>
                    </section>
                </section>
            </div>
        </div>
        <div class="mb-5"></div>
    </div>

    <footer >
        <div>
            <p>Martin Žuglić</p>
            <p>mzuglic@tvz.hr</p>
            <p>2020</p>
        </div>
    </footer>


</body>

</html>