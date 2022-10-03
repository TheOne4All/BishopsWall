<div class="card">
    <div class="card-body">

        <div class="row form-group">
            <!-- <input name="cid" type="hidden" value="1"></input> -->
            <input name="id" type="hidden" value="<?php if (isset($id)) echo $id; ?>"></input>
            <div class="col-sm-12 m-b-20">
                <label class="f-w-600">New Hierarchy <code>*</code></label>
                <input type="text" class="form-control" placeholder="Enter Hierarchy Name" name="name"
                    value="<?php if (isset($name)) echo $name; ?>" required autofocus>
            </div>
        </div>

    </div>
</div>