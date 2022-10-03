<!-- Modal Window Layout -->
<?php
$viewTransaction = [
    'name' => 'viewTransaction',
    'title' => 'Transaction Record',
    // 'file' => 'adminty/resources/finance/view.tpl',
    'size' => 'xl',
    'classlist' => 'slide-up enable-scroll',
];

$addTransaction = [
    'name' => 'addTransaction',
    'title' => 'Add Transaction',
    'subtitle' => 'Create a Single Transaction Record',
    'file' => 'adminty/resources/finance/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'finance/add',
    'classlist' => 'slide-up enable-scroll',
];
$this->modal($addTransaction)->modal_field('allTransactionHeads', $allTransactionHeads)->modal_body()->modal_end();

$editTransaction = [
    'name' => 'editTransaction',
    'title' => 'Edit Transaction',
    'subtitle' => 'Update a Single Transaction Record',
    'file' => 'adminty/resources/finance/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'finance/update',
    'classlist' => 'slide-up enable-scroll',
];

$deleteTransaction = [
    'name' => 'deleteTransaction',
    'title' => 'Delete Transaction',
    'url' => FYNX_PUBLIC['url'] . 'finance/delete',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allTransactions)) : ?>

<table class="table table-striped list-table">
    <thead>
        <tr role="row">
            <th><input type="checkbox" /></th>
            <th>Entry Date</th>
            <th>Head</th>
            <th>Invoice</th>
            <th>Narration</th>
            <th>Debit</th>
            <th>Credit</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($allTransactions as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['created_at']; ?>"></td>
            <td><?php echo $value['date']; ?></td>
            <td><?php echo $value['trans_head_id']; ?></td>
            <td><?php echo $value['invoice_no']; ?></td>
            <td><?php echo $value['narration']; ?></td>
            <td><?php if ($value['state'] == '0') {
                            echo number_format($value['amount'], 2);
                        } else {
                            echo number_format(0, 2);
                        }; ?>
            </td>
            <td><?php if ($value['state'] == '1') {
                            echo number_format($value['amount'], 2);
                        } else {
                            echo number_format(0, 2);
                        }; ?>
            </td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editTransaction<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteTransaction<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($viewTransaction, $key)->modal_body($allTransactions[$key])->modal_end();
                $this->modal($editTransaction, $key)->modal_field('allTransactionHeads', $allTransactionHeads)->modal_body($allTransactions[$key])->modal_end();
                $this->modal($deleteTransaction, $key)->modal_field('created_at', $value['created_at'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>