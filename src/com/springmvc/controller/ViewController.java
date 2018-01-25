package com.springmvc.controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

@Controller
public class ViewController {
    
    @RequestMapping("/view")
    public ModelAndView view(HttpServletRequest request){
        String path = request.getParameter("path") + "";
        ModelAndView mav = new ModelAndView();
        
        String contextPath = request.getContextPath();
        mav.addObject("contextPath", contextPath);
        
        
        mav.setViewName(path);
        return mav;
    }
    
    
    @RequestMapping(value = "/login",produces = {"text/html;charset=UTF-8;"})
    @ResponseBody
    public String login() {
    	JSONObject jsonObject = new JSONObject();
    jsonObject.put("msg","ccc");
     return jsonObject.toString();
    }
    
    
    
}


