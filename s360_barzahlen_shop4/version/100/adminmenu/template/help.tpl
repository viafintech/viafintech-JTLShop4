<div class="s360-help">
    <h2>Hilfe</h2>
    <h3>Webhook URL</h3>
    <div class="alert alert-info">{$webhook}</div>
    <h3>Zahlungsart Einstellungen</h3>
    {if $apiConfig}
    <div class="alert alert-success">Barzahlen ist als Zahlungsart konfiguriert.</div>
    <p>Überprüfen Sie die von Ihnen hinterlegten Einstellungen zur Zahlungsart.</p>
    <table class="table table-condensed">
        <thead><td>Land</td><td>Modus</td><td>DivisionID</td><td>APIKey</td></thead>
        {foreach $apiConfig as $country => $config}
            <tr><td>{$country}</td><td>{if $config->sandbox}Sandbox{else}Live{/if}</td><td>{$config->divisionId}</td><td>{$config->APIKey}</td></tr>
        {/foreach}
    </table>
    {else}
    <div class="alert alert-warning">Das Plugin ist nicht für Barzahlen konfiguriert. Bitte aktivieren Sie unter der Zahlungsart die API-Zugangsdaten für mindestens eine länderspezifische Division.</div>
    <ul>
        <li>Für die Nutzung des Barzahlen Plugins benötigen Sie eine Registrierung im <a href="https://controlcenter.barzahlen.de">Barzahlen Control Center</a> (viafintech).</li>
        <li>Sie erhalten eine E-Mail mit den Zugangsdaten zum Control Center nach erfolgreicher Bestätigung Ihres Accountes.</li>
        <li>Fügen Sie unter Einstellungen > Divisionen eine neue Division hinzu.</li>
        <li>Nach dem Speichern erzeugt das System eine "Division ID" und weitere API-Schlüssel.</li>
        <li>Kopieren Sie nun die "Division ID" und lediglich den "API-Schlüssel" in die zugehörigen Konfigurationsfelder unter der Zalhungsart Barzahlen.</li>
    </ul>   
    {/if}
    <div><a href="zahlungsarten.php" class="btn btn-primary">Zu den Zahlungsarten</a></div>
    <hr>
    <h3>Versandart Einstellungen</h3>
    {if $tVersandarten}
    <div class="alert alert-success">Barzahlen ist in Versandarten aktiviert.</div>
    <p>Überprüfen Sie die von Ihnen hinterlegten Einstellungen zur Versandart.</p>
    <table class="table table-condensed">
        <thead><td>Versandart</td><td>Länder</td></thead>
    {foreach $tVersandarten as $Versandart}
        <tr><td>{$Versandart->cName}</td><td>{$Versandart->cLaender}</td></tr>
    {/foreach}
    </table>
    {else}
    <div class="alert alert-warning">Barzahlen ist für keine Versandart aktiviert. Bitte aktivieren Sie unter der Versandarten Barzahlen als Zahlungsart für mindestens eine Versandart.</div>  
    {/if}
    <div><a href="versandarten.php" class="btn btn-primary">Zu den Versandarten</a></div>
    <div class="text-center">
        <p>Eine ausführliche Dokumentation zur Einrichtung und Betrieb des Plugins finden Sie in unserem <a href="https://solution360.atlassian.net/wiki/spaces/S360DOKU/pages/2569502729/Jumpin+Sidebar+Manager+JTL-Shop+4">Wiki</a>.</p>
    </div>
</div>
