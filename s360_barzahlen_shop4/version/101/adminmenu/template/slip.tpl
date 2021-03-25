<div class="modal fade" id="slip-modal" tabindex="-1" role="dialog" aria-labelledby="{$slip->id}" aria-hidden="true" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">{strtoupper($slip->id)}</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6"><label>ZAHLUNG</label></div>
                    <div class="col-md-6 ml-auto"><label class="spaced">Division-ID:</label> {$slip->division_id}</div>
                </div>
                <div class="row">
                    <div class="col-md-6"><label>{$slip->customer_key}</label></div>
                    <div class="col-md-6 ml-auto"><label class="spaced">Erstellt am:</label> {$slip->created_at}</div>
                </div>
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-6 ml-auto"><label class="spaced">Ge&auml;ndert am:</label> {$slip->updated_at}</div>
                </div>
                <div class="row">
                    <div class="col-md-3"><label>Bestell-Nr:</label> {$slip->cBestellNr}</div>
                    <div class="col-md-3"><label>Rechnungsland:</label> {$slip->cRechnungsLand}</div>
                    <div class="col-md-6 ml-auto"><label class="spaced">G&uuml;ltig bis:</label> {$slip->expires_at}</div>
                </div>
                <div class="row">
                    <div class="col-md-3"><label>Betrag:</label> {$slip->transaction_amount} {$slip->transaction_currency}</div>
                    <div class="col-md-3"><label>Lieferland:</label> {$slip->cLieferLand}</div>
                    <div class="col-md-6 ml-auto"><label class="spaced">Status:</label> {$slip->transaction_state}
                    </div>
                </div>
                {if $slip->actions}    
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-6 ml-auto"><label class="spaced">Aktionen:</label><span class="actions">
                        {if $slip->actions->refund}<a onclick="getRefundForm('{$slip->id}');" href="#" title="Erstatten"><i class="fa fa-undo"></i></a>{/if}
                        {if $slip->actions->resend}<a onclick="confirmResendSlip('{$slip->id}');" href="#" title="Senden"><i class="fa fa-share-square-o"></i></a>{/if}
                        {if $slip->actions->invalidate}<a onclick="confirmInvalidateSlip('{$slip->id}');" href="#" title="Invalidieren"><i class="fa fa-times"></i></a>{/if}</span>
                    </div>
                </div>
                {/if}    
            </div>
            {if $slip->refunds}
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">Erstellt am</div>
                    <div class="col-md-2">Betrag</div>
                    <div class="col-md-2 text-right">G&uuml;ltig bis</div>
                    <div class="col-md-2">Status</div>
                    <div class="col-md-2">Aktionen</div>
                </div>
                {foreach $slip->refunds as $refund}
                <div class="row">
                    <div class="col-md-2">R&uuml;ckzahlung</div>
                    <div class="col-md-2">{$refund->created_at}</div>
                    <div class="col-md-2">{$refund->transaction_amount} {$refund->transaction_currency}</div>
                    <div class="col-md-2 text-right">{$refund->expires_at}</div>
                    <div class="col-md-2">{$refund->transaction_state}</div>
                    <div class="col-md-2"><span class="actions">
                    {if $refund->actions->resend}<a onclick="confirmResendSlip('{$refund->id}');" href="#" title="Senden"><i class="fa fa-share-square-o"></i></a>{/if}
                    {if $refund->actions->invalidate}<a onclick="confirmInvalidateSlip('{$refund->id}');" href="#" title="Invalidieren"><i class="fa fa-times"></i></a>{/if}
                    </div>
                </div>
                {/foreach}
            </div>
            {/if}
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Schlie&szlig;en</button>
      </div>
        </div>
    </div>
</div>