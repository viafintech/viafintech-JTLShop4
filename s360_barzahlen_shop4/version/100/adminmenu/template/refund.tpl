<script>
    function confirmOK(){
        $('.element').hide();
        $('.confirm').show();
    }
    function revertOK(){
        $('.element').show();
        $('.confirm').hide();
    }
</script>

<div class="modal fade" id="refund-modal" tabindex="-1" role="dialog" aria-hidden="true" data-keyboard="false" data-backdrop="static">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">R&uuml;ckzahlung f&uuml;r Bestellung {$slip->cBestellNr}</h4>
      </div>
      <div class="modal-body element">
            Betrag erstatten: <input id="refund-value" type="text" name="refundValue" value="{$slip->transaction_amount}" placeholder="{$slip->transaction_amount}"> {$slip->transaction_currency}
      </div>
      <div class="modal-body confirm" style="display:none;">
          M&ouml;chten Sie die R&uuml;ckzahlung jetzt anweisen?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary element" data-dismiss="modal" onclick="confirmAbort();">Schlie&szlig;en</button>
        <button type="button" class="btn btn-primary element" onclick="confirmOK();">OK</button>
        <button type="button" class="btn btn-secondary confirm" style="display:none;" onclick="revertOK();">Nein</button>
        <button type="button" class="btn btn-danger confirm" style="display:none;" onclick="performRefund('{$slip->for_slip_id}');">Erstatten</button>
      </div>
    </div>
  </div>
</div>