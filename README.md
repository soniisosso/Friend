# Friend
Ce projet permet de gérer une liste d'amis enregistrés dans une base de données MySQL "frienddb"
1. Structure du projet
![Capture d'écran 2025-02-04 205345](https://github.com/user-attachments/assets/58f92c4b-d0dc-49bb-a122-d0ea6cdf8681)
2. Explication du fichier Friend.java
![Capture d'écran 2025-02-04 210022](https://github.com/user-attachments/assets/cbfcef1c-3ba1-4504-9cfd-90eba89658c7)
Explication :
Cette classe représente un ami avec un id, un nom, un prenom et un numeroTelephone.
Le constructeur initialise ces valeurs.
La méthode toString() permet d’afficher les informations d’un ami.
3. Explication du fichier Friend_connect.java
![Capture d'écran 2025-02-04 205834](https://github.com/user-attachments/assets/ea077e47-19f1-4cc0-a24b-1a123b2d3abc)
Explication :
La classe Friend_connect permet d'établir une connexion avec MySQL.
Elle utilise JDBC (DriverManager.getConnection) pour accéder à la base de données friendDB.
Si la connexion est réussie, un message de confirmation s'affiche.
Exécute une requête SELECT pour récupérer les amis enregistrés
![Capture d'écran 2025-02-04 233905](https://github.com/user-attachments/assets/aa9304d8-0c4f-44df-81d6-04972a580a7c)
La classe Friend_connect stocke les données dans une ArrayList <friendList> et les affiche.
5. Sortie console
![Capture d'écran 2025-02-04 231433](https://github.com/user-attachments/assets/4539c60b-38bd-4356-8a83-b90baa84d9c6)
![Capture d'écran 2025-02-04 233656](https://github.com/user-attachments/assets/30419ce0-28ad-4068-a83e-f88cc880a761)
![Capture d'écran 2025-02-04 233720](https://github.com/user-attachments/assets/b5689db7-2344-42cc-ab29-8339879cd604)

Voici la sortie console après exécution du programme.
On voit que les amis enregistrés sont bien affichés, ce qui prouve que la récupération des données fonctionne correctement.




