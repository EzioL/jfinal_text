package common;

import com.jfinal.core.Controller;
import com.jfinal.core.JFinal;

/**
 * Created by Ezio on 2017/3/22.
 */
public class HelloController extends Controller {
    public void index(){
        renderText("Hello");
    }

    public void init() {
        renderText("init");
    }

    @Override
    public String getPara(String name) {
        return super.getPara(name);
    }
}
