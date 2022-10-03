<?php
$addTransactionHead = [
    'name' => 'addTransactionHead',
    'title' => 'Add Transaction-Head',
    'subtitle' => 'Create a Single Transaction-Head Record',
    'file' => 'adminty/resources/finance/form1.tpl',
    'url' => FYNX_PUBLIC['url'] . 'finance/addHead',
    'classlist' => 'slide-up enable-scroll',
];
$this->modal($addTransactionHead)->modal_field('allTransactionTypes', $allTransactionTypes)->modal_body()->modal_end();

$editTransactionHead = [
    'name' => 'editTransactionHead',
    'title' => 'Edit Transaction-Head',
    'subtitle' => 'Update a Single Transaction-Head Record',
    'file' => 'adminty/resources/finance/form1.tpl',
    'url' => FYNX_PUBLIC['url'] . 'finance/updateHead',
    'classlist' => 'slide-up enable-scroll',
];

$deleteTransactionHead = [
    'name' => 'deleteTransactionHead',
    'title' => 'Delete Transaction-Head',
    'url' => FYNX_PUBLIC['url'] . 'finance/deleteHead',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allTransactionHeads)) : ?>

<table class="table table-striped list-table">
    <thead>
        <tr role="row">
            <th><input type="checkbox" /></th>
            <th>Transaction Type</th>
            <th>Transaction Head</th>
            <th>Entry Date</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($allTransactionHeads as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['id']; ?>"></td>
            <td><?php echo $value['trans_type_id']; ?></td>
            <td><?php echo $value['trans_head']; ?></td>
            <td><?php echo $value['created_at']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editTransactionHead<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteTransactionHead<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($editTransactionHead, $key)->modal_field('allTransactionTypes', $allTransactionTypes)->modal_body($allTransactionHeads[$key])->modal_end();
                $this->modal($deleteTransactionHead, $key)->modal_field('id', $value['id'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>