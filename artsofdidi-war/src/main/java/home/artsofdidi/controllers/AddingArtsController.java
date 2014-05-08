/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package home.artsofdidi.controllers;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sasik
 */
public class AddingArtsController extends HttpServlet{
    
    private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("jsp/addingarts.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Map<String, BlobKey> blobs = blobstoreService.getUploadedBlobs(req);
        System.out.println("\t\tTEXT: " + req.getParameter("foo"));
        BlobKey blobKey = blobs.get("myFile");

        if (blobKey == null) {
            resp.sendRedirect("/");
        } else {
            resp.sendRedirect("/serve?blob-key=" + blobKey.getKeyString());
        }
    }
    
}
