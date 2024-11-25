package fileupload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

public class FileUtil {
	public static String uploadFile(HttpServletRequest req, String sDirectory) throws ServletException, IOException {
		Part part = req.getPart("attachedFile");
		String partHeader = part.getHeader("content-disposition");
		String[] phArr = partHeader.split("filename=");
		String originalFileName = phArr[1].trim().replace("\"", "");

		if (!originalFileName.isEmpty()) {
			part.write(sDirectory + File.separator + originalFileName);
		}

		return originalFileName;
	}

	public static ArrayList<String> multipleFIle(HttpServletRequest req, String sDirectory)
			throws ServletException, IOException {
		ArrayList<String> listFileName = new ArrayList<>();
		Collection<Part> parts = req.getParts();

		for (Part part : parts) {
			if (!part.getName().equals("attachedFile")) {
				continue;
			}

			String partHeader = part.getHeader("content-disposition");
			String[] phArr = partHeader.split("filename=");
			String originalFileName = phArr[1].trim().replace("\"", "");

			if (!originalFileName.isEmpty()) {
				part.write(sDirectory + File.separator + originalFileName);
			}

			listFileName.add(originalFileName);
		}

		return listFileName;
	}

	public static String renameFile(String sDirectory, String fileName) {
		String ext = fileName.substring(fileName.lastIndexOf("."));
		String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
		String newFileName = now + ext;
		File oldFile = new File(sDirectory + File.separator + fileName);
		File newFile = new File(sDirectory + File.separator + newFileName);
		oldFile.renameTo(newFile);
		return newFileName;
	}

	public static void download(HttpServletRequest req, HttpServletResponse resp, String directory, String sfileName,
			String ofileName) {
		System.out.println(req.getServletContext());
		String sDirectory = req.getServletContext().getRealPath(directory);
		System.out.println(sDirectory);
		try {
			File file = new File(sDirectory, sfileName);
			InputStream iStream = new FileInputStream(file);

			String client = req.getHeader("User-Agent");
			System.out.println(client);
			if (client.indexOf("WOW64") == -1) {
				ofileName = new String(ofileName.getBytes("UTF-8"), "ISO-8859-1");
			} else {
				ofileName = new String(ofileName.getBytes("KSC5601"), "ISO-8859-1");
			}

			resp.reset();
			resp.setContentType("application/octet-stearm");
			resp.setHeader("Content-Disposition", "attachment; filename=\"" + ofileName + "\"");
			resp.setHeader("Content-Length", "" + file.length());

			OutputStream oStream = resp.getOutputStream();

			byte b[] = new byte[(int) file.length()];
			int readBuffer = 0;
			while ((readBuffer = iStream.read(b)) > 0) {
				oStream.write(b, 0, readBuffer);
			}

			iStream.close();
			oStream.close();
		} catch (FileNotFoundException e) {
			System.out.println("FileNotFoundException : download");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("Exception : download");
			e.printStackTrace();
		}
	}
}