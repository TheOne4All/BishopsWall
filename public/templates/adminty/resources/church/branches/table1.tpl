<?php
$addStructure = [
    'name' => 'addStructure',
    'title' => 'Add Hierarchy',
    'subtitle' => 'Create a Single Hierarchy Record',
    'file' => 'adminty/resources/church/branches/form1.tpl',
    'url' => FYNX_PUBLIC['url'] . 'branches/addStructure',
    'classlist' => 'slide-up enable-scroll',
    'size' => 'sm',
];
$this->modal($addStructure)->modal_body()->modal_end();

$editStructure = [
    'name' => 'editStructure',
    'title' => 'Edit Hierarchy',
    'subtitle' => 'Update a Single Hierarchy Record',
    'file' => 'adminty/resources/church/branches/form1.tpl',
    'url' => FYNX_PUBLIC['url'] . 'branches/updateStructure',
    'classlist' => 'slide-up enable-scroll',
    'size' => 'sm',
];

$deleteStructure = [
    'name' => 'deleteStructure',
    'title' => 'Delete Hierarchy',
    'url' => FYNX_PUBLIC['url'] . 'branches/deleteStructure',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allStructures)) : ?>

<table class="table table-striped list-table">
    <thead>
        <tr role="row">
            <th><input type="checkbox" /></th>
            <th>Transaction Type</th>
            <th>Entry Date</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($allStructures as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['id']; ?>"></td>
            <td><?php echo $value['name']; ?></td>
            <td><?php echo $value['created_at']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editStructure<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteStructure<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($editStructure, $key)->modal_body($allStructures[$key])->modal_end();
                $this->modal($deleteStructure, $key)->modal_field('id', $value['id'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>