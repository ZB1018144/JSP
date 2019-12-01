package cn.cslg.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport{
	    private InputStream inputStream;
	    private String fileName;
		public InputStream getInputStream() {
			return inputStream;
		}
		public void setInputStream(InputStream inputStream) {
			this.inputStream = inputStream;
		}
		public String getFileName() {
			return fileName;
		}
		public void setFileName(String fileName) {
			this.fileName = fileName;
		}
		public DownloadAction() {
			super();
			// TODO Auto-generated constructor stub
		}
		public DownloadAction(InputStream inputStream, String fileName) {
			super();
			this.inputStream = inputStream;
			this.fileName = fileName;
		}
		 public String execute() throws Exception {
		        this.fileName = "2.jpg";
		        String path = "/WEB-INF/2.jpg";
		        //把文件读入到InputStream流中
		        inputStream = new FileInputStream(new File(path));
		        return SUCCESS;
		    }
	    
}
