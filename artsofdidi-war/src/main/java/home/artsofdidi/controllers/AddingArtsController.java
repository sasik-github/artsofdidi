/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package home.artsofdidi.controllers;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import home.artsofdidi.models.Picture;
import home.artsofdidi.util.Singleton;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author sasik
 */
public class AddingArtsController extends HttpServlet{
    
    private final BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Map<String, List<BlobKey>> files_sent = BlobstoreServiceFactory.getBlobstoreService().getUploads(req);
            BlobKey file_uploaded_key = files_sent.get("file").get(0);
            resp.sendRedirect("/add?blob_key" + file_uploaded_key.getKeyString());
        }
        catch (Exception e) {
            resp.sendRedirect("jsp/addingarts.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String blob_key_string = req.getParameter("blob_key");
        System.out.println("\t\tBLOBKEY: " + blob_key_string);
        if (blob_key_string == null) {
            resp.sendRedirect("/jsp/addingarts.jsp");
        } else {
            BlobKey blob_key = new BlobKey(blob_key_string);
            BlobstoreServiceFactory.getBlobstoreService().serve(blob_key, resp);
        } 
            
//        req.getRequestDispatcher("jsp/addingarts.jsp").forward(req, resp);
    }
    
}
