package actions;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ActionAcceptImage extends ActionSupport {

	File dest;
	private File abc;
	private String abcFileName, abcContentType, serverFolder;

	boolean sts;

	public File getAbc() {
		return abc;
	}

	public void setAbc(File abc) {
		this.abc = abc;
	}

	public String getAbcFileName() {
		return abcFileName;
	}

	public void setAbcFileName(String abcFileName) {
		this.abcFileName = abcFileName;
	}

	public String getAbcContentType() {
		return abcContentType;
	}

	public void setAbcContentType(String abcContentType) {
		this.abcContentType = abcContentType;
	}

	public String getServerFolder() {
		return serverFolder;
	}

	public void setServerFolder(String serverFolder) {
		this.serverFolder = serverFolder;
	}

	@Override
	public String execute() throws Exception {
		// location of uploaded file content
		String path = "G:/c-dac/java/practice/J2EE(practice)/1Farmer/WebContent/images";
		System.out.println(path);
		System.out.println("upladed in " + path);
		dest = new File(path, abcFileName);
		System.out.println(dest.getAbsolutePath());
		sts = abc.renameTo(dest);
		
		SessionMap session = (SessionMap) ActionContext.getContext().get(ActionContext.SESSION);
		session.put("imageName","../images/"+dest.getName());
		if (sts)
			return SUCCESS;
		return SUCCESS;
		
	}
}
