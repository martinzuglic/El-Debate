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
        <title>Prijava</title>
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
                                    <li>HOME</li>
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
        <div class="row">
            <div class="col-lg-12" id="login">
                <form method="post">
                    <label for="ime">Korisničko ime</label>
                    <br />
                    <input name="ime" type="text" required/>
                    <br />
                    <label for="lozinka">Lozinka</label>
                    <br />
                    <input name="lozinka" type="password" required/>
                    <br /><br />
                    <input name="prijava" type="submit" value="prijava" /> 
                </form>
            </div>
            <?php
                if (isset($_POST['prijava'])) {
                    $servername = "localhost";
                    $username = "root";
                    $password = "";
                    $basename = "pwaprojekt";
                
                    $dbc = mysqli_connect($servername, $username, $password, $basename);
                
                    $ime = $_POST['ime'];
                    $lozinka = $_POST['lozinka'];
                
                    $sql = "SELECT ime, lozinka, razina FROM korisnici WHERE ime = ?";
                    $stmt = mysqli_stmt_init($dbc);
                    if (mysqli_stmt_prepare($stmt, $sql)) {
                        mysqli_stmt_bind_param($stmt, 's', $ime);
                        mysqli_stmt_execute($stmt);
                        mysqli_stmt_store_result($stmt);
                    }
                    mysqli_stmt_bind_result($stmt, $imeKorisnika, $lozinkaKorisnika, $levelKorisnika);
                    mysqli_stmt_fetch($stmt);

                    if (password_verify($_POST['lozinka'], $lozinkaKorisnika) && mysqli_stmt_num_rows($stmt) > 0) {
                        $uspjesnaPrijava = true;    
                        if($levelKorisnika == 1) {
                            $admin = true;
                            header("refresh:1.5; url=index2.php"); 
                            echo "<br><br>Dobro došli $ime. Vaša razina je administrator.";
                            exit();
                        }else {
                            $admin = false;
                            header("refresh:2; url=login.php"); 
                            echo "<br><br>Dobro došli $ime. Nažalost nemate pravo pristupa administraciji.";
                            exit();
                        }
                    } else {
                        echo "Korisnik ne postoji";
                        $uspjesnaPrijava = false;
                    }
                    mysqli_close($dbc);
                }
            ?>
        </div>
    </div>

    <footer class="fixed-bottom">
        <div>
            <p>Martin Žuglić</p>
            <p>mzuglic@tvz.hr</p>
            <p>2020</p>
        </div>
    </footer>


</body>

</html>










