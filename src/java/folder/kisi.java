package folder;

public class kisi {

    private String name;
    private String pass;

    public kisi() {
        System.out.println("Kisi objesi olusturuldu...");
    }

    public String next() {
     if(name.equals("admin"))
         return "admin.html";
     return "users.html";
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public boolean kisiKontrol() {
        DB db = new DB();
        return db.kullaniciKontrol(name, pass);
    }
    
    public String listele() {
        DB db = new DB();
        return  db.kullaniciListele();
    }

    public static void main(String args[]) {
        kisi s = new kisi();
        s.setName("sadig");
        s.setPass("123");
        System.out.println(s.kisiKontrol());
    }
}
