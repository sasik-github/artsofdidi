/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package home.artsofdidi.util;

/**
 *
 * @author sasik
 */
public class Singleton {
//    private static final Singleton INSTANCE = new Singleton();
    private static volatile Singleton INSTANCE;
    private static Integer count;
    
    private Singleton() {
        count = 0;
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
    
}
