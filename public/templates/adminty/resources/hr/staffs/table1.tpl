<!-- Modal Window Layout -->
<?php

$addDepartment = [
    'name' => 'addDepartment',
    'title' => 'Add Department',
    'subtitle' => 'Create a Single Department Record',
    'file' => 'adminty/resources/hr/staffs/form1.tpl',
    'url' => FYNX_PUBLIC['url'] . 'hr/addDept',
    'classlist' => 'slide-up enable-scroll',
];
$this->modal($addDepartment)->modal_body()->modal_end();

$editDepartment = [
    'name' => 'editDepartment',
    'title' => 'Edit Department',
    'subtitle' => 'Update a Single Department Record',
    'file' => 'adminty/resources/hr/staffs/form1.tpl',
    'url' => FYNX_PUBLIC['url'] . 'hr/updateDept',
    'classlist' => 'slide-up enable-scroll',
];

$deleteDepartment = [
    'name' => 'deleteDepartment',
    'title' => 'Delete Department',
    'url' => FYNX_PUBLIC['url'] . 'hr/deleteDept',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allDepartments)) : ?>

<table class="table table-striped list-table">
    <thead>
        <tr role="row">
            <th><input type="checkbox" /></th>
            <th>Department</th>
            <th>Entry Date</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($allDepartments as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['id']; ?>"></td>
            <td><?php echo $value['name']; ?></td>
            <td><?php echo $value['created_at']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editDepartment<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteDepartment<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($editDepartment, $key)->modal_body($allDepartments[$key])->modal_end();
                $this->modal($deleteDepartment, $key)->modal_field('id', $value['id'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>