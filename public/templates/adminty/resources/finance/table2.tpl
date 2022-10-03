<?php
$addTransactionType = [
    'name' => 'addTransactionType',
    'title' => 'Add Transaction-Type',
    'subtitle' => 'Create a Single Transaction-Type Record',
    'file' => 'adminty/resources/finance/form2.tpl',
    'url' => FYNX_PUBLIC['url'] . 'finance/addType',
    'classlist' => 'slide-up enable-scroll',
    'size' => 'sm',
];
$this->modal($addTransactionType)->modal_body()->modal_end();

$editTransactionType = [
    'name' => 'editTransactionType',
    'title' => 'Edit Transaction-Type',
    'subtitle' => 'Update a Single Transaction-Type Record',
    'file' => 'adminty/resources/finance/form2.tpl',
    'url' => FYNX_PUBLIC['url'] . 'finance/updateType',
    'classlist' => 'slide-up enable-scroll',
    'size' => 'sm',
];

$deleteTransactionType = [
    'name' => 'deleteTransactionType',
    'title' => 'Delete Transaction-Type',
    'url' => FYNX_PUBLIC['url'] . 'finance/deleteType',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allTransactionTypes)) : ?>

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
        <?php foreach ($allTransactionTypes as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['id']; ?>"></td>
            <td><?php echo $value['name']; ?></td>
            <td><?php echo $value['created_at']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editTransactionType<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteTransactionType<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($editTransactionType, $key)->modal_body($allTransactionTypes[$key])->modal_end();
                $this->modal($deleteTransactionType, $key)->modal_field('id', $value['id'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>