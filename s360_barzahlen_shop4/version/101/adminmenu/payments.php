<?php
require_once __DIR__ . '/../autoload.php';

use Plugin\s360_barzahlen_shop4\lib\Admin;


$admin = new Admin();
$admin->handle();