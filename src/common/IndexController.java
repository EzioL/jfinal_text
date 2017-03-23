package common;

import com.jfinal.core.Controller;

/**
 * Created by Ezio on 2017/3/22.
 */
public class IndexController extends Controller {

    public void index() {
        renderText("Index");

    }

    public void insert() {
        String name = getPara("name");
        System.out.println("name:" + name);
        renderText(name);
    }

}
