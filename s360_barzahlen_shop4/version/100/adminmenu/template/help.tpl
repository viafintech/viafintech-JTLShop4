<div class="s360-help">
    <h2>Hilfe</h2>
    <h3>Webhook URL</h3>
    <div class="alert alert-info">{$webhook}</div>
    <h3>Zahlungsart Einstellungen</h3>
    {if $apiConfig}
    <div class="alert alert-success">Barzahlen ist als Zahlungsart konfiguriert.</div>
    <p>�berpr�fen Sie die von Ihnen hinterlegten Einstellungen zur Zahlungsart.</p>
    <table class="table table-condensed">
        <thead><td>Land</td><td>Modus</td><td>DivisionID</td><td>APIKey</td></thead>
        {foreach $apiConfig as $country => $config}
            <tr><td>{$country}</td><td>{if $config->sandbox}Sandbox{else}Live{/if}</td><td>{$config->divisionId}</td><td>{$config->APIKey}</td></tr>
        {/foreach}
    </table>
    {else}
    <div class="alert alert-warning">Das Plugin ist nicht f�r Barzahlen konfiguriert. Bitte aktivieren Sie unter der Zahlungsart die API-Zugangsdaten f�r mindestens eine l�nderspezifische Division.</div>
    <ul>
        <li>F�r die Nutzung des Barzahlen Plugins ben�tigen Sie eine Registrierung im <a href="https://controlcenter.barzahlen.de">Barzahlen Control Center</a> (viafintech).</li>
        <li>Sie erhalten eine E-Mail mit den Zugangsdaten zum Control Center nach erfolgreicher Best�tigung Ihres Accountes.</li>
        <li>F�gen Sie unter Einstellungen > Divisionen eine neue Division hinzu.</li>
        <li>Nach dem Speichern erzeugt das System eine "Division ID" und weitere API-Schl�ssel.</li>
        <li>Kopieren Sie nun die "Division ID" und lediglich den "API-Schl�ssel" in die zugeh�rigen Konfigurationsfelder unter der Zalhungsart Barzahlen.</li>
    </ul>   
    {/if}
    <div><a href="zahlungsarten.php" class="btn btn-primary">Zu den Zahlungsarten</a></div>
    <hr>
    <h3>Versandart Einstellungen</h3>
    {if $tVersandarten}
    <div class="alert alert-success">Barzahlen ist in Versandarten aktiviert.</div>
    <p>�berpr�fen Sie die von Ihnen hinterlegten Einstellungen zur Versandart.</p>
    <table class="table table-condensed">
        <thead><td>Versandart</td><td>L�nder</td></thead>
    {foreach $tVersandarten as $Versandart}
        <tr><td>{$Versandart->cName}</td><td>{$Versandart->cLaender}</td></tr>
    {/foreach}
    </table>
    {else}
    <div class="alert alert-warning">Barzahlen ist f�r keine Versandart aktiviert. Bitte aktivieren Sie unter der Versandarten Barzahlen als Zahlungsart f�r mindestens eine Versandart.</div>  
    {/if}
    <div><a href="versandarten.php" class="btn btn-primary">Zu den Versandarten</a></div>
    <div class="text-center">
        <p>Eine ausf�hrliche Dokumentation zur Einrichtung und Betrieb des Plugins finden Sie in unserem <a href="https://solution360.atlassian.net/wiki/spaces/S360DOKU/pages/2569502729/Jumpin+Sidebar+Manager+JTL-Shop+4">Wiki</a>.</p>
    </div>
</div>
