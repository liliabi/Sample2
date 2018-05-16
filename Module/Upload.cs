using System;
using System.Collections.Generic;
using System.Web;
using System.Collections;
using System.Web.UI;
using System.Data;
using System.IO;
using System.Text;
using System.Drawing;
using System.Drawing.Imaging;
namespace paducncms.Module
{
    public class UpLoad
    {
        private string filePath; //上传目录名
        private readonly string fileType = string.Empty; //文件类型
        private readonly int fileSize; //文件大小0为不限制        
        private readonly int isWatermark; //0为不加水印，1为文字水印，2为图片水印
        private readonly int waterStatus; //水印位置
        private readonly int waterQuality; //水印图片质量
        private readonly string imgWaterPath; //水印图片地址
        private readonly int waterTransparency; //水印图片透时度
        private readonly string textWater; //水印文字
        private readonly string textWaterFont; //文字水印字体
        private readonly int textFontSize; //文字大小
        private Page _currentpage;

        private ArrayList arrRealFileExt = new ArrayList();

        public UpLoad(Page currentpage)
        {
            fileType = "";
            _currentpage = currentpage;
            arrRealFileExt.Add("jpg|255216");
            arrRealFileExt.Add("gif|7173");
            arrRealFileExt.Add("bmp|6677");
            arrRealFileExt.Add("png|13780");
            arrRealFileExt.Add("rar|8297");
            arrRealFileExt.Add("swf|6787");

            fileType = "tif|jpeg|jpg|gif|bmp|png|rar|swf|rm|rmvb|mpeg4|mov|mtv|dat|wmv|avi|3gp|amv|dmv|mp3|mp4";
            fileSize = 10240;
            isWatermark = 0;
            waterStatus = 0;
            waterQuality = 0;
            imgWaterPath = "";
            waterTransparency = 100;
            textWater = "";
            textWaterFont = "";
            textFontSize = 12;
            filePath = "../upfile/";

        }

        ///<summary>
        /// 文件上传方法
        /// </summary>
        public bool FileSaveAs(HttpPostedFile _PostedFile, int _isWater, out string filename)
        {
            try
            {
                string _fileExt = _PostedFile.FileName.Substring(_PostedFile.FileName.LastIndexOf(".") + 1);
                //验证合法的文件

                if (!CheckFileExt(this.fileType, _fileExt))
                {
                    Alert("不允许上传" + _fileExt + "类型的文件！");
                    filename = "";
                    return false;
                }
                if (this.fileSize > 0 && _PostedFile.ContentLength > fileSize * 1024)
                {
                    Alert("文件超过限制的大小啦！");
                    filename = "";
                    return false;
                }
                //if (CheckFileExt("BMP|JPEG|JPG|GIF|PNG|TIFF", _fileExt))
                //{
                //    //    if (!IsAllowedExtension(_PostedFile.FileName))
                //    //    {
                //    //        Alert("文件类型不真实！");
                //    //        filename = "";
                //    //        return false;
                //    //    }
                //}

                string _fileName = DateTime.Now.ToString("yyyyMMddHHmmssff") + "." + _fileExt; //随机文件名


                //检查保存的路径 是否有/开头结尾                
                if (this.filePath.EndsWith("/") == false) this.filePath = this.filePath + "/";
                //获得要保存的文件路径
                string serverFileName = this.filePath + _fileName;

                //物理完整路径     
                if (this.filePath.Equals(""))
                {
                    Alert("上传路径不能为空,请检查配置！");
                    filename = "";
                    return false;
                }
                string toFileFullPath = HttpContext.Current.Server.MapPath(this.filePath);

                //检查是否有该路径没有就创建
                if (!Directory.Exists(toFileFullPath))
                {
                    Directory.CreateDirectory(toFileFullPath);
                }
                //将要保存的完整文件名                
                string toFile = toFileFullPath + _fileName;
                //保存文件
                _PostedFile.SaveAs(toFile);
                //MarkWater(toFile, HttpContext.Current.Server.MapPath("../images/sy.png"));                

                //if (CheckFileExt("BMP|JPEG|JPG|GIF|PNG|TIFF", _fileExt))
                //{
                //    //if (!CheckPictureSafe(this.filePath + _fileName))
                //    //{
                //        Alert("图片含有非法语句，可能已经被感染！");
                //        filename = "";
                //        return false;
                //    //}
                //}

                filename = _fileName;
                return true;

            }
            catch (Exception ex)
            {
                Alert("上传过程中发生意外错误:" + ex.Message);
                filename = "";
                return false;
            }
        }

        /// <summary>
        /// 检查是否为合法的上传文件
        /// </summary>
        /// <returns></returns>
        private bool CheckFileExt(string _fileType, string _fileExt)
        {
            string[] allowExt = _fileType.Split('|');
            for (int i = 0; i < allowExt.Length; i++)
            {
                if (allowExt[i].ToLower() == _fileExt.ToLower()) { return true; }
            }
            return false;
        }

        private bool CheckPictureSafe(string strPictureFilePath)
        {
            bool strReturn = true;
            if (!File.Exists(strPictureFilePath))
            {
                StringBuilder str_Temp = new StringBuilder();
                try
                {
                    using (StreamReader sr = new StreamReader(HttpContext.Current.Server.MapPath(strPictureFilePath)))    //按文本文件方式读取图片内容
                    {
                        String line;
                        while ((line = sr.ReadLine()) != null)
                        {
                            str_Temp.Append(line + ",");
                        }
                        //检测是否包含危险字符串
                        if (str_Temp != null)
                        {
                            str_Temp = str_Temp.Replace("'", "''");
                            string DangerString = "script|iframe|.getfolder|.createfolder|.deletefolder|.createdirectory|.deletedirectory|.saveas|wscript.shell|script.encode|server.|.createobject|execute|activexobject|language=|include|filesystemobject|shell.application";
                            string[] sArray = DangerString.Split('|');
                            foreach (string i in sArray)
                            {
                                if (str_Temp.ToString().Contains(i))
                                {
                                    strReturn = false;
                                    break;
                                }
                            }
                        }
                        sr.Close();
                    }
                    if (!strReturn)
                    {
                        File.Delete(HttpContext.Current.Server.MapPath(strPictureFilePath));
                    }
                }
                catch
                {
                    strReturn = false;
                }
            }
            return strReturn;
        }
        //真正判断文件类型的关键函数
        public bool IsAllowedExtension(string filename)
        {
            System.IO.FileStream fs = new System.IO.FileStream(filename, System.IO.FileMode.Open, System.IO.FileAccess.Read);
            System.IO.BinaryReader r = new System.IO.BinaryReader(fs);
            string fileclass = "";
            byte buffer;
            try
            {
                buffer = r.ReadByte();
                fileclass = buffer.ToString();
                buffer = r.ReadByte();
                fileclass += buffer.ToString();
            }
            catch
            { }
            r.Close();
            fs.Close();

            string fext = filename.Substring(filename.LastIndexOf(".") + 1).ToLower();
            if (arrRealFileExt.Contains(fext + "|" + fileclass)) return true;
            return false;

        }

        public void MarkWater(string filePath, string waterFile)
        {
            //GIF不水印 
            int i = filePath.LastIndexOf(".");
            string ex = filePath.Substring(i, filePath.Length - i);
            if (string.Compare(ex, ".gif", true) == 0)
            {
                return;
            }

            string ModifyImagePath = filePath;//修改的图像路径 
            int lucencyPercent = 70;
            Image modifyImage = null;
            Image drawedImage = null;
            Graphics g = null;
            try
            {
                //建立图形对象 
                modifyImage = Image.FromFile(ModifyImagePath, true);
                drawedImage = Image.FromFile( waterFile, true);
                g = Graphics.FromImage(modifyImage);
                //获取要绘制图形坐标 
                int x = modifyImage.Width - drawedImage.Width;
                int y = modifyImage.Height - drawedImage.Height;
                //设置颜色矩阵 
                float[][] matrixItems ={ 
            new float[] {1, 0, 0, 0, 0}, 
            new float[] {0, 1, 0, 0, 0}, 
            new float[] {0, 0, 1, 0, 0}, 
            new float[] {0, 0, 0, (float)lucencyPercent/100f, 0}, 
            new float[] {0, 0, 0, 0, 1}};

                ColorMatrix colorMatrix = new ColorMatrix(matrixItems);
                ImageAttributes imgAttr = new ImageAttributes();
                imgAttr.SetColorMatrix(colorMatrix, ColorMatrixFlag.Default, ColorAdjustType.Bitmap);
                //绘制阴影图像 
                g.DrawImage(drawedImage, new Rectangle(x, y, drawedImage.Width, drawedImage.Height), 10, 10, drawedImage.Width, drawedImage.Height, GraphicsUnit.Pixel, imgAttr);
                //保存文件 
                string[] allowImageType = { ".jpg", ".gif", ".png", ".bmp", ".tiff", ".wmf", ".ico" };
                FileInfo fi = new FileInfo(ModifyImagePath);
                ImageFormat imageType = ImageFormat.Gif;
                switch (fi.Extension.ToLower())
                {
                    case ".jpg": imageType = ImageFormat.Jpeg; break;
                    case ".gif": imageType = ImageFormat.Gif; break;
                    case ".png": imageType = ImageFormat.Png; break;
                    case ".bmp": imageType = ImageFormat.Bmp; break;
                    case ".tif": imageType = ImageFormat.Tiff; break;
                    case ".wmf": imageType = ImageFormat.Wmf; break;
                    case ".ico": imageType = ImageFormat.Icon; break;
                    default: break;
                }
                MemoryStream ms = new MemoryStream();
                modifyImage.Save(ms, imageType);
                byte[] imgData = ms.ToArray();
                modifyImage.Dispose();
                drawedImage.Dispose();
                g.Dispose();
                FileStream fs = null;
                File.Delete(ModifyImagePath);
                fs = new FileStream(ModifyImagePath, FileMode.Create, FileAccess.Write);
                if (fs != null)
                {
                    fs.Write(imgData, 0, imgData.Length);
                    fs.Close();
                }
            }
            finally
            {
                try
                {
                    drawedImage.Dispose();
                    modifyImage.Dispose();
                    g.Dispose();
                }
                catch
                {
                }
            }
        } 
        private void Alert(string msg)
        {
            _currentpage.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script language=\"javascript\">alert('" + msg + "');</script>");
        }
        private void Alert(string msg, string returnurl)
        {
            _currentpage.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script language=\"javascript\">alert('" + msg + "');window.location.href='" + returnurl + "';</script>");
        }

    }
    class ImageThumbnailMake
    {
        /// <summary>
        /// 生成缩略图
        /// </summary>
        /// <param name="originalImagePath">源图路径（相对路径）</param>
        /// <param name="thumbnailPath">缩略图路径（相对路径）</param>
        /// <param name="width">缩略图宽度</param>
        /// <param name="height">缩略图高度</param>
        /// <param name="mode">生成缩略图的方式</param>    
        private static void MakeThumbnail(string originalImagePath, string thumbnailPath, int width, int height, string mode)
        {
            System.Drawing.Image originalImage = System.Drawing.Image.FromFile(HttpContext.Current.Server.MapPath(originalImagePath));
            int towidth = width;
            int toheight = height;

            int x = 0;
            int y = 0;
            int ow = originalImage.Width;
            int oh = originalImage.Height;

            switch (mode)
            {
                case "HW"://指定高宽缩放（可能变形）                
                    break;
                case "W"://指定宽，高按比例                    
                    toheight = originalImage.Height * width / originalImage.Width;
                    break;
                case "H"://指定高，宽按比例
                    towidth = originalImage.Width * height / originalImage.Height;
                    break;
                case "Cut"://指定高宽裁减（不变形）                
                    if ((double)originalImage.Width / (double)originalImage.Height > (double)towidth / (double)toheight)
                    {
                        oh = originalImage.Height;
                        ow = originalImage.Height * towidth / toheight;
                        y = 0;
                        x = (originalImage.Width - ow) / 2;
                    }
                    else
                    {
                        ow = originalImage.Width;
                        oh = originalImage.Width * height / towidth;
                        x = 0;
                        y = (originalImage.Height - oh) / 2;
                    }
                    break;
                default:
                    break;
            }

            //新建一个bmp图片
            System.Drawing.Image bitmap = new System.Drawing.Bitmap(towidth, toheight);
            //新建一个画板
            System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap);
            //设置高质量插值法
            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
            //设置高质量,低速度呈现平滑程度
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            //清空画布并以透明背景色填充
            g.Clear(System.Drawing.Color.Transparent);
            //在指定位置并且按指定大小绘制原图片的指定部分
            g.DrawImage(originalImage, new System.Drawing.Rectangle(0, 0, towidth, toheight),
                new System.Drawing.Rectangle(x, y, ow, oh),
                System.Drawing.GraphicsUnit.Pixel);

            try
            {
                //保存缩略图
                bitmap.Save(HttpContext.Current.Server.MapPath(thumbnailPath));
            }
            catch (System.Exception e)
            {
                throw e;
            }
            finally
            {
                originalImage.Dispose();
                bitmap.Dispose();
                g.Dispose();
            }
        }
    }
}