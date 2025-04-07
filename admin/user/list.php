<?php require "./header.php" ?>

<!--   Phần content -->

<!--   Phần content -->
<!--   Phần content -->
<div class="main">
    <div class="main-content dashboard">
        <form action="./index.php?act=listtaikhoan" method="post">
            <table class="table table-bordered table-hover">
                <thead>
                    <th>Họ và tên</th>
                    <th>Tên đăng nhập</th>
                    <th>Mật khẩu</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Số điện thoại</th>
                    <th>Vai trò</th>
                    <th></th>
                </thead>
                <tbody>
                    <?php foreach ($listtaikhoan as $tk) :
                        extract($tk);
                        $xoatk = "index.php?act=xoatk&id=" . $id;
                        $suatk = "index.php?act=suatk&id=" . $id;
                    ?>
                        <tr>
                            <td><?= $full_name ?></td>
                            <td><?= $username ?></td>
                            <td><?= $password ?></td>
                            <td><?= $email ?></td>
                            <td><?= $address ?></td>
                            <td><?= $phone ?></td>
                            <td><?php if ($role == 1) {
                                    echo "quản trị viên";
                                } else {
                                    echo "người dùng";
                                } ?></td>
                            <td>
                                <a href="<?= $suatk ?>"><input class="btn btn-success" type="button" name="suatk" value="Sửa"></a>
                                <?php if ($_SESSION['username']['id'] != $id) : ?>
                                    <a href="<?= $xoatk ?>"><input class="btn btn-warning" type="button" value="Xóa"></a>
                                <?php endif ?>
                            </td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </form>
    </div>
</div>
<div class="overlay"></div>
<?php require "./footer.php" ?>