/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.config;

import com.app.dao.UserDaoImpl;
import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 *
 * @author amolw
 */

//@Configuration
//public class MVCConfig extends WebMvcConfigurerAdapter {
//    
//     @Bean
//    public DataSource getDataSource() {
//        DriverManagerDataSource dataSource = new DriverManagerDataSource();
//        dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
//        dataSource.setUrl("jdbc:oracle:thin:@10.208.22.4:1521/PDB_EPFO_CLONE");
//        dataSource.setUsername("UNIFIED_PORTAL");
//        dataSource.setPassword("UNIFIED_PORTAL");
//         
//        return dataSource;
//    }
//     
//    @Bean
//    public UserDaoImpl getUserDaoImpl() {
//        return new UserDaoImpl(getDataSource());
//    }
//}
