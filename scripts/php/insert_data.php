<?php

$connection = new \PDO(
    'pgsql:host=localhost;port=5432;dbname=github',
    // 'pgsql:host=*;port=*;dbname=github',
    'super_admin',
    '12345'
);

$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

function addJsons(array $buffer)
{
    global $connection;

    $values = implode('), (', array_fill(0, count($buffer), '?'));

    $sql = "INSERT INTO event_raw(json_data) VALUES (".$values.")";

    $statement = $connection->prepare($sql);
    $statement->execute($buffer);
}

$jsonFilePath = sprintf('%s/../../ressources/2018-09-19-15.json', __DIR__);

$handle = fopen($jsonFilePath, 'r');

$maxLinePerBatch = 10000;
$buffer = [];
while (false !== $line = fgets($handle)) {
    $buffer[] = $line;
    if (count($buffer) >= $maxLinePerBatch) {
        addJsons($buffer);
        $buffer = [];
    }
}

if (!empty($buffer)) {
    addJsons($buffer);
}
