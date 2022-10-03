<!-- Modal Window Layout -->
<?php
$viewChurch = [
    'name' => 'viewChurch',
    'title' => 'Church Record',
    // 'file' => 'adminty/resources/hr/view.tpl',
    'size' => 'xl',
    'classlist' => 'slide-up enable-scroll',
];

$addChurch = [
    'name' => 'addChurch',
    'title' => 'Add Church',
    'subtitle' => 'Create a Single Church Record',
    'file' => 'adminty/resources/church/branches/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'branches/add',
    'classlist' => 'slide-up enable-scroll',
];
$this->modal($addChurch)->modal_field('allStructures', $allStructures)->modal_body()->modal_end();

$editChurch = [
    'name' => 'editChurch',
    'title' => 'Edit Church',
    'subtitle' => 'Update a Single Church Record',
    'file' => 'adminty/resources/church/branches/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'branches/update',
    'classlist' => 'slide-up enable-scroll',
];

$deleteChurch = [
    'name' => 'deleteChurch',
    'title' => 'Delete Church',
    'url' => FYNX_PUBLIC['url'] . 'branches/delete',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allChurches)) : ?>

<table class="table table-striped list-table">
    <thead>
        <tr role="row">
            <th><input type="checkbox" /></th>
            <th>Code</th>
            <th>Name</th>
            <th>Minister</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($allChurches as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['code']; ?>"></td>
            <td><?php echo $value['code']; ?></td>
            <td><?php echo $value['name']; ?></td>
            <td><?php echo $value['seat']; ?></td>
            <td><?php echo $value['address']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editChurch<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteChurch<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($viewChurch, $key)->modal_body($allChurches[$key])->modal_end();
                $this->modal($editChurch, $key)->modal_field('allStructures', $allStructures)->modal_body($allChurches[$key])->modal_end();
                $this->modal($deleteChurch, $key)->modal_field('code', $value['code'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>