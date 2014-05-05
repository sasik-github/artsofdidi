package home.artsofdidi.controllers;

import home.artsofdidi.models.Picture;
import home.artsofdidi.util.Singleton;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexController extends HttpServlet {
    private static final List pictureList = Singleton.getInstance().getPictureRepository().getPictureList();

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        req.setAttribute("items", pictureList);
        req.setAttribute("counts", Singleton.getInstance().getCount());
        req.getRequestDispatcher("jsp/index.jsp").forward(req, resp);

    }
}
