<link rel="stylesheet" type="text/css" href="{$AdminmenuPfadURLSSL}css/admin.css">
<script type="text/javascript" src="{$AdminmenuPfadURLSSL}js/admin.js" async="async"></script>
<script type="text/javascript">
window.ajaxEndpoint = '{$AdminPluginURL}&isAjax=1';
</script>

<div>
    <h2>Zahlungen</h2>
    <div id="s360-message"></div>
    <div id="s360-barzahlen-orders">
        {* Orders overview *}
        <div class="row">
            <div class="col-xs-12">
                <div class="text-center">
                    <div class="input-group">
                        <input id="s360-search" type="text" class="form-control" placeholder="Bestell-Nr/Zahlschein/Betrag">
                        <span class="input-group-btn">
                            <button id="s360-search-button" class="btn btn-primary" type="button">Suchen</button>
                        </span>
                    </div>                    
                </div>
                <table id="s360-slip-table" class="table table-condensed">
                    <thead>
                        <td>Bestell-Nr</td>
                        <td>Zahlschein</td>
                        <td>Division</td>
                        <td>Typ</td>
                        <td>Status</td>
                        <td>Betrag</td>
                        <td>Storno</td>
                        <td>Land</td>
                        <td>Lieferung</td>
                        <td>Ablauf</td>
                        <td>Aktionen</td>
                    </thead>
                    <tbody id="s360-slip-list">
                        {* See payments_inc.tpl for content *}
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row text-center">
            <ul class="pagination justify-content-center" id="pagination" data-page="{$page}" aria-label="Page navigation">
                <li id="page-item-first" class="page-item"><a class="page-link-first" href="#"><span>&laquo;</span></a></li>
                <li id="page-item-prev" class="page-item"><a id="page-link-prev" href="#"><span>&lsaquo;</span></a></li>
                <li id="page-item-current" class="page-item"><a id="page-link-current"><select id="page-select"></select></a></li>
                <li id="page-item-reset" class="page-item"><a class="page-link-first" href="#"><span>Zur&uuml;cksetzen</span></a></li>
                <li id="page-item-next" class="page-item"><a id="page-link-next" href="#"><span>&rsaquo;</span></a></li>
                <li id="page-item-last" class="page-item"><a id="page-link-last" href="#"><span>&raquo;</span></a></li>
            </ul>
        </div>
        <div class="row" id="s360-modal"></div>
        <div class="row" id="s360-confirm">
            <div class="modal fade" id="confirm-modal" tabindex="-1" role="dialog" aria-hidden="true" data-keyboard="false" data-backdrop="static">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Best&auml;tigung</h4>
                        </div>
                        <div class="modal-body element resend" style="display:none;">
                            M&ouml;chten Sie jetzt den Zahlschein erneut versenden?
                        </div>
                        <div class="modal-body element invalidate" style="display:none;">
                            M&ouml;chten Sie wirklich den Zahlschein invalidieren?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" onclick="confirmAbort();">Nein</button>
                            <button type="button" class="btn btn-primary element resend" style="display:none;" id="s360-confirmed-resend">Senden</button>
                            <button type="button" class="btn btn-danger element invalidate" style="display:none;" id="s360-confirmed-invalidate">Invalidieren</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
        <div class="s360-loading-indicator text-center" style="display:none;">
            <div class="fa fa-spinner fa-pulse"></div>
        </div>
    </div>
</div>
                    
                    
