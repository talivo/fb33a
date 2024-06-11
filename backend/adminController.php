<?php

$action = $_POST['action'];
if($action == "create")
{
    //Haal variabelen op, doe inputvalidatie
    $titel = $_POST['titel'];
    if(empty($titel))
    {
        die("Vul een titel in");
    }

    $beschrijving = $_POST['beschrijving'];
    if(empty($beschrijving))
    {
        die("Vul de beschrijving in");
    }

    require_once 'conn.php';
    $query = "INSERT INTO boeken (titel, beschrijving) VALUES(:titel, :beschrijving)";
    $statement = $conn->prepare($query);
    $statement->execute([
        ":titel" => $titel,
        ":beschrijving" => $beschrijving,
    ]);

    header("Location: ../admin/index.php?msg=Opgeslagen");
}

if($action == "edit")
{
    //Haal variabelen op, doe inputvalidatie
    $titel = $_POST['titel'];
    if(empty($titel))
    {
        die("Vul een titel in");
    }

    $beschrijving = $_POST['beschrijving'];
    if(empty($beschrijving))
    {
        die("Vul de beschrijving in");
    }

    $taal = $_POST['taal'];

    $schrijver = $_POST['schrijver'];
    
    if (isset($_POST['nieuw'])) {
        $nieuw = true;
    } else {
        $nieuw = false;
    }

    if(isset($errors)) {
        var_dump($errors);
        die();
    }

    require_once 'conn.php';
    $query = "UPDATE boeken SET titel = :titel, beschrijving = :beschrijving, nieuw = :nieuw, schrijver = :schrijver, taal = :taal WHERE id = :id";
    $statement = $conn->prepare($query);
    $statement->execute([
        ":titel" => $titel,
        ":beschrijving" => $beschrijving,
        ':nieuw' => $nieuw,
        ":schrijver" => $schrijver,
        ":taal" => $taal,
        ":id" => $_POST['id']
    ]);

    header("Location: ../admin/index.php?msg=Aangepast");
}

if($action == "delete")
{
    require_once 'conn.php';
    $query = "DELETE FROM boeken WHERE id = :id";
    $statement = $conn->prepare($query);
    $statement->execute([
        ":id" => $_POST['id']
    ]);
    header("Location: ../admin/index.php?msg=Verwijderd");
}

$user['name'];
print_r($user); //Debuggen

$_POST['prio'];
$_SESSION['user_id'];