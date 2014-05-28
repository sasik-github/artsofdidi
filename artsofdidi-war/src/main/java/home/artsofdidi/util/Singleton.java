/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package home.artsofdidi.util;

import home.artsofdidi.models.Picture;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sasik
 */
public class Singleton {
    
    private static volatile Singleton INSTANCE;
    private static Integer count;
    private static PictureRepository repository;
    
    private Singleton() {
        count = 0;
        repository = new PictureRepository();
    }
    
    public static Singleton getInstance() {
        if (INSTANCE == null) { 
            synchronized(Singleton.class) {
                if (INSTANCE == null) {
                    INSTANCE = new Singleton();
                }
            }
        }
        return INSTANCE;
    }
    
    public Integer getCount() {
        count = count + 1;
        return count;
    }
    
    public PictureRepository getPictureRepository() {
        return repository;
    }
    
    public void addPictureToPictureRepository(Picture pic) {
        repository.addPicture(pic);
    }
    
    
    public class PictureRepository {

        private final List<Picture> picutreList;

        public PictureRepository() {
            picutreList = new ArrayList<Picture>();

            picutreList.add(new Picture(1, "Художник %)", "", "http://cs425423.vk.me/v425423529/6fdf/3vO6HgkZBhA.jpg", "logo"));
//            picutreList.add(new Picture(2, "This is Picture", "", "http://cs306409.vk.me/v306409859/ae99/q6INLVKR68c.jpg", "web"));
//            picutreList.add(new Picture(3, "This is Picture", "", "http://cs310523.vk.me/v310523859/14aa/O8r7j5lSs8U.jpg", "web"));
            picutreList.add(new Picture(4, "This is Picture", "", "http://cs618016.vk.me/v618016529/3ca5/6IWuDZm2mt0.jpg", "print"));
            picutreList.add(new Picture(5, "Натюрморт", "", "http://cs617217.vk.me/v617217529/b5b1/l1dcZh0aVaY.jpg", "print"));
            picutreList.add(new Picture(6, "Стилизованный натюрморт", "", "http://cs617217.vk.me/v617217529/b5bb/DIlbWC28oyQ.jpg", "print"));
        }

        public List getPictureList() {
            return picutreList;
        }
        
        public void addPicture(Picture pic) {
            picutreList.add(pic);
        }
    }
    
}
