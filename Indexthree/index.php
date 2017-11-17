<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Project Database</title>
</head>

<body>
<!--I just want to say that I have not made this, all I have done is to modify it, so it could be used in my own use. This is where I got the codes from: http://www.afterhoursprogramming.com/tutorial/PHP/PDO/-->
<?php
    
$host = 'localhost';

$dbName = 'superdating';

$username = 'root';

$password = '';


$dbCon = new PDO("mysql:host=".$host.";dbname=".$dbName, $username, $password);

$sql = 'SELECT * FROM gifts';

$stmt = $dbCon->prepare($sql);

$stmt->execute();

while ($row = $stmt->fetch()) 

{

    echo  $row[0] . " | " . $row[1] . "<br/>";

}
    
?>
</body>
</html>