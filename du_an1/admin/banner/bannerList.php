<?php require "./header.php" ?>
<div class="main-header">
  <div class="d-flex">
    <div class="mobile-toggle" id="mobile-toggle">
      <i class="bx bx-menu"></i>
    </div>
  </div>
  <div class="dropdown d-inline-block mt-12">
    <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <img class="rounded-circle header-profile-user" src="../..<?= $ROOT_URL . $SRC_URL . $ADMIN_URL ?>/images/avatar/avt-1.png" alt="Header Avatar" />
      <span class="pulse-css"></span>
      <span class="info d-xl-inline-block color-span">
        <span class="d-block fs-20 font-w600"></span>
        <span class="d-block mt-7"></span>
      </span>
      <i class="bx bx-chevron-down"></i>
    </button>
    <div class="dropdown-menu dropdown-menu-end">
      <a class="dropdown-item" href="#"><i class="bx bx-user font-size-16 align-middle me-1"></i>
        <span>Profile</span></a>
      <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i>
        <span>My Wallet</span></a>
      <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i>
        <span>Settings</span></a>
      <a class="dropdown-item" href="#"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i>
        <span>Lock screen</span></a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item text-danger" href="../index.php"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i>
        <span>Logout</span></a>
    </div>
  </div>
</div>
<div class="dropdown d-inline-block mt-12">
  <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <img class="rounded-circle header-profile-user" src="../..<?= $ROOT_URL . $SRC_URL . $ADMIN_URL ?>/images/avatar/avt-1.png" alt="Header Avatar" />
    <span class="pulse-css"></span>
    <span class="info d-xl-inline-block color-span">
      <span class="d-block fs-20 font-w600"></span>
      <span class="d-block mt-7"></span>
    </span>
    <i class="bx bx-chevron-down"></i>
  </button>
  <div class="dropdown-menu dropdown-menu-end">
    <a class="dropdown-item" href="#"><i class="bx bx-user font-size-16 align-middle me-1"></i>
      <span>Profile</span></a>
    <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i>
      <span>My Wallet</span></a>
    <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i>
      <span>Settings</span></a>
    <a class="dropdown-item" href="#"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i>
      <span>Lock screen</span></a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item text-danger" href="../index.php"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i>
      <span>Logout</span></a>
  </div>
</div>
</div>

<!--   Phần content -->

<!--   Phần content -->
<!--   Phần content -->
<div class="main">
  <div class="main-content dashboard">
    <a href="./index.php?act=add_banner" class="mb-4">
      <button class="btn btn-primary">Thêm</button>
    </a>
    <span class="<?= isset($_COOKIE['notification']) ? "noti-success" : "" ?> ">
      <?= $notification = isset($_COOKIE['notification']) ? $_COOKIE['notification'] : ""; ?>
    </span>
    <form action="./index.php" method="post">
      <table class="table table-bordered table-hover">
        <thead>
          <th></th>
          <th>Mã loại</th>
          <th>Tên banner</th>
          <th>Ảnh banner</th>

          <th>Sửa</th>
          <th>Xóa</th>

        </thead>
        <tbody>
          <?php $banner_result = selectAll_banner(false); ?>
          <?php foreach ($banner_result as $value) : ?>
            <tr>
              <th></th>
              <td><?= $value['banner_id']; ?></td>
              <td><?= $value['banner_name']; ?></td>
              <td><img src="../..<?= $ROOT_URL ?><?= $value['banner_image'] ?>" width="100px" alt=""></td>
              <td>
                <a href="./index.php?act=update_banner&banner_id=<?= $value['banner_id']; ?>"><input class="btn btn-success" type="button" name="sua" value="Sửa" /></a>
              </td>
              <td>
                <a onclick="return confirm(' Bạn có chắc chắn muốn xóa sản phẩm này')" href="./index.php?act=delete_banner&banner_id=<?= $value['banner_id']; ?>"><input class="btn btn-danger" type="button" name="delete" value="Xóa" /></a>
              </td>
            </tr>
          <?php endforeach ?>
        </tbody>
      </table>
    </form>
  </div>
</div>


<?php require_once "./footer.php" ?>