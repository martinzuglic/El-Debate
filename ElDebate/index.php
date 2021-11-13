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
        <title>Početna</title>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                <a href="index.php"><img src="slike/news.png" /></a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <nav>
                        <ul>
                            <h4>
                                <a href="index.php">
                                    <li>POČETNA</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="svijet.php">
                                    <li>SVIJET</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="sport.php">
                                    <li>SPORT</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="unos.html">
                                    <li>UNOS</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="registracija.html">
                                    <li>REGISTRACIJA</li>
                                </a>
                            </h4>
                            <h4>
                                <a href="login.php">
                                    <li>PRIJAVA</li>
                                </a>
                            </h4>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>


    <div class="container">
        <div class="col-lg-12" id="services">
            <img src="slike/dots.png" /><p>SVIJET</p>
        </div>
    </div>

    <?php   
            $servername = "localhost";
            $username = "root";
            $password = "";
            $basename = "pwaprojekt";
            define('UPLPATH', 'slike/');
            $dbc = mysqli_connect($servername, $username, $password, $basename);
    
            $query = "SELECT * FROM clanak WHERE kategorija='Svijet' LIMIT 4";
            $result = mysqli_query($dbc, $query);
    
            $qslika = "SELECT slika FROM clanak WHERE kategorija='Svijet' LIMIT 4";
            $slikares = mysqli_query($dbc, $qslika);
            //$slika = mysqli_fetch_array($slikares);
            
    

            echo "<div class='container' id='mundo'>";
                echo "<div class='row'>";
            while(($row = mysqli_fetch_array($result)) && ($slika = mysqli_fetch_array($slikares)) ) {        
            $s = $slika['slika'];
                    echo"<div class='col-3'";
                        echo"<section class='slika'>";
                                echo '<img src="'.UPLPATH.$row['slika'].'"';
                        echo"</section>";
                        echo"<section>";
                                echo"<h3>";
                                    echo '<a href="clanak.php?id='.$row['id'].'">';
                                        echo $row['naslov'];
                                    echo '</a>';
                                echo"</h3>";
                        echo"</section>";
                        echo"<section>";
                            echo"<h6>";
                                echo "Autor: ";
                                echo $row['autor'];
                                echo "<br>";
                                echo $row['datum'];
                            echo"</h6>";
                        echo"</section>";
                    echo"</div>";
            $s = $slika['slika'];
            }
                echo"</div>";
            echo"</div>";   
        ?>
    <div class="container">
        <hr>
        <div class="col-lg-12" id="services">
            <img src="slike/dots.png" />
            <p>SPORT</p>
        </div>
    </div>
    
    <?php   
            $servername = "localhost";
            $username = "root";
            $password = "";
            $basename = "pwaprojekt";
            
            $dbc = mysqli_connect($servername, $username, $password, $basename);
    
            $query = "SELECT * FROM clanak WHERE kategorija='Sport' LIMIT 4";
            $result = mysqli_query($dbc, $query);
    
            $qslika = "SELECT slika FROM clanak WHERE kategorija='Sport' LIMIT 4";
            $slikares = mysqli_query($dbc, $qslika);
            //$slika = mysqli_fetch_array($slikares);
            
    

            echo "<div class='container' id='mundo'>";
                echo "<div class='row'>";
            while(($row = mysqli_fetch_array($result)) && ($slika = mysqli_fetch_array($slikares)) ) {        
            $s = $slika['slika'];
                    echo"<div class='col-3'";
                        echo"<section class='slika'>";
                                echo '<img src="'.UPLPATH.$row['slika'].'"';
                        echo"</section>";
                        echo"<section>";
                                echo"<h3>";
                                    echo '<a href="clanak.php?id='.$row['id'].'">';
                                        echo $row['naslov'];
                                    echo '</a>';
                                echo"</h3>";
                        echo"</section>";
                        echo"<section>";
                            echo"<h6>";
                                echo "Autor: ";
                                echo $row['autor'];
                                echo "<br>";
                                echo $row['datum'];
                            echo"</h6>";
                        echo"</section>";
                    echo"</div>";
            $s = $slika['slika'];
            }
                echo"</div>";
            echo"</div>";   
        ?>

    <footer >
        <div>
            <p>Martin Žuglić</p>
            <p>mzuglic@tvz.hr</p>
            <p>2020</p>
        </div>
    </footer>


</body>

</html>