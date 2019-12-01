package cn.cslg.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class UploadAction {
	
	private String filename;
    private File upload;
    private String uploadFileName;//上传的文件名(上传的字段名+fileName)
    private String uploadContentType;//上传文件的MIME类型(上传的字段名+contentType)
    private String savePath;
	public UploadAction() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UploadAction(String filename, File upload, String uploadFileName, String uploadContentType,
			String savePath) {
		super();
		this.filename = filename;
		this.upload = upload;
		this.uploadFileName = uploadFileName;
		this.uploadContentType = uploadContentType;
		this.savePath = savePath;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getSavePath() {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	
	 public String execute()throws Exception{
	        FileOutputStream fos = new FileOutputStream(getSavePath());
	        System.out.println(uploadFileName);
	        FileInputStream fis = new FileInputStream(upload);
	        byte [] buffer = new byte[1024];
	        int len = 0;
	        while((len = fis.read(buffer)) > 0){
	            fos.write(buffer,0,len);
	        }
	        fos.close();
	        return "success";
	    }

    
}
