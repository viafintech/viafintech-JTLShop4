<?php

spl_autoload_register(
        
    function ($class) {
        $baseDir = __DIR__ .'/' ;
        $baseNS = 'Plugin\\s360_barzahlen_shop4\\';
        // Remove baseNS from the path to look into, also remove leading backslashes in the class name
        $path = $baseDir . str_replace($baseNS, '', ltrim($class, '\\')) . '.php';
        // Convert remaining class name with namespace to path in the file system
        $path = str_replace('\\', '/', $path);
        // Include file if it exists
        if (file_exists($path)) {
            require_once $path;
        }
    }

);

require_once __DIR__ . '/paymentmethod/Barzahlen.php';