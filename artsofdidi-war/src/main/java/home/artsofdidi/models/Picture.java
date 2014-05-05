package home.artsofdidi.models;

public class Picture {

    private Integer id;
    private String title;
    private String description;
    private String path;
    private String tag;

    
    public Picture(Integer id, String title, String description, String path, String tag) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.path = path;
        this.tag = tag;
    }

    public Integer getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getPath() {
        return path;
    }
    
    public String getTag() {
        return tag;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPath(String path) {
        this.path = path;
    }
    
    public void setTag(String tag) {
        this.tag = tag;
    }

}
