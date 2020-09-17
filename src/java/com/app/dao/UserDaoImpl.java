/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.dao;

import com.app.infrastructure.ProcedureBuilder;
import com.app.infrastructure.StoreProcParameters;
import com.app.pojo.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.sql.DataSource;
import oracle.jdbc.OracleTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

/**
 *
 * @author amolw
 */



//@Transactional
@Repository
public class UserDaoImpl implements IUser{
   private static final String PROC_GET_PAN_DETAILS = "DEMO_PAN.GET_PAN_DTLS";
   private static final String PROC_REGSITER_USER = "DEMO_PAN.INSERT_PAN_DTLS";
    private static final String PROC_LOGIN_USER = "DEMO_PAN.LOGIN_USER";
      private static final String PROC_UPDATE_USER = "DEMO_PAN.UPDATE_USER_DTLS";
       private static final String PROC_DELETE_USER = "DEMO_PAN.DELETE_USER_DTLS";
   
//    @Autowired
//    private JdbcTemplate jdbcTemplate;
    
    @Autowired
    private DataSource dataSource;
    
   // private JdbcTemplate getJdbcTemplate ;
 @Override
    public List<User> getUsersByProc() throws Exception {
        
   try{
    
       List<StoreProcParameters> sqlOutPrametesList = new ArrayList<>();
            StoreProcParameters sqlOutPrametes = new StoreProcParameters("OUT SYS_REFCURSOR", null, OracleTypes.CURSOR, new Mapper());
            sqlOutPrametesList.add(sqlOutPrametes);
            JdbcTemplate jdbcTemplate = new JdbcTemplate();
            jdbcTemplate.setDataSource(dataSource);
            if (jdbcTemplate.getDataSource() == null) {

                throw new Exception("Data source exception.");
            }
            ProcedureBuilder proc = new ProcedureBuilder(jdbcTemplate.getDataSource(), PROC_GET_PAN_DETAILS, null, sqlOutPrametesList);
            
              Map result=proc.execute(sqlOutPrametesList);
             List UsersDetailsList = (List) result.get("OUT SYS_REFCURSOR");
           System.out.println(UsersDetailsList);
           
            
            return UsersDetailsList;
        } catch (Exception ex) {
            throw ex;
        
    }
    }

    @Override
    public String registerNewUser(User u) throws Exception {
        try {
        List<StoreProcParameters> sqlInParametesList = new ArrayList<>(); 
        StoreProcParameters sqlInParameters;
       sqlInParameters = new StoreProcParameters( "IN_NAME", u.getName(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       sqlInParameters = new StoreProcParameters( "IN_PAN", u.getPAN(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       sqlInParameters = new StoreProcParameters( "IN_ADDRESS", u.getAddress(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       sqlInParameters = new StoreProcParameters( "IN_DOB", u.getDOB(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       sqlInParameters = new StoreProcParameters( "IN_PASSWORD", u.getPassword(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       JdbcTemplate getJdbcTemplate = new JdbcTemplate();
            getJdbcTemplate.setDataSource(this.dataSource);
            if (getJdbcTemplate.getDataSource() == null) {
                throw new Exception("Data source exception.");
            }
           ProcedureBuilder proc = new ProcedureBuilder(getJdbcTemplate.getDataSource(), PROC_REGSITER_USER, sqlInParametesList, null);
            Map results = proc.execute(sqlInParametesList);
       
            
             
        
            

        }catch(Exception e){
            throw e;
}
        return null; 
    }
    
       @Override
    public User loginUser(String userName, String password) throws Exception {
 try{
  
       List<StoreProcParameters> sqlOutParameterList = new ArrayList<>();
       List<StoreProcParameters>sqlInparameterList=new ArrayList<>();
       StoreProcParameters sqlOutPrametes = new StoreProcParameters("OUT_SYS_REFCURSOR", null, OracleTypes.CURSOR, new Mapper());
        sqlOutParameterList.add(sqlOutPrametes);
       StoreProcParameters sqlInParameters;
         sqlInParameters = new StoreProcParameters( "IN_NAME", userName, OracleTypes.VARCHAR, new Mapper());
       sqlInparameterList.add(sqlInParameters);
        sqlInParameters = new StoreProcParameters( "IN_PASSWORD", password, OracleTypes.VARCHAR, new Mapper());
        sqlInparameterList.add(sqlInParameters);
         JdbcTemplate getJdbcTemplate = new JdbcTemplate();
            getJdbcTemplate.setDataSource(this.dataSource);
            if (getJdbcTemplate.getDataSource() == null) {
                throw new Exception("Data source exception.");
            }
          ProcedureBuilder proc = new ProcedureBuilder(getJdbcTemplate.getDataSource(), PROC_LOGIN_USER, sqlInparameterList, sqlOutParameterList);
            
              Map result=proc.execute(sqlInparameterList);
           List< User> u =  (List<User>)result.get("OUT_SYS_REFCURSOR");
            System.out.println("user details");
             System.out.println(u);
           
            
            return u.get(0);
 }catch(Exception e){
     System.out.println("exc");
     throw e;
 }

}
    
     @Override
    public void updateUser(User u) throws Exception {
         
      List<StoreProcParameters> sqlInParametesList = new ArrayList<>(); 
        StoreProcParameters sqlInParameters;
        
       sqlInParameters = new StoreProcParameters( "IN_NAME", u.getName(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       sqlInParameters = new StoreProcParameters( "IN_PAN", u.getPAN(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       sqlInParameters = new StoreProcParameters( "IN_ADDRESS", u.getAddress(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       sqlInParameters = new StoreProcParameters( "IN_DOB", u.getDOB(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       sqlInParameters = new StoreProcParameters( "IN_ID",u.getId(), OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       
       JdbcTemplate getJdbcTemplate = new JdbcTemplate();
            getJdbcTemplate.setDataSource(this.dataSource);
            if (getJdbcTemplate.getDataSource() == null) {
                throw new Exception("Data source exception.");
            }
           ProcedureBuilder proc = new ProcedureBuilder(getJdbcTemplate.getDataSource(), PROC_UPDATE_USER, sqlInParametesList, null);
            Map results = proc.execute(sqlInParametesList);
       
            
             
     
            

       
       
    }

    @Override
    public String deleteUser(int userId) throws Exception {
        List<StoreProcParameters> sqlInParametesList = new ArrayList<>(); 
        StoreProcParameters sqlInParameters;
        sqlInParameters = new StoreProcParameters( "IN_ID",userId, OracleTypes.VARCHAR, null);
       sqlInParametesList.add(sqlInParameters);
       
       JdbcTemplate getJdbcTemplate = new JdbcTemplate();
            getJdbcTemplate.setDataSource(this.dataSource);
            if (getJdbcTemplate.getDataSource() == null) {
                throw new Exception("Data source exception.");
            }
           ProcedureBuilder proc = new ProcedureBuilder(getJdbcTemplate.getDataSource(), PROC_DELETE_USER, sqlInParametesList, null);
            Map results = proc.execute(sqlInParametesList);
       
      return "success"  ;
    }

    
       
    }
    
    

    

  
 
  

       

  










