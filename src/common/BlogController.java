package common;

import com.jfinal.core.Controller;

import common.model.Blog;

/**
 * Created by Ezio on 2017/3/22.
 */
public class BlogController extends Controller {
    public void index() {
        render("blog.jsp");
    }

    public void save() {
        String title = getPara("blog.title");
        String content = getPara("blog.content");

        System.out.println(title + "  " + content);

        Blog blog = getModel(Blog.class);
        renderText(blog.getTitle() + "  " + blog.getContent());

    }

    public void delete() {
        Blog.dao.deleteById(1);
        renderText("删除成功");
    }

    public void find() {
        Blog blog = Blog.dao.findById(2);
        renderJson(blog);
    }

}
