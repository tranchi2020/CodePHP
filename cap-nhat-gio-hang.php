<?php
require_once __DIR__ . "/autoload/autoload.php";

$key = intval(getInput("key"));
$qty = intval(getInput("qty"));

$product3 = $db->fetchID("product", $key);

if ($qty > $product3['number']) {
    $_SESSION['err'][$key] = 1;
    echo 0;
} elseif ($qty > 0) {
    $_SESSION['cart'][$key]['qty'] = $qty;
    echo 1;
} else {
    $_SESSION['am'] = 1;
    echo 2;
}
