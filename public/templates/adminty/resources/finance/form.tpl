<div class="card">
    <div class="card-body">

        <div class="row form-group">
            <input name="cid" type="hidden" value="1"></input>
            <input name="created_at" type="hidden" value="<?php if (isset($created_at)) echo $created_at; ?>"></input>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Transaction Head <code>*</code></label>
                <select name="trans_head_id" class="form-control" required>
                    <?php if (count($allTransactionHeads) != '') {
                        foreach ($allTransactionHeads as $key => $value) { ?>
                    <option value="<?= $value['id'] ?>" <?php if (isset($trans_head_id) && $trans_head_id == $value['id']) {
                                                                    echo 'selected';
                                                                } ?>><?= $value['trans_head'] ?>
                    </option>
                    <?php }
                    } ?>
                </select>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Invoice Number</label>
                <input type="text" class="form-control" placeholder="Invoice Number" name="invoice_no"
                    value="<?php if (isset($invoice_no)) echo $invoice_no; ?>">
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Entry Date<code>*</code></label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    <input type="date" class="form-control" placeholder="dd-mm-yyyy" name="date"
                        value="<?php if (isset($date)) echo $date; ?>" required autofocus>
                    <span class="messages popover-valid"></span>
                </div>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Amount <code>*</code></label>
                <input type="text" class="form-control" placeholder="Enter Amount" name="amount"
                    value="<?php if (isset($amount)) echo $amount; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-6">
                <label class="f-w-600" for="other_document">Credit/Debit</label>
                <div class="form-radio">
                    <div class="radio radiofill radio-primary radio-inline">
                        <label><input type="radio" name="state" value="1" data-bv-field="state" <?php if (isset($state) && $state == '1') {
                                                                                                    echo 'checked';
                                                                                                } ?>><i
                                class="helper"></i>Credit </label>
                    </div>
                    <div class="radio radiofill radio-primary radio-inline">
                        <label><input type="radio" name="state" value="0" data-bv-field="state" <?php if (isset($state) && $state == '0') {
                                                                                                    echo 'checked';
                                                                                                } ?>><i
                                class="helper"></i>Debit</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600" for="image">Attach Document</label>
                <div class="input-group">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" name="document"
                            value="<?php if (isset($document)) echo $document; ?>">
                        <label class="custom-file-label" for="document">Choose file</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 m-b-20">
                <label class="f-w-600">Narration</label>
                <textarea class="form-control" placeholder="Enter Narration" name="narration"
                    autofocus><?php if (isset($narration)) echo $narration; ?></textarea>
            </div>
        </div>

    </div>
</div>