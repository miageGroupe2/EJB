package sid.sid_tp2.bean;




public class Client {
	
	
	private int id ;
	private String nom ;
	private String prenom ;
	private String mail ;
	private int numCompte ;
	
	public Client(int id, String nom, String prenom, String mail, int numCompte) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.numCompte = numCompte ;
	}

	
	
	public int getNumCompte() {
		return numCompte;
	}



	public void setNumCompte(int numCompte) {
		this.numCompte = numCompte;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	
	

}
