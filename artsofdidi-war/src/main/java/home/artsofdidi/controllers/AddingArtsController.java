/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package home.artsofdidi.controllers;

import home.artsofdidi.models.Picture;
import home.artsofdidi.util.Singleton;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sasik
 */
public class AddingArtsController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Singleton.getInstance().getPictureRepository().addPicture(new Picture( 555, "Added Picture", null, "http://cs411221.vk.me/v411221782/5130/czVKbAzAf88.jpg", "web"));
        super.doGet(req, resp); //To change body of generated methods, choose Tools | Templates.
    }
    
}
