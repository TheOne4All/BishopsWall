<!-- Modal Window Layout -->
<?php
$viewActivity = [
    'name' => 'viewActivity',
    'title' => 'Activity Record',
    // 'file' => 'adminty/resources/Activity/activities/view.tpl',
    'size' => 'xl',
    'classlist' => 'slide-up enable-scroll',
];

$addActivity = [
    'name' => 'addActivity',
    'title' => 'Add Activity',
    'subtitle' => 'Create a Single Activity Record',
    'file' => 'adminty/resources/church/activities/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'activities/add',
    'classlist' => 'slide-up enable-scroll',
];
$this->modal($addActivity)->modal_field('allServiceTypes', $allServiceTypes)->modal_body()->modal_end();

$editActivity = [
    'name' => 'editActivity',
    'title' => 'Edit Activity',
    'subtitle' => 'Update a Single Activity Record',
    'file' => 'adminty/resources/church/activities/form.tpl',
    'url' => FYNX_PUBLIC['url'] . 'activities/update',
    'classlist' => 'slide-up enable-scroll',
];

$deleteActivity = [
    'name' => 'deleteActivity',
    'title' => 'Delete Activity',
    'url' => FYNX_PUBLIC['url'] . 'activities/delete',
    'cancel' => 'Cancel',
    'size' => 'sm',
    'classlist' => 'stick-up disable-scroll',
];

if (!is_null($allActivities)) : ?>

<table class="table table-striped list-table">
    <thead>
        <tr role="row">
            <th><input type="checkbox" /></th>
            <th>Church</th>
            <th>Service</th>
            <th>Men</th>
            <th>Women</th>
            <th>Children</th>
            <th>Visitors</th>
            <th>Total</th>
            <th>Entry Date</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($allActivities as $key => $value) { ?>
        <tr role="row">
            <td><input name="id[]" type="checkbox" value="<?php echo $value['code']; ?>"></td>
            <td><?php echo $value['centrecode']; ?></td>
            <td><?php echo $value['service_type']; ?></td>
            <td><?php echo $value['men']; ?></td>
            <td><?php echo $value['women']; ?></td>
            <td><?php echo $value['children']; ?></td>
            <td><?php echo $value['visitors']; ?></td>
            <td><?php echo $value['men'] + $value['women'] + $value['children'] + $value['visitors']; ?></td>
            <td><?php echo $value['created_at']; ?></td>
            <td>
                <div class="btn-group">
                    <button type="button" title="Edit" class="btn" data-toggle="modal"
                        data-target="#editActivity<?= $key ?>"><i class="feather icon-edit"></i></button>
                    <button type="button" title="Delete" class="btn" data-toggle="modal"
                        data-target="#deleteActivity<?= $key ?>" title="Delete"><i
                            class="feather icon-trash-2"></i></button>
                </div>
            </td>
        </tr>
        <?php
                $this->modal($viewActivity, $key)->modal_body($allActivities[$key])->modal_end();
                $this->modal($editActivity, $key)->modal_field('allServiceTypes', $allServiceTypes)->modal_body($allActivities[$key])->modal_end();
                $this->modal($deleteActivity, $key)->modal_field('centrecode', $value['centrecode'])->modal_body('Are you sure you want to proceed?')->modal_end();
            }
            ?>
    </tbody>
</table>

<?php else :
    echo '<div class="col-12 text-center">No Record(s) Found</div>';
endif; ?>