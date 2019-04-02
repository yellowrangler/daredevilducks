<?php

$filename = "file";
$target_dir = "../../img/avatars/";
$target_file = $target_dir . basename($_FILES[$filename]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
$msg = "ok";


// Check if image file is a actual image or fake image
// if(isset($_POST["submit"])) {
//     $check = getimagesize($_FILES[$filename]["tmp_name"]);
//     if($check !== false) {
//         echo "File is an image - " . $check["mime"] . ".";
//         $uploadOk = 1;
//     } else {
//         echo "File is not an image.";
//         $uploadOk = 0;
//     }
// }

// Check if file already exists
if (file_exists($target_file)) {
    // echo "File already exists.";
    // $uploadOk = 0;
}
// Check file size
if ($_FILES[$filename]["size"] > 500000) {
    // echo "Sorry, your file is too large.";
    $msg = "toolarge";
    $uploadOk = 0;
}

// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    // echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $msg = "notimg";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    // echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES[$filename]["tmp_name"], $target_file)) {
        // echo "The file ". basename( $_FILES[$filename]["name"]). " has been uploaded.";
        $msg = "ok";
    } else {
        // echo "Sorry, there was an error uploading your file.";
        print_r($_FILES);
        $msg = "Sorry, there was an error uploading your file.";
    }
}

exit($msg);
?>