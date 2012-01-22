package sid.sid_tp2.bean.gestionClientP;

import javax.ejb.Stateful;

import sid.sid_tp2.bean.Client;

@Stateful
public class GestionClient implements GestionClientRemote, GestionClientLocal{

	private static Client client = new Client(1, "Dupond", "Jean", "dupond@gmail.com", 12345);
	
	
	public Client getClient(){
		
		return client ;
	}
	
	
	@Override
	public String getMail() {
		
		return client.getMail();
	}

	@Override
	public String getPrenom() {
		return client.getPrenom();
	}

	@Override
	public String getNom() {
		return client.getNom();
				
	}
	
	public int getNumCompte(){
		
		return client.getNumCompte();
	}
	
	

}
