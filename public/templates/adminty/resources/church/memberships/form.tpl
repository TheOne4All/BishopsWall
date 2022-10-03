<div class="card">
    <div class="card-body">

        <div class="row form-group">
            <!-- <input name="cid" type="hidden" value="1"></input> -->
            <input name="id" type="hidden" value="<?php if (isset($id)) echo $id; ?>"></input>
            <div class="col-sm-4 m-b-20">
                <label class="f-w-600">Sur-Name <code>*</code></label>
                <input type="text" class="form-control" placeholder="Surname" name="lname"
                    value="<?php if (isset($lname)) echo $lname; ?>" required autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-4 m-b-20">
                <label class="f-w-600">First-Name <code>*</code></label>
                <input type="text" class="form-control" placeholder="First Name" name="fname"
                    value="<?php if (isset($fname)) echo $fname; ?>" required autofocus>
            </div>
            <div class="col-sm-4 m-b-20">
                <label class="f-w-600">Middle-Name</label>
                <input type="text" class="form-control" placeholder="Middle Name" name="mname"
                    value="<?php if (isset($mname)) echo $mname; ?>" autofocus>
                <span class="messages popover-valid"></span>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Email <code>*</code></label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                    <input type="email" class="form-control" placeholder="Email" name="email"
                        value="<?php if (isset($email)) echo $email; ?>" required autofocus>
                    <span class="messages popover-valid"></span>
                </div>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Phone <code>*</code></label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                    <input type="text" class="form-control" name="residential_phone" placeholder="(CODE)-NUMBER"
                        value="<?php if (isset($residential_phone)) echo $residential_phone; ?>" required autofocus>
                    <span class="messages popover-valid"></span>
                </div>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Marital Status</label>
                <select name="marital_status" class="form-control">
                    <option value="Single" <?php if (isset($marital_status) && $marital_status == 'Single') {
                                                echo 'selected';
                                            } ?>>Single</option>
                    <option value="Married" <?php if (isset($marital_status) && $marital_status == 'Married') {
                                                echo 'selected';
                                            } ?>>Married</option>
                </select>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600">Gender</label>
                <div class="form-radio">
                    <div class="radio radiofill radio-primary radio-inline">
                        <label><input type="radio" name="gender" value="Male" data-bv-field="gender" <?php if (isset($gender) && $gender == 'Male') {
                                                                                                            echo 'checked';
                                                                                                        } ?>><i
                                class="helper"></i>Male </label>
                    </div>
                    <div class="radio radiofill radio-primary radio-inline">
                        <label><input type="radio" name="gender" value="Female" data-bv-field="gender" <?php if (isset($gender) && $gender == 'Female') {
                                                                                                            echo 'checked';
                                                                                                        } ?>><i
                                class="helper"></i>Female</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 m-b-20">
                <label class="f-w-600" for="img">Photo</label>
                <div class="input-group">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" name="img">
                        <label class="custom-file-label" for="img">Choose file</label>
                    </div>
                    <span class="input-group-addon pointer">Browse</span>
                </div>
            </div>
        </div>

    </div>
</div>