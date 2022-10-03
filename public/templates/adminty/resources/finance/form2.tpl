<div class="card">
    <div class="card-body">

        <div class="row form-group">
            <input name="cid" type="hidden" value="1"></input>
            <input name="id" type="hidden" value="<?php if (isset($id)) echo $id; ?>"></input>
            <div class="col-sm-12 m-b-20">
                <label class="f-w-600">Transaction Type Name <code>*</code></label>
                <input type="text" class="form-control" placeholder="Enter Transaction Type" name="name"
                    value="<?php if (isset($name)) echo $name; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
        </div>

    </div>
</div>