<?php

use Shop;

$stmt = "SELECT * FROM tversandartzahlungsart as tvz, tversandart as tva WHERE tvz.kVersandart=tva.kVersandart AND tvz.kZahlungsart=".(int)$oPlugin->oPluginZahlungsmethode_arr[0]->kZahlungsart;
$tVersandarten = Shop::DB()->executeQuery($stmt, 2);
if ($tVersandarten) {
    Shop::Smarty()->assign("tVersandarten", $tVersandarten);
}

Shop::Smarty()->display($oPlugin->cAdminmenuPfad . "template/help.tpl");