/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.dao;
import com.app.pojo.User;
import java.util.List;
/**
 *
 * @author amolw
 */
public interface IUser {
    
     public List<User> getUsersByProc()throws Exception;
  public String registerNewUser(User u) throws Exception;
   public void updateUser(User u) throws Exception;
    public User loginUser(String userName,String password)throws Exception;
     public String deleteUser(int userId)throws Exception;
   
}
