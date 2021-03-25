<?php
require_once __DIR__ . '/../autoload.php';

$nSeitenTyp = Shop::Smarty()->getTemplateVars("nSeitenTyp");

if ($nSeitenTyp==PAGE_BESTELLVORGANG && !empty($_SESSION["Barzahlen"]->message)) {

    $level = [
        "success" => "success",
        "notice" => "info",
        "warning" => "warning",
        "error" => "danger"
    ];

    $_SESSION["Barzahlen"]->message->level = $level[$_SESSION["Barzahlen"]->message->type];
    Shop::Smarty()->assign("message", (array)$_SESSION["Barzahlen"]->message);
    unset($_SESSION["Barzahlen"]->message);

    $tpl_file = $oPlugin->cFrontendPfad . 'template/messages.tpl';
    $template = $smarty->fetch($tpl_file);
    pq("#fieldset-payment")->prepend($template);

}

if ($nSeitenTyp==PAGE_BESTELLABSCHLUSS && !empty($_SESSION["Barzahlen"]->checkout_token)) {
    
    Shop::Smarty()->assign("checkout_token", $_SESSION["Barzahlen"]->checkout_token);
    
    if ($_SESSION["Barzahlen"]->api->sandbox) {
        Shop::Smarty()->assign("sandbox", $_SESSION["Barzahlen"]->api->sandbox);
    }
    
    $tpl_file = $oPlugin->cFrontendPfad . 'template/checkout_script.tpl';
    $template = $smarty->fetch($tpl_file);
    pq("body")->append($template);
    
    $tpl_file = $oPlugin->cFrontendPfad . 'template/checkout_button.tpl';
    $template = $smarty->fetch($tpl_file);
    pq("#content .order-completed")->append($template);
    
    unset($_SESSION["Barzahlen"]);
}
