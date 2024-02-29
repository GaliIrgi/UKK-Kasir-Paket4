<div class="row well">
        <div class="col-md-4">
            <div class="card well">
                <div class="card-header">
                    	
              <form action="" class="form-signin" method="post" enctype="multipart/form-data"> 
              <h3 class="">Tambah User</h3>
                <div class="card-body">
                  <form action="" method="post">
                  <div class="mb-3 mt-3">
                      <label for="nama" class="form-label">Nama:</label>
                      <input type="text" class="form-control" id="nama" placeholder="Enter Name" name="username">
                    <div class="mb-3">
                      <label for="pwd" class="form-label">Password:</label>
                      <input type="password" name="password" class="form-control" id="pwd" placeholder="Enter Password" name="password">
                    <div class="mb-3 ">
                      <label for="level" class="form-label">Level:<span style="color: red;">*</span></label>
                        <select class="form-control" name="level" id="level">
                        <option value="">Pilih Level</option>
                        <option value="petugas">petugas</option>
                        <option value="admin">admin</option>
                        </select>
                    </div>
                        <button type="Submit" name="submit" class="btn btn-primary">Tambah</button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
include_once("../conn/koneksi.php");

if (isset($_POST['submit'])) {
    $name = mysqli_real_escape_string($koneksi, $_POST['username']);
    $password = md5 ($_POST ['password']);
    $level = mysqli_real_escape_string($koneksi, $_POST['level']);

    $result = mysqli_query($koneksi, "INSERT INTO user (username, password, level) VALUES ('$name', '$password', '$level')");

    if($result) {
        echo "User added successfully. <a href='index.php?page=user'>View Users</a>";
        echo "<script>alert('Berhasil menambahkan data')</script>";
    } else {
        echo "Erorr: " . mysqli_error($koneksi);
    }
}
?>