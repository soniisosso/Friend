package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Friend_connect {
    
    static ArrayList<Friend> friendList = new ArrayList<Friend>();

    public static void main(String[] args) {
        
        System.out.println("********Récupération des données de la base MySQL***");
        System.out.println("Connexion à MySQL friendDB");
        
        String url = "jdbc:mysql://localhost/friendDB";
        String login = "root";
        String passwd = "";
        
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            // Étape 1 : Chargement du driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Étape 2 : Récupération de la connexion
            cn = DriverManager.getConnection(url, login, passwd);
            
            // Étape 3 : Création d'un statement
            st = cn.createStatement();
            
            String sql = "SELECT * FROM FRIEND";
            
            // Étape 4 : Exécution requête
            rs = st.executeQuery(sql);
            
            // Étape 5 : Parcours du ResultSet
            while (rs.next()) {
                System.out.println("-----------Récupération des données depuis MySQL------------------------");
                System.out.println(rs.getInt("ID"));
                System.out.println(rs.getString("NOM"));
                System.out.println(rs.getString("PRENOM"));
                System.out.println(rs.getString("numeroTelephone"));
                
                // Friend(Integer id, String nom, String prenom, String numeroTelephone)
                Friend f1 = new Friend(rs.getInt("ID"), rs.getString("NOM"), rs.getString("PRENOM"), rs.getString("numeroTelephone"));
                System.out.println(f1); // Appel à la fonction toString
                friendList.add(f1);
            }
        } catch (ClassNotFoundException e) { // Problème de driver
            e.printStackTrace();
        } catch (SQLException e) { // Problème SQL
            e.printStackTrace();
        }
        
        // Vérification de la liste des amis
        System.out.println("********Vérification de la liste des amis***");
        for (Friend monAmi : friendList) System.out.println(monAmi);
    }
}