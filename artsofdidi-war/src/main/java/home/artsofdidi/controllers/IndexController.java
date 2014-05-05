package home.artsofdidi.controllers;

import home.artsofdidi.models.Picture;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexController extends HttpServlet {
    private PictureRepository repository;

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        repository = new PictureRepository();
        req.setAttribute("items", repository.getPictureList());
        req.getRequestDispatcher("jsp/index.jsp").forward(req, resp);

    }

    public class PictureRepository {

        private final List<Picture> picutreList;

        public PictureRepository() {
            picutreList = new ArrayList<Picture>();

            picutreList.add(new Picture(1, "Художник %)", "", "http://cs425423.vk.me/v425423529/6fdf/3vO6HgkZBhA.jpg", "logo"));
//            picutreList.add(new Picture(2, "This is Picture", "", "http://cs306409.vk.me/v306409859/ae99/q6INLVKR68c.jpg", "web"));
//            picutreList.add(new Picture(3, "This is Picture", "", "http://cs310523.vk.me/v310523859/14aa/O8r7j5lSs8U.jpg", "web"));
            picutreList.add(new Picture(4, "This is Picture", "", "http://cs618016.vk.me/v618016529/3ca5/6IWuDZm2mt0.jpg", "print"));
        }

        public List getPictureList() {
            return picutreList;
        }
    }
}
