package sid.sid_tp2.bean.gestionClientP;

import javax.ejb.Remote;

import sid.sid_tp2.bean.Client;

@Remote
public interface GestionClientRemote {

	public Client getClient();
	
	
	public String getMail();
	
	public String getPrenom() ;
	
	public String getNom() ;
	
	
	
	public int getNumCompte();
	
	
}
