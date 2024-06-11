<?php
session_start();
if(isset($_SESSION['user_id'])){
    header("location: ../index.php?msg=Je hebt al een account. Je bent al ingelogd.");
    exit;
}
$email = $_POST['email'];
if(filter_var($email, FILTER_VALIDATE_EMAIL) === false){
    header("location: ../register.php?msg=Voer een geldig e-mail adres in.");
    exit;
}

$password = $_POST['password'];
$password_check = $_POST['password-confirm'];

if($password !== $password_check){
    header("location: ../register.php?msg=Wachtwoorden komen niet overeen");
    exit;
}
require_once 'conn.php';
$query = "SELECT * FROM users WHERE username = :email";
$statement = $conn->prepare($query);
$statement->execute([
    ":email" =>$email
]);
$user = $statement->fetch(PDO::FETCH_ASSOC);
if($statement->rowCount() > 0){
    header("location: ../login.php?msg=Jouw account bestaat al, log in om gebruik te maken van het systeem.");
    exit;
}
if(empty($password) or empty($password_check)){
    header("location: ../register.php?msg=Wachtwoord mag niet leeg zijn.");
    exit;
}
$hash = password_hash($password, PASSWORD_DEFAULT);

$query = "INSERT INTO users (username, password)
VALUES(:email, :hash)";
$statement = $conn->prepare($query);
$statement->execute([
    ":email" => $email,
    ":hash"  => $hash
]);

header("Location: ../login.php?msg=Uw account is aangemaakt. Log in om het systeem te gebruiken.");