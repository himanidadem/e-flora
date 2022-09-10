package servlet;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.Map;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.NotFoundException;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

import DAO.treesDAO;
import database.DBConnect;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;
import user.trees;

/**
 * Servlet implementation class QRgenerater
 */
@WebServlet("/QRgenerater")
public class QRgenerater extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QRgenerater() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("pid"));

		String data = "http://localhost:8081/Project/t1.jsp?pid=" + id;

		ByteArrayOutputStream out = QRCode.from(data).to(ImageType.PNG).withSize(550, 550).stream();

		treesDAO obj = new treesDAO(DBConnect.getconn());
		trees p = obj.getdatabyid(id);

		String fileName = id + "_" + p.getSname() + ".png";

		response.setContentType("application/octet-stream");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
		response.setContentLength(out.size());
		OutputStream outStream = response.getOutputStream();

		int i = 0;
		try {
			outStream.write(out.toByteArray());
			i = 1;
		} catch (Exception e) {
			System.out.println("something went wrong");
		}
		outStream.flush();
		outStream.close();

		/*
		 * HttpSession session; if(i==1) { session =request.getSession();
		 * System.out.println("QR Code Generated!!!");
		 * session.setAttribute("qr-success"," QR Code Generated for "+p.getSname()+" ("
		 * +p.getCname()+","+p.getVname()+") "); RequestDispatcher
		 * rd=request.getRequestDispatcher("admin_home.jsp"); rd.include(request,
		 * response); response.sendRedirect("admin_home.jsp");
		 * 
		 * } else { session =request.getSession();
		 * System.out.println(" QR not generated");
		 * session.setAttribute("qr-fail","Oops,Something went wrong on server");
		 * response.sendRedirect("admin_home.jsp"); }
		 */

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	// Driver code
	/*
	 * public static void main(String[] args) throws WriterException, IOException,
	 * NotFoundException {
	 * 
	 * // The data that the QR code will contain String data =
	 * "www.geeksforgeeks.org";
	 * 
	 * // The path where the image will get saved String path =
	 * "D:\\Tomcat\\QR.png";
	 * 
	 * // Encoding charset String charset = "UTF-8";
	 * 
	 * Map<EncodeHintType, ErrorCorrectionLevel> hashMap = new
	 * HashMap<EncodeHintType, ErrorCorrectionLevel>();
	 * 
	 * hashMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
	 * 
	 * // Create the QR code and save // in the specified folder // as a jpg file
	 * createQR(data, path, charset, hashMap, 200, 200);
	 * System.out.println("QR Code Generated!!! ");
	 * 
	 * }
	 */

}
