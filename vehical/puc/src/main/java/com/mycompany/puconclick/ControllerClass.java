/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.puconclick;

import java.io.InputStream;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author mrina
 */
@Controller
public class ControllerClass {
    
    @RequestMapping("/signup")
    public String welcomefunction() {
        System.out.println("This is signup page");
        return "signup";
    }
    
    @RequestMapping("/welcomepage")
    public String welcomefunction1() {
        System.out.println("This is welcome page");
        return "welcomepage";
    }
    
    @RequestMapping("/login")
    public String loginfunction() {
        System.out.println("This is login page");
        return "login";
    }
    
    @RequestMapping(value = "/registerform", method = RequestMethod.POST)
    public String register(@RequestParam("a") String u, @RequestParam("b") String v, @RequestParam("c") String w, 
            @RequestParam("d") String x, @RequestParam("e") String y, @RequestParam("f") String z, @RequestParam("g") String t, Model object1){
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://database-1.ctyimaeckknx.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");
            PreparedStatement stmt=con.prepareStatement("insert into users(name, username, mobile, address, email, password, licence_no) values(?,?,?,?,?,?,?)");
            stmt.setString(1, u);
            stmt.setString(2, v);
            stmt.setString(3, w);
            stmt.setString(4, x);
            stmt.setString(5, y);
            stmt.setString(6, z);
            stmt.setString(7, t);
            stmt.executeUpdate();
            
            System.out.println("Hello");
        }
        catch(Exception k){
            k.getMessage();
        }
        
        return "login";
    }
    
    @RequestMapping("/vehicles")
    public String vehiclefunction() {
        System.out.println("This is vehicles page");
        return "vehicles";
    }
    
    @RequestMapping(value = "/welcomepage", method = RequestMethod.POST)
    public String processLogin(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") String x, @RequestParam("b") String y, Model object1) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://database-1.ctyimaeckknx.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");
            PreparedStatement stmt = con.prepareStatement("select * from users where username=? and password=?");

            stmt.setString(1, x);
            stmt.setString(2, y);

            ResultSet rs = stmt.executeQuery();

           
            while (rs.next()) {
                if (rs.getString("username").equals(x) && rs.getString("password").equals(y)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("userName", x);
                    session.setAttribute("password", y);
                    session.setAttribute("email", rs.getString("email"));

                    session.setMaxInactiveInterval(30 * 24 * 30 * 60);
                    session.setAttribute("loggedIn", true);
                    
                    return "welcomepage";
                }
                else {
                    String errorMessage = "Invalid username/password";
                    object1.addAttribute("errorMessage", errorMessage);
                }
            }
        }
        catch (Exception k) {
            String errorMessage = "There was an unknown error! Please try again";
            object1.addAttribute("errorMessage", errorMessage);
            return "login";
        }

        return "login" ;        
    }
    
    @RequestMapping(value="/addvehicle", method = RequestMethod.POST)
    public String vehicleAdd(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") String u, @RequestParam("b") String v, @RequestParam("c") String w, 
            @RequestParam("d") String x, @RequestParam("e") String y, @RequestParam("f") String z, @RequestParam("bullet") String t, @RequestParam("k") MultipartFile imageFile, Model object1){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://database-1.ctyimaeckknx.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");
            PreparedStatement stmt=con.prepareStatement("insert into vehicles (registration_no, username, chasis_no, vehicle_name, color) values (?,?,?,?,?)");
            stmt.setString(1, v);
            stmt.setString(2, u);
            stmt.setString(3, w);
            stmt.setString(4, x);
            stmt.setString(5, y);
            
            stmt.executeUpdate();
            
            if(t.equals("other")){
                PreparedStatement stmt1 = con.prepareStatement("insert into isother (registration_no, type) values (?,?)");
                stmt1.setString(1, v);
                stmt1.setString(2, z);
                stmt1.executeUpdate();
            }
            else if(t.equals("diesel")){
                PreparedStatement stmt1 = con.prepareStatement("insert into isdiesel (registration_no, type) values (?,?)");
                stmt1.setString(1, v);
                stmt1.setString(2, z);
                stmt1.executeUpdate();
            }
            
            if (!imageFile.isEmpty()) {
                try (InputStream inputStream = imageFile.getInputStream()) {
                PreparedStatement stmt1 = con.prepareStatement("select * from vehicles where username=? and registration_no=?");
                HttpSession session = request.getSession();
                stmt1.setString(1, (String) session.getAttribute("userName"));
                stmt1.setString(2, v);

                ResultSet rs1 = stmt1.executeQuery();

                String sql = "insert into vehicle_image (registration_no, data) values (?, ?)";
                PreparedStatement statement = con.prepareStatement(sql);
                statement.setString(1, v);
                
                if (inputStream != null) {
                    statement.setBlob(2, inputStream);
                }

//                statement.executeUpdate();
                int row = statement.executeUpdate();
                if (row > 0) {
                    String message = "File uploaded and saved into the database";
                }
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }else{System.out.println("not there");
                }

        return "vehicles";
            
        }
        catch(Exception k1){
            k1.getMessage();
        }
        return "vehicles";
    }
    
    @RequestMapping(value = "/certificate")
    public String viewCertificate(HttpServletRequest request, HttpServletResponse response) {
        return "certificate";
    }
    
    @RequestMapping(value = "/certificate", method = RequestMethod.POST)
    public String Certificate(HttpServletRequest request, HttpServletResponse response,@RequestParam("value") String v, Model object1) {
        
        object1.addAttribute("value", v);
        return "redirect:/certificate";
    }
    
    @RequestMapping("/guidelines")
    public String guidelinesfunction() {
        System.out.println("This is guidelines page");
        return "guidelines";
    }
    
    @RequestMapping(value = "/contactus")
    public String contactus() {
        return "contactus";
    }
    
    @RequestMapping(value = "/getcertificate")
    public String getcertificate() {
        return "getcertificate";
    }
    
    @RequestMapping(value = "/getcertificate", method = RequestMethod.POST)
    public String getCertificate(HttpServletRequest request, HttpServletResponse response,@RequestParam("a") String t,@RequestParam("b") String u,@RequestParam("c") String v,@RequestParam("d") String w,@RequestParam("e") String x,@RequestParam("startdate") String y,@RequestParam("enddate") String z, Model object1) {
        try{
            System.out.println(u + " " + v);
            String id=t+x;
            int cnt=0;
            boolean present=false;
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://database-1.ctyimaeckknx.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");
            PreparedStatement stmt = con.prepareStatement("select count(*) from puc where puc_no=?");
            stmt.setString(1, id);
            
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                cnt=rs.getInt(1);
            }
            if(cnt!=0){present=true;}
            else{present=false;}
            
            if(!present){
                PreparedStatement stmt1 = con.prepareStatement("insert into puc (puc_no, start_date, end_date) values (?,?,?)");
                stmt1.setString(1, id);
                stmt1.setString(2, y);
                stmt1.setString(3, z);
                stmt1.executeUpdate();
                
                if(w.startsWith("D")){
                    try{
                    PreparedStatement stmt2 = con.prepareStatement("insert into report_d (r_no, in_lac, in_density, puc_no) values (?,?,?,?)");
                    stmt2.setString(1, t);
                    stmt2.setString(2, u);
                    stmt2.setString(3, v);
                    stmt2.setString(4, id);
                    stmt2.executeUpdate();
                    }
                    catch(Exception k1){
                        k1.getMessage();
                    }
                }
                else{
                    try{
                    PreparedStatement stmt2 = con.prepareStatement("insert into report_p (r_no, in_co, in_hydro, puc_no) values (?,?,?,?)");
                    stmt2.setString(1, t);
                    stmt2.setString(2, u);
                    stmt2.setString(3, v);
                    stmt2.setString(4, id);
                    stmt2.executeUpdate();
                    }
                    catch(Exception k1){
                        k1.getMessage();
                    }
                }
            }
            else{
                PreparedStatement stmt1 = con.prepareStatement("update puc set start_date=?, end_date=? where puc_no=?");
                stmt1.setString(1, y);
                stmt1.setString(2, z);
                stmt1.setString(3, id);
                stmt1.executeUpdate();
                
                if(w.startsWith("D")){
                    try{
                    PreparedStatement stmt2 = con.prepareStatement("update report_d set in_lac=?, in_density=? where r_no=?");
                    stmt2.setString(1, u);
                    stmt2.setString(2, v);
                    stmt2.setString(3, t);
                    stmt2.executeUpdate();
                    }
                    catch(Exception k1){
                        k1.getMessage();
                    }
                }
                else{
                    try{
                    PreparedStatement stmt2 = con.prepareStatement("update report_p set in_co=?, in_hydro=? where r_no=?");
                    stmt2.setString(1, u);
                    stmt2.setString(2, v);
                    stmt2.setString(3, t);
                    stmt2.executeUpdate();
                    }
                    catch(Exception k1){
                        k1.getMessage();
                    }
                }
            }
        }
        catch(Exception k){
            k.getMessage();
        }
        object1.addAttribute("value", t);
        return "redirect:/getcertificate";
    }
    
    @RequestMapping(value="/vehicledelete", method = RequestMethod.POST)
    public String vehicledelete(HttpServletRequest request, HttpServletResponse response,@RequestParam("a") String t,@RequestParam("b") String u,@RequestParam("c") String v) {
        try{
            String id=t+u;
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://database-1.ctyimaeckknx.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");
            if(v.startsWith("D")){
                PreparedStatement stmt = con.prepareStatement("delete from report_d where r_no=?");
                stmt.setString(1, u);
                stmt.executeUpdate();
                
                PreparedStatement stmt2 = con.prepareStatement("delete from isdiesel where registration_no=?");
                stmt2.setString(1, u);
                stmt2.executeUpdate();
            }
            else{
                PreparedStatement stmt = con.prepareStatement("delete from report_p where r_no=?");
                stmt.setString(1, u);
                stmt.executeUpdate();
                
                PreparedStatement stmt2 = con.prepareStatement("delete from isother where registration_no=?");
                stmt2.setString(1, u);
                stmt2.executeUpdate();
            }
            
            PreparedStatement stmt1 = con.prepareStatement("delete from puc where puc_no=?");
            stmt1.setString(1, id);
            stmt1.executeUpdate();
            
            PreparedStatement stmt3 = con.prepareStatement("delete from vehicles where registration_no=?");
            stmt3.setString(1, u);
            stmt3.executeUpdate();
        }
        catch(Exception k){
            k.getMessage();
        }
        return "vehicles";
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response)
    {
        HttpSession session = request.getSession();
        session.removeAttribute("userName");
        session.setAttribute("loggedIn", false);
        return "login";
    }
}
