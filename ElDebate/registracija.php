
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
        <title>Registracija</title>
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
            <?php
                $servername = "localhost";
                $username = "root";
                $password = "";
                $basename = "pwaprojekt";

                $dbc = mysqli_connect($servername, $username, $password, $basename);

                $ime = $_POST['ime'];
                $lozinka = $_POST['lozinka'];
                $razina = $_POST['razina'];
                $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
                $registriranKorisnik = '';

                $sql = "SELECT ime FROM korisnici WHERE ime = ?";
                $stmt = mysqli_stmt_init($dbc);
                if (mysqli_stmt_prepare($stmt, $sql)) {
                    mysqli_stmt_bind_param($stmt, 's', $ime);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_store_result($stmt);
                }
                if(mysqli_stmt_num_rows($stmt) > 0){
                    echo'Korisničko ime već postoji!';
                } else {
                    $sql = "INSERT INTO korisnici (ime, lozinka, razina) VALUES (?, ?, ?)";
                    $stmt = mysqli_stmt_init($dbc);
                    if (mysqli_stmt_prepare($stmt, $sql)) {
                        mysqli_stmt_bind_param($stmt, 'ssi', $ime, $hashed_password, $razina);
                        mysqli_stmt_execute($stmt);
                        $registriranKorisnik = true;
                        header("refresh:1.5; url=login.php"); 
                        echo "<br><br>Uspješno ste registrirani!";
                        exit();
                    }
                }
                mysqli_close($dbc);
            ?>
        </div>
    </div>

    <footer class="fixed-bottom">
        <div>
            <p>©Copyright Martin Žuglić</p>
            <p>mzuglic@tvz.hr</p>
            <p>2020</p>
        </div>
    </footer>


</body>

</html>







