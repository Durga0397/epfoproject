/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.controller;


import com.app.dao.IUser;
import com.app.pojo.User;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author amolw
 */
@Controller
public class MyController {

    int userId ;
     //@Autowired
     //private DataSource dataSource;
   // public  IUser dao = new UserDaoImpl(dataSource);
    @Autowired
    private IUser dao;
//    private UserDaoImpl dao =new UserDaoImpl() ;
     @RequestMapping(value = "/try", method = RequestMethod.GET)
    public String getTry(User u) {
        //System.out.println("com");
        return "try";
    }
    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public String getScreen(User u) {
        //System.out.println("com");
        return "register";
    }
     @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLogin(User u) {
        //System.out.println("com");
        return "login";
    
    }
     @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String getLoginuSER(@RequestParam String name,@RequestParam String password,Model map) throws Exception{
           
        
        try{
     
           User u=dao.loginUser(name, password);
           map.addAttribute("User",u);
            System.out.println("####userid###");
            System.out.println(u.getId());
          System.out.println("**********in login **"+u);
           
              
           
           
             
            
        } catch (RuntimeException e) {
			//invalid login --forward clnt to login form
			//add err mesg in model map -- request scope
			map.addAttribute("mesg", "Invalid login , pls retry...");
			return "login";
		}
        map.addAttribute("mesg", "login successfull");
       return "update";
    }
   
    
    @RequestMapping(value = "/get", method = RequestMethod.POST)
    public String getRegister(@ModelAttribute("user")User u, RedirectAttributes flashMap,HttpSession hs) {
        System.out.println("controller " + u.getPAN());
        
     hs.setAttribute("user_dtls", u);
     try{
          // dao.registerNewUser(u);
          // dao.insertUser(u);
          dao.registerNewUser(u);
         System.out.println("success");
     }catch(Exception e)
             {
         e.printStackTrace();
     }
        return "login";
    }
//    
     @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String getAllUser(Model map) {
        try{
       //map.addAttribute("list", dao.getAllUser()); 
       map.addAttribute("list", dao.getUsersByProc()); 
           // System.out.println(dao.getUsersByProc());
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return "datatable11";
    }
    
 
@RequestMapping(value = "/update", method = RequestMethod.GET)
    public String getUpdate(User u) {
        //System.out.println("com");
        return "update";
    }
    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public String updateUser(@ModelAttribute("user")User u,Model map){
       
        //u.setId(this.userId);
        System.out.println("***********Inside update**************");
        
      try{
         dao.updateUser(u);
         map.addAttribute("mesg", "updated...");
         map.addAttribute("userDetails",u);
        // return "register";
     }catch(Exception e)
             {
         e.printStackTrace();
     }
    return "screen";

    }


    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteUser(@RequestParam int userId){
        try{
            dao.deleteUser(userId);
            System.out.println("deleted");
        }catch(Exception e){
            System.out.println("Delete Controller Exception Occured");
        }
        return "redirect:list";
    }
}
    

    
