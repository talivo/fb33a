<!doctype html>
<html lang="nl">

<head>
    <title>StoringApp</title>
    <?php require_once 'head.php'; ?>
</head>

<body>

    <?php require_once 'header.php'; ?>
    
    <div class="container home">
        
        <?php if(isset($_GET['msg']))
        {
            echo "<div class='msg'>" . $_GET['msg'] . "</div>";
        } ?>

        <h2>Registreer je voor het adminsysteem</h2>
        
        <form action="backend/registerController.php" method="POST">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password">
            </div>
            <div class="form-group">
                <label for="password-confirm">Password check:</label>
                <input type="password" name="password-confirm">
            </div>
            <input type="submit" value="Inloggen">


        </form>


    </div>

</body>

</html>
