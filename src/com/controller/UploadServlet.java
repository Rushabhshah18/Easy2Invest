package com.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet extends HttpServlet {
	

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    	
    	HttpSession session=request.getSession();
    	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    	System.out.println("in upload Servlet");
        if (isMultipart) {
            // Create a factory for disk-based file items
            FileItemFactory factory = new DiskFileItemFactory();

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            try {
                // Parse the request
                List items = upload.parseRequest(request);
                Iterator iterator = items.iterator();
                while (iterator.hasNext()) 
                {
                    FileItem item = (FileItem) iterator.next();
                    if (!item.isFormField())
                    {

                        
                        String fileName = item.getName();    
                        /*String root = getServletContext().getRealPath("/")+ "/uploads";*/
                        
                        String root ="E:/silverwing workspace/Entreprenure/WebContent/uploads";
                        File path = new File(root);
                        if (!path.exists())
                        {
                            boolean status = path.mkdirs();
                        }
                        
                        File uploadedFile = new File(path + "/" + fileName);
                        System.out.println(uploadedFile.getAbsolutePath());
                        item.write(uploadedFile);
                        session.setAttribute("uploadedFile", uploadedFile);
                        response.sendRedirect(request.getContextPath()+"/webcontent/info/profile.jsp#panel_edit_account");
                        
                    }
                }
            } catch (FileUploadException e){
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
          }
        
    	
    }

}