package PresentationLayer;

import DBAccess.UserMapper;
import Entity.Order;
import FunctionLayer.LoginSampleException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PerformOrder extends Command{

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
        UserMapper.PerformOrder(new Order(Integer.parseInt(session.getAttribute("height").toString()),Integer.parseInt(session.getAttribute("length").toString()),Integer.parseInt(session.getAttribute("width").toString()),1,Integer.parseInt(session.getAttribute("UserID").toString()),1));
        return "customerpage";
    }
    
}
