<div class="card">
    <div class="card-body">

        <div class="row form-group">
            <!-- <input name="cid" type="hidden" value="1"></input> -->
            <input name="id" type="hidden" value="<?php if (isset($id)) echo $id; ?>"></input>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Church Code <code>*</code></label>
                <input type="text" class="form-control" placeholder="Church Code" name="centrecode"
                    value="<?php if (isset($centrecode)) echo $centrecode; ?>" required autofocus>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Service Type</label>
                <select name="service_type" class="form-control" required>
                    <option value="">Choose Type</option>
                    <?php if (count($allServiceTypes) != '') {
                        foreach ($allServiceTypes as $key => $value) { ?>
                    <option value="<?= $value['id'] ?>" <?php if (isset($allServiceTypes) && $allServiceTypes == $value['id']) {
                                                                    echo 'selected';
                                                                } ?>><?= $value['name'] ?>
                    </option>
                    <?php }
                    } ?>
                </select>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Men</label>
                <input type="text" class="form-control" placeholder="Men" name="men"
                    value="<?php if (isset($men)) echo $men; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Women</label>
                <input type="text" class="form-control" placeholder="Women" name="women"
                    value="<?php if (isset($women)) echo $women; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Children <code>*</code></label>
                <input type="text" class="form-control" placeholder="Children" name="children"
                    value="<?php if (isset($children)) echo $children; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Visitors <code>*</code></label>
                <input type="text" class="form-control" placeholder="Visitors" name="visitors"
                    value="<?php if (isset($visitors)) echo $visitors; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
        </div>

    </div>
</div>