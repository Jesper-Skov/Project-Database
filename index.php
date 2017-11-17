<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Project Database</title>
</head>

<body>
<?php
    
$host = 'localhost';

$dbName = 'superdating';

$username = 'root';

$password = '';


$dbCon = new PDO("mysql:host=".$host.";dbname=".$dbName, $username, $password);

$sql = 'SELECT * FROM users';

$stmt = $dbCon->prepare($sql);

$stmt->execute();

while ($row = $stmt->fetch()) 

{

    echo  $row[0] . " | " . $row[1] . " | " . $row[2] . " | " . $row[3] . " | " . $row[4] . " | " . $row[5] . " | " . $row[6] . "<br/>";

}
    
?>
</body>
</html>