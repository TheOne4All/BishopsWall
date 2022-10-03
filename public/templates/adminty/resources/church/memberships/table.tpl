<!-- Modal Window Layout -->
<?php
$viewMember = [
    'name' => 'viewMember',
    'title' => 'Member Record',
    // 'file' => 'adminty/resources/church/memberships/view.tpl',
    'size' => 'xl',
    'classlist' => 'slide-up enable-scroll',
];

$addMember = [
    'name' => 'addMember',
    'title' => 'Add Member',
    'subtitle' => 'Create a Single Member Record',
    'file' => 'adminty/resources/church/memberships/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'memberships/add',
    'classlist' => 'slide-up enable-scroll',
];
$this->modal($addMember)->modal_body()->modal_end();

$editMember = [
    'name' => 'editMember',
    'title' => 'Edit Member',
    'subtitle' => 'Update a Single Member Record',
    'file' => 'adminty/resources/church/memberships/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'Memberships/update',
    'classlist' => 'slide-up enable-scroll',
];

$deleteMember = [
    'name' => 'deleteMember',
    'title' => 'Delete Member',
    'url' => FYNX_PUBLIC['url'] . 'memberships/delete',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allMembers)) : ?>

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
        <?php foreach ($allMembers as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['id']; ?>"></td>
            <td data-toggle="modal" data-target="#viewMember<?= $key ?>">
                <?php echo ucwords(strtolower($value['lname'] . ", " . $value['fname'] . " " . $value['mname'])); ?>
            </td>
            <td><?php echo $value['email']; ?></td>
            <td><?php echo $value['residential_phone']; ?></td>
            <td><?php echo $value['created_at']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editMember<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteMember<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($viewMember, $key)->modal_body($allMembers[$key])->modal_end();
                $this->modal($editMember, $key)->modal_body($allMembers[$key])->modal_end();
                $this->modal($deleteMember, $key)->modal_field('id', $value['id'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>