<?php
namespace think;

class Verify {
 private $mCheckCodeNum  = 4;//验证码位数
private $mCheckCode   = '';//产生的验证码
private $mCheckImage  = '';//验证码的图片
private $mDisturbColor  = '';//干扰像素
private $mCheckImageWidth = '80';//验证码的图片宽度
private $mCheckImageHeight  = '20';//验证码的图片宽度
/*@brief   输出头*/
private function OutFileHeader()
{
  header ("Content-type: image/png");
}
/*产生验证码*/
private function CreateCheckCode()
{
  $this->mCheckCode = strtoupper(substr(md5(rand()),0,$this->mCheckCodeNum));
   return $this->mCheckCode;
}
//@brief 产生验证码图片
private function CreateImage()
{
  $this->mCheckImage = @imagecreate ($this->mCheckImageWidth,$this->mCheckImageHeight);
  imagecolorallocate ($this->mCheckImage, 200, 200, 200);
   return $this->mCheckImage;
}
//@brief 设置图片的干扰像素
private function SetDisturbColor()
{
   for ($i=0;$i<=128;$i++)
   {
   $this->mDisturbColor = imagecolorallocate ($this->mCheckImage, rand(0,255), rand(0,255), rand(0,255));
   imagesetpixel($this->mCheckImage,rand(2,128),rand(2,38),$this->mDisturbColor);
   }
}
  
/**
* @brief   设置验证码图片的大小
* @param   $width   宽
* @param   $height 高
*/
public function SetCheckImageWH($width,$height)
{
   if($width==''||$height=='')return false;
  $this->mCheckImageWidth  = $width;
  $this->mCheckImageHeight = $height;
   return true;
}
//@brief 在验证码图片上逐个画上验证码
private function WriteCheckCodeToImage()
{
   for ($i=0;$i<=$this->mCheckCodeNum;$i++)
   {
   $bg_color = imagecolorallocate ($this->mCheckImage, rand(0,255), rand(0,128), rand(0,255));
   $x = floor($this->mCheckImageWidth/$this->mCheckCodeNum)*$i;
   $y = rand(0,$this->mCheckImageHeight-15);
   imagechar ($this->mCheckImage, 5, $x, $y, $this->mCheckCode[$i], $bg_color);
   }
}
//@brief   输出验证码图片
public function OutCheckImage()
{
  $this ->OutFileHeader();
  $this ->CreateCheckCode();
  $this ->CreateImage();
  $this ->SetDisturbColor();
  $this ->WriteCheckCodeToImage();
  imagepng($this->mCheckImage);
  imagedestroy($this->mCheckImage);
}

}
