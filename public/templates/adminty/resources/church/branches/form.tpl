<div class="card">
    <div class="card-body">

        <div class="row form-group">
            <!-- <input name="cid" type="hidden" value="1"></input> -->
            <input name="id" type="hidden" value="<?php if (isset($id)) echo $id; ?>"></input>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Zone Code <code>*</code></label>
                <input type="text" class="form-control" placeholder="Zone Code" name="zone_code"
                    value="<?php if (isset($zone_code)) echo $zone_code; ?>" required autofocus>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Province Code</label>
                <input type="text" class="form-control" placeholder="Provice Code" name="province_code"
                    value="<?php if (isset($province_code)) echo $province_code; ?>" autofocus>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">District Code</label>
                <input type="text" class="form-control" placeholder="District Code" name="district_code"
                    value="<?php if (isset($district_code)) echo $district_code; ?>" autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Branch Code</label>
                <input type="text" class="form-control" placeholder="Branch Code" name="branch_code"
                    value="<?php if (isset($branch_code)) echo $branch_code; ?>" autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Name <code>*</code></label>
                <input type="text" class="form-control" placeholder="Ministry Name" name="name"
                    value="<?php if (isset($name)) echo $name; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Seating Minister <code>*</code></label>
                <input type="text" class="form-control" placeholder="Seating Minister" name="seat"
                    value="<?php if (isset($seat)) echo $seat; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
        </div>

    </div>
</div>