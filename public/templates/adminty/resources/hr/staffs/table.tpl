<!-- Modal Window Layout -->
<?php
$viewStaff = [
    'name' => 'viewStaff',
    'title' => 'Staff Record',
    // 'file' => 'origin/resources/hr/staffs/view.tpl',
    'size' => 'xl',
    'classlist' => 'slide-up enable-scroll',
];

$addStaff = [
    'name' => 'addStaff',
    'title' => 'Add Staff',
    'subtitle' => 'Create a Single Staff Record',
    'file' => 'adminty/resources/hr/staffs/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'hr/add',
    'classlist' => 'slide-up enable-scroll',
    'size' => 'xl',
];
$this->modal($addStaff)->modal_field('allRoles', $allRoles)->modal_field('allDepartments', $allDepartments)->modal_field('allDesignations', $allDesignations)->modal_body()->modal_end();

$editStaff = [
    'name' => 'editStaff',
    'title' => 'Edit Staff',
    'subtitle' => 'Update a Single Staff Record',
    'file' => 'adminty/resources/hr/staffs/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'hr/update',
    'classlist' => 'slide-up enable-scroll',
    'size' => 'xl',
];

$deleteStaff = [
    'name' => 'deleteStaff',
    'title' => 'Delete Staff',
    'url' => FYNX_PUBLIC['url'] . 'hr/delete',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allStaffs)) : ?>

<table class="table table-striped list-table">
    <thead>
        <tr role="row">
            <th><input type="checkbox" /></th>
            <th>Full-Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Entry Date</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($allStaffs as $key => $value) { ?>
        <tr role="row">
            <td><input type="checkbox" /></td>
            <td data-toggle="modal" data-target="#viewStaff<?= $key ?>">
                <?php echo ucwords(strtolower($value['lastname'] . ", " . $value['firstname'] . " " . $value['middlename'])); ?>
            </td>
            <td><?php echo $value['email']; ?></td>
            <td><?php echo $value['contact_no']; ?></td>
            <td><?php echo $value['date_of_joining']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editStaff<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteStaff<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($viewStaff, $key)->modal_body($allStaffs[$key])->modal_end();
                $this->modal($editStaff, $key)->modal_field('allRoles', $allRoles)->modal_field('allDepartments', $allDepartments)->modal_field('allDesignations', $allDesignations)->modal_body($allStaffs[$key])->modal_end();
                $this->modal($deleteStaff, $key)->modal_field('employee_id', $value['employee_id'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>