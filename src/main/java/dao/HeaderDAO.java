package dao;

import model.Header;
import util.DBConnection;

import java.sql.*;
import java.util.*;

public class HeaderDAO {

    public static void saveHeader(Header h){

        try{

            Connection conn = DBConnection.getConnection();

            String sql="INSERT INTO request_headers(header_name,header_value,client_ip,note) VALUES(?,?,?,?)";

            PreparedStatement ps=conn.prepareStatement(sql);

            ps.setString(1,h.getName());
            ps.setString(2,h.getValue());
            ps.setString(3,h.getIp());
            ps.setString(4,h.getNote());

            ps.executeUpdate();

        }catch(Exception e){e.printStackTrace();}
    }

    public static List<Header> getAllHeaders(){

        List<Header> list=new ArrayList<>();

        try{

            Connection conn=DBConnection.getConnection();

            Statement st=conn.createStatement();

            ResultSet rs=st.executeQuery("SELECT * FROM request_headers");

            while(rs.next()){

                list.add(new Header(
                        rs.getInt("id"),
                        rs.getString("header_name"),
                        rs.getString("header_value"),
                        rs.getString("client_ip"),
                        rs.getString("note")
                ));
            }

        }catch(Exception e){e.printStackTrace();}

        return list;
    }

    public static void deleteHeader(int id){

        try{

            Connection conn=DBConnection.getConnection();

            PreparedStatement ps=conn.prepareStatement(
                    "DELETE FROM request_headers WHERE id=?");

            ps.setInt(1,id);

            ps.executeUpdate();

        }catch(Exception e){e.printStackTrace();}
    }

    public static void updateNote(int id,String note){

        try{

            Connection conn=DBConnection.getConnection();

            PreparedStatement ps=conn.prepareStatement(
                    "UPDATE request_headers SET note=? WHERE id=?");

            ps.setString(1,note);
            ps.setInt(2,id);

            ps.executeUpdate();

        }catch(Exception e){e.printStackTrace();}
    }
}