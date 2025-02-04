package p1;

public class Friend {
    
    Integer id;
    String nom;
    String prenom;
    String numeroTelephone;
    
    public Friend(Integer id, String nom, String prenom, String numeroTelephone) {
        super();
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.numeroTelephone = numeroTelephone;
    }

    @Override
    public String toString() {
        return "Objet de classe Friend [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", numeroTelephone=" + numeroTelephone + "]";
    }
}
