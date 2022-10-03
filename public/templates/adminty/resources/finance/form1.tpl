<div class="card">
    <div class="card-body">

        <div class="row form-group">
            <input name="cid" type="hidden" value="1"></input>
            <input name="id" type="hidden" value="<?php if (isset($id)) echo $id; ?>"></input>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Transaction Type <code>*</code></label>
                <select name="trans_type_id" class="form-control" required>
                    <option value="">Choose Type</option>
                    <?php if (count($allTransactionTypes) != '') {
                        foreach ($allTransactionTypes as $key => $value) { ?>
                    <option value="<?= $value['id'] ?>" <?php if (isset($trans_type_id) && $trans_type_id == $value['id']) {
                                                                    echo 'selected';
                                                                } ?>><?= $value['name'] ?>
                    </option>
                    <?php }
                    } ?>
                </select>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Transaction Name <code>*</code></label>
                <input type="text" class="form-control" placeholder="Transaction-Head Name" name="trans_head"
                    value="<?php if (isset($trans_head)) echo $trans_head; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-12 m-b-20">
                <label class="f-w-600">Narration</label>
                <textarea class="form-control" placeholder="Enter Narration" name="narration"
                    autofocus><?php if (isset($narration)) echo $narration; ?></textarea>
            </div>
        </div>

    </div>
</div>