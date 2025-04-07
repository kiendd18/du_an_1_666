<?php require "./header.php" ?>
<div class="main-header">
    <div class="d-flex">
        <div class="mobile-toggle" id="mobile-toggle">
            <i class='bx bx-menu'></i>
        </div>
        
    </div>
        <div class="dropdown d-inline-block mt-12">
            <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                <img class="rounded-circle header-profile-user"  src="../src/admin/images/avatar/avt-1.png" alt="Header Avatar">
                <span class="pulse-css"></span>
                <span class="info d-xl-inline-block  color-span">
                    
                    <span class="d-block fs-20 font-w600"></span>
                    <span class="d-block mt-7"></span>
                </span>
                <i class='bx bx-chevron-down'></i>
            </button>
            <div class="dropdown-menu dropdown-menu-end">
                <a class="dropdown-item" href="#"><i class="bx bx-user font-size-16 align-middle me-1"></i>
                    <span>Profile</span></a>
                <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i>
                    <span>My Wallet</span></a>
                <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i> <span>Settings</span></a>
                <a class="dropdown-item" href="#"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i>
                    <span>Lock screen</span></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-danger" href="../index.php"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i>
                    <span>Logout</span></a>
            </div>
        </div>
    </div>
</div>


<div class="main">
    <div class="main-content dashboard">
        <form action="./index.php?act=listbl" method="post">
            <table class=" table">
                <tr class="table-primary">
                    <th>ID BÌNH LUẬN</th>
                    <th>TÊN ĐĂNG NHẬP</th>
                    <th>MỘI DUNG</th>
                    <th>MÃ SẢN PHẨM</th>
                    <th>NGÀY BÌNH LUẬN</th>
                    <th></th>
                </tr>
                <?php $comment_result = loadall_comment(false); ?>
                <?php foreach ($comment_result as $value) : ?>
                    <?php $username_comment_result = getUserName($value['id']); 
                        extract($username_comment_result);
                    ?>
                    <tr class="table-success">
                    <td><?= $value['comment_id']; ?></td>
                    <td><?= $username; ?></td>
                    <td><?= $value['content']; ?></td>
                    <td><?= $value['product_id']; ?></td>
                    <td><?= $value['comment_time']; ?></td>
                    <td>
                        <a onclick="return confirm(' Bạn có chắc chắn muốn xóa sản phẩm này')" href="./index.php?act=delete_comment&comment_id=<?= $value['comment_id']; ?>"><input class="btn btn-danger" type="button" name="delete" value="Xóa" /></a>
                    </td>
                    </tr>
                <?php endforeach ?>

            </table>
        </form>
    </div>
</div>
<?php require_once "./footer.php" ?> 