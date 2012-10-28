<?php

$mysqli = new mysqli('localhost', 'root', 'root', 'bkp_redirector');
if (mysqli_connect_errno($mysqli)) {
	header("Location: http://www.bobknowsphones.com");
}

$result = $mysqli->query('SELECT id, uri FROM redirect ORDER BY RAND() LIMIT 0, 1;');
$row = $result->fetch_assoc();

$mysqli->query("UPDATE redirect SET count = count + 1 WHERE id = {$row['id']}");

header("Location: {$row['uri']}");
