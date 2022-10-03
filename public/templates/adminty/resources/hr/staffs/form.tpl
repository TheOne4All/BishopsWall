<div class="modal-fieldset first">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Staff Details</h4>
            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="card-body">

            <div class="row form-group">
                <input name="cid" type="hidden" value="1"></input>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Role <code>*</code></label>
                    <select name="role_id" class="form-control" required>
                        <option value="">Select</option>
                        <?php if (count($allRoles) != '') {
                            foreach ($allRoles as $key => $value) { ?>
                        <option value="<?= $value['id'] ?>" <?php if (isset($role_id) && $role_id == $value['id']) {
                                                                        echo 'selected';
                                                                    } ?>><?= $value['name'] ?>
                        </option>
                        <?php }
                        } ?>
                    </select>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Department </label>
                    <select name="department" class="form-control">
                        <option value="">Select</option>
                        <?php if (count($allDepartments) != '') {
                            foreach ($allDepartments as $key => $value) { ?>
                        <option value="<?= $value['id'] ?>" <?php if (isset($department) && $department == $value['id']) {
                                                                        echo 'selected';
                                                                    } ?>><?= $value['name'] ?>
                        </option>
                        <?php }
                        } ?>
                    </select>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Designation </label>
                    <select name="designation" class="form-control">
                        <option value="">Select</option>
                        <?php if (count($allDesignations) != '') {
                            foreach ($allDesignations as $key => $value) { ?>
                        <option value="<?= $value['id'] ?>" <?php if (isset($designation) && $designation == $value['id']) {
                                                                        echo 'selected';
                                                                    } ?>><?= $value['name'] ?>
                        </option>
                        <?php }
                        } ?>
                    </select>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Sur-Name <code>*</code></label>
                    <input type="text" class="form-control" placeholder="Last Name" name="lastname"
                        value="<?php if (isset($lastname)) echo $lastname; ?>" required autofocus>
                    <span class="messages popover-valid"></span>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">First-Name <code>*</code></label>
                    <input type="text" class="form-control" placeholder="First Name" name="firstname"
                        value="<?php if (isset($firstname)) echo $firstname; ?>" required autofocus>
                    <span class="messages popover-valid"></span>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Middle-Name</label>
                    <input type="text" class="form-control" placeholder="Middle Name" name="middlename"
                        value="<?php if (isset($middlename)) echo $middlename; ?>">
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Employee Number <code>*</code></label>
                    <input type="text" class="form-control" placeholder="Employee Number" name="employee_id"
                        value="<?php if (isset($employee_id)) echo $employee_id; ?>" required autofocus>
                    <span class="messages popover-valid"></span>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Email <code>*</code></label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        <input type="email" class="form-control" placeholder="Email" name="email"
                            value="<?php if (isset($email)) echo $email; ?>" required autofocus>
                        <span class="messages popover-valid"></span>
                    </div>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Phone <code>*</code></label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                        <input type="text" class="form-control" name="contact_no" placeholder="(CODE)-NUMBER"
                            value="<?php if (isset($contact_no)) echo $contact_no; ?>" required autofocus>
                        <span class="messages popover-valid"></span>
                    </div>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Date of Birth <code>*</code></label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                        <input type="date" class="form-control" placeholder="dd-mm-yyyy" name="dob"
                            value="<?php if (isset($dob)) echo $dob; ?>" required autofocus>
                        <span class="messages popover-valid"></span>
                    </div>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Resumption Date <code>*</code></label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                        <input type="date" class="form-control" placeholder="yyyy-mm-dd" name="date_of_joining"
                            value="<?php if (isset($date_of_joining)) echo $date_of_joining; ?>" required autofocus>
                        <span class="messages popover-valid"></span>
                    </div>
                </div>
                <div class="col-sm-4 m-b-20">
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
                <div class="col-sm-4 m-b-20">
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
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Religion</label>
                    <input type="text" class="form-control" placeholder="Religion" name="religion"
                        value="<?php if (isset($religion)) echo $religion; ?>">
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Qualification</label>
                    <input type="text" class="form-control" placeholder="Educational Qualification" name="qualification"
                        value="<?php if (isset($qualification)) echo $qualification; ?>">
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Work Experience (in Years)</label>
                    <input type="text" class="form-control" placeholder="Work Experience (in Years)" name="work_exp"
                        value="<?php if (isset($work_exp)) echo $work_exp; ?>">
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600" for="image">Photo</label>
                    <div class="input-group">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="image">
                            <label class="custom-file-label" for="image">Choose file</label>
                        </div>
                        <span class="input-group-addon">Browse</span>
                    </div>
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Current Address <code>*</code></label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-addon">@</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Current Address" name="address"
                            value="<?php if (isset($address)) echo $address; ?>">
                    </div>
                    <span class="messages popover-valid"></span>
                </div>

            </div>

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>
<!-- /.column -->

<div class="modal-fieldset">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Payroll</h4>
            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="card-body">

            <div class="row form-group">
                <div class="col-sm-3 m-b-20">
                    <label class="f-w-600">EPF No</label>
                    <input type="text" class="form-control" placeholder="EPF Number" name="epf_no"
                        value="<?php if (isset($epf_no)) echo $epf_no; ?>">
                </div>
                <div class="col-sm-3 m-b-20">
                    <label class="f-w-600">Contract Type </label>
                    <select name="contract_type" class="form-control">
                        <option value="Full-Time" <?php if (isset($contract_type) && $contract_type == 'Full-Time') {
                                                        echo 'selected';
                                                    } ?>>Full-Time
                        </option>
                        <option value="Part-Time" <?php if (isset($contract_type) && $contract_type == 'Part-Time') {
                                                        echo 'selected';
                                                    } ?>>Part-Time
                        </option>
                        <option value="Probation" <?php if (isset($contract_type) && $contract_type == 'Probation') {
                                                        echo 'selected';
                                                    } ?>>Probation
                        </option>
                    </select>
                </div>
                <div class="col-sm-3 m-b-20">
                    <label class="f-w-600">Basic Salary</label>
                    <input type="text" class="form-control" placeholder="Basic Salary Amount" name="basic_salary"
                        value="<?php if (isset($basic_salary)) echo $basic_salary; ?>">
                </div>
                <div class="col-sm-3 m-b-20">
                    <label class="f-w-600">Work Shift</label>
                    <input type="text" class="form-control" placeholder="Work Shift" name="shift"
                        value="<?php if (isset($shift)) echo $shift; ?>">
                </div>
            </div>

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>

<div class="modal-fieldset">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Bank Account Details</h4>
            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="card-body">

            <div class="row form-group">
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Bank Account Title</label>
                    <input type="text" class="form-control" placeholder="Bank Account Title" name="account_title"
                        value="<?php if (isset($account_title)) echo $account_title; ?>">
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Bank Account Number</label>
                    <input type="text" class="form-control" placeholder="Bank Account Number" name="bank_account_no"
                        value="<?php if (isset($bank_account_no)) echo $bank_account_no; ?>">
                </div>
                <div class="col-sm-4 m-b-20">
                    <label class="f-w-600">Bank Name</label>
                    <input type="text" class="form-control" placeholder="Bank Name" name="bank_name"
                        value="<?php if (isset($bank_name)) echo $bank_name; ?>">
                </div>
            </div>

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>

<div class="modal-fieldset">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Social Media Handle</h4>
            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="card-body">

            <div class="row">
                <div class="col-sm-3 m-b-20">
                    <label class="f-w-600">Facebook</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-facebook"></i></span>
                        <input type="text" class="form-control" placeholder="Facebook" name="facebook"
                            value="<?php if (isset($facebook)) echo $facebook; ?>">
                    </div>
                </div>
                <div class="col-sm-3 m-b-20">
                    <label class="f-w-600">Twitter</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-twitter"></i></span>
                        <input type="text" class="form-control" placeholder="Twitter" name="twitter"
                            value="<?php if (isset($twitter)) echo $twitter; ?>">
                    </div>
                </div>
                <div class="col-sm-3 m-b-20">
                    <label class="f-w-600">Instagram</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-instagram"></i></span>
                        <input type="text" class="form-control" placeholder="Instagram" name="instagram"
                            value="<?php if (isset($instagram)) echo $instagram; ?>">
                    </div>
                </div>
                <div class="col-sm-3 m-b-20">
                    <label class="f-w-600">Linkedin</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-linkedin"></i></span>
                        <input type="text" class="form-control" placeholder="Linkedin" name="linkedin"
                            value="<?php if (isset($linkedin)) echo $linkedin; ?>">
                    </div>
                </div>
            </div>

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>

<div class="modal-fieldset">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Documents</h4>
            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="card-body">

            <div class="row form-group">
                <div class="col-sm-4">
                    <label class="f-w-600" for="resume">Resume</label>
                    <div class="input-group">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="resume">
                            <label class="custom-file-label" for="resume">Choose file</label>
                        </div>
                        <span class="input-group-addon pointer">Browse</span>
                    </div>
                </div>
                <div class="col-sm-4">
                    <label class="f-w-600" for="joining_letter">Resumption Letter</label>
                    <div class="input-group">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="joining_letter">
                            <label class="custom-file-label" for="joining_letter">Choose file</label>
                        </div>
                        <span class="input-group-addon pointer">Browse</span>
                    </div>
                </div>
                <div class="col-sm-4">
                    <label class="f-w-600" for="other_document">Other Document</label>
                    <div class="input-group">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="other_document">
                            <label class="custom-file-label" for="other_document">Choose file</label>
                        </div>
                        <span class="input-group-addon pointer">Browse</span>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>