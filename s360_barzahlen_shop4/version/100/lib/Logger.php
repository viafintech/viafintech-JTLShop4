<?php declare(strict_types = 1);

namespace Plugin\s360_barzahlen_shop4\lib;

use Jtllog;


class Logger {

    const LOG_PREFIX = 'Barzahlen: ';

    public static function debug($message) {
        Jtllog::writeLog(self::LOG_PREFIX . $message, JTLLOG_LEVEL_DEBUG);
    }

    public static function notice($message) {
        Jtllog::writeLog(self::LOG_PREFIX . $message, JTLLOG_LEVEL_NOTICE);
    }

    public static function error($message) {
        Jtllog::writeLog(self::LOG_PREFIX . $message, JTLLOG_LEVEL_ERROR);
    }
    
    public static function api_message($action="", $request="", $response="") {
            $msg = "Action:" .$action. " Request:" .$request. " Response:" .$response;
            self::debug($msg);
    }
    
}