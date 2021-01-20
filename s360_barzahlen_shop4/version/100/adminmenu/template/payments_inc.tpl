<tr id="maxpage" data-maxpage="{$maxpage}" style="display:none;">
    <td colspan="11"></td>
</tr>
{foreach $slips as $slip}
<tr class="s360-payment">
    <td>{$slip->cBestellNr}</td>
    <td><a onclick="getSlipInfo('{$slip->for_slip_id}');" href="#">{$slip->for_slip_id}</a></td>
    <td>{$slip->division_id}</td>
    <td>{$slip->slip_type}</td>
    <td class="text-center">{$slip->transaction_state}</td>
    <td class="text-right">{$slip->transaction_amount} {$slip->transaction_currency}</td>
    <td class="text-right">{if $slip->total_refund}{$slip->total_refund} {$slip->transaction_currency}{/if}</td>
    <td class="text-center">{$slip->cRechnungsLand}</td>
    <td class="text-center">{$slip->cLieferLand}</td>
    <td>{$slip->expires_at}</td>
    <td>
        <span class="actions">
            <a onclick="getSlipInfo('{$slip->for_slip_id}');" href="#" title="Anzeigen"><i class="fa fa-eye"></i></a>
            {if $slip->actions->refund}<a onclick="getRefundForm('{$slip->for_slip_id}');" href="#" title="Erstatten"><i class="fa fa-undo"></i></a>{/if}
            {if $slip->actions->resend}<a onclick="confirmResendSlip('{$slip->for_slip_id}');" href="#" title="Senden"><i class="fa fa-share-square-o"></i></a>{/if}
            {if $slip->actions->invalidate}<a onclick="confirmInvalidateSlip('{$slip->for_slip_id}');" href="#" title="Invalidieren"><i class="fa fa-times"></i></a>{/if}
        </span>
    </td>
</tr>
{foreachelse}
<tr>
    <td colspan="11"><i>Es gibt keine Zahlscheine.</i></td>
</tr>
{/foreach}