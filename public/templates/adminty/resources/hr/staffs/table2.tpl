<!-- Modal Window Layout -->
<?php

$addDesignation = [
    'name' => 'addDesignation',
    'title' => 'Add Designation',
    'subtitle' => 'Create a Single Designation Record',
    'file' => 'adminty/resources/hr/staffs/form2.tpl',
    'url' => FYNX_PUBLIC['url'] . 'hr/addDesig',
    'classlist' => 'slide-up enable-scroll',
];
$this->modal($addDesignation)->modal_body()->modal_end();

$editDesignation = [
    'name' => 'editDesignation',
    'title' => 'Edit Designation',
    'subtitle' => 'Update a Single Designation Record',
    'file' => 'adminty/resources/hr/staffs/form2.tpl',
    'url' => FYNX_PUBLIC['url'] . 'hr/updateDesig',
    'classlist' => 'slide-up enable-scroll',
];

$deleteDesignation = [
    'name' => 'deleteDesignation',
    'title' => 'Delete Designation',
    'url' => FYNX_PUBLIC['url'] . 'hr/deleteDesig',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allDesignations)) : ?>

<table class="table table-striped list-table">
    <thead>
        <tr role="row">
            <th><input type="checkbox" /></th>
            <th>Designation</th>
            <th>Entry Date</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($allDesignations as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['id']; ?>"></td>
            <td><?php echo $value['name']; ?></td>
            <td><?php echo $value['created_at']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editDesignation<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteDesignation<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($editDesignation, $key)->modal_body($allDesignations[$key])->modal_end();
                $this->modal($deleteDesignation, $key)->modal_field('id', $value['id'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>