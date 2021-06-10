<?php

require_once 'database.php';

$db = new database();
$sql = "INSERT INTO medewerker VALUES (:id, :naam, :tussenvoegsel, :achternaam, :uname, :psw)";
// $placeholders = [
//     // id is auto_increment en wordt gegegeneerd.
//     'id'=> NULL,
//     'naam'=> 'Tom',
//     'tussenvoegsel'=> 'van',
//     'achternaam'=> 'Sesamstraat',
//     'uname'=> 'admin',
//     'psw'=> password_hash('admin', PASSWORD_DEFAULT)
// ];

// $db->insert($sql, $placeholders);

$placeholders = [
    // id is auto_increment en wordt gegegeneerd.
    'id'=> NULL,
    'naam'=> 'Randi',
    'tussenvoegsel'=> '',
    'achternaam'=> 'Berkelaar',
    'uname'=> 'user',
    'psw'=> password_hash('user', PASSWORD_DEFAULT)
];

$db->insert($sql, $placeholders);

?>