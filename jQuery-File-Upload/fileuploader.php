<?php
$sBaseUrl = "http://" . $_SERVER['SERVER_NAME'] . "/task/jQuery-File-Upload/";
$doc_root = $_SERVER['DOCUMENT_ROOT'] . "/task/jQuery-File-Upload/resizedimages/";

require 'vendor/autoload.php';
require 'DB.php';

use Intervention\Image\ImageManagerStatic as Image;

Image::configure(array('driver' => 'GD'));

$total = count($_FILES['files']['name']);

$i=0;
//for( $i=0 ; $i < $total ; $i++ ) {
  $tmpFilePath = $_FILES['files']['tmp_name'][$i];
  $uploaded_filename=$_FILES['files']['name'][$i];
  $uploaded_fileextension=strtolower(substr($uploaded_filename, strpos($uploaded_filename, '.')+1));
  $uniquefilename=time().uniqid(rand());
  if ($tmpFilePath != ""){
  		$image1 = Image::make($tmpFilePath)->resize(300, 300);
      $s1=$doc_root.$uniquefilename."_300x300.".$uploaded_fileextension;
  		$image1->save($s1);
  		$image2 = Image::make($tmpFilePath)->resize(200, 200);
      $s2=$doc_root.$uniquefilename."_200x200.".$uploaded_fileextension;
  		$image2->save($s2);
      $s3=$doc_root.$uniquefilename."_original.".$uploaded_fileextension;
      $img = Image::make($tmpFilePath);
      $img->save($s3);

      $filename=$uniquefilename."_original.".$uploaded_fileextension;

      $conn= new DB(); 
      $result=$conn->store($filename);

      $filename=$uniquefilename."_200x200.".$uploaded_fileextension;
     
      $success = new stdClass();
      $success->name = $filename;
      $success->size = $_FILES['files']['size'][$i];
      $success->url = $filename;
      $success->thumbnailUrl =  $sBaseUrl."resizedimages/".$filename;
      $success->result=$result;

      header('Content-Type: application/json');
      echo json_encode(['files'=>[$success]]);
  }
//}


?>