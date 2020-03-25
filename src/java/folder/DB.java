package folder;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DB {
    private Connection conn;
    String dburl = "jdbc:derby://localhost:1527/deneme";
    String users = "abc";
    String pass = "123";
    
    public Connection baglan() {
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
            conn = DriverManager.getConnection(dburl, users, pass);
            System.out.println("Baglanti Basarili");
        }catch(Exception e) {
            System.out.println("Baglanti Basarisiz!!");
        }
        return conn;
    }
    
    public String kullaniciListele() {
         String full = "Kullanici adi \t Sifre \t Isim \t Tel \n";
        if(conn == null) {
            System.out.println("Baglanti Kurulmamis. Baglaniliyor...");
            baglan();
        }
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from users");
            System.out.println("Kullanici adi \t Sifre \t Isim \t Tel");
            while(rs.next()) {
                System.out.println(rs.getString("adi")+" \t"+rs.getString("sifre")+" \t"+rs.getString("isim")+" \t"+rs.getString("tel"));
                full = full + rs.getString("adi")+" "+rs.getString("sifre")+"   "+rs.getString("isim")+"    "+rs.getString("tel")+ "\n";
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return full;
    }
    
    public boolean kullaniciKontrol(String name, String pass) {
        if(conn == null) {
            System.out.println("Baglanti Kurulmamis. Baglaniliyor...");
            baglan();
        }
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select sifre from users where isim = '"+name+"'");
            rs.next();
            return pass.equals(rs.getString("sifre"));
        }catch(Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public static void main(String args[]) {
        DB d = new DB();
        d.kullaniciListele();
    }
}
