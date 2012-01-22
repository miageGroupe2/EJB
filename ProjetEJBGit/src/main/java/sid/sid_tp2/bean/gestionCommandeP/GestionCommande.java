package sid.sid_tp2.bean.gestionCommandeP;

import java.util.List;

import javax.ejb.EJB;

import sid.sid_tp2.bean.Banque;
import sid.sid_tp2.bean.Client;
import sid.sid_tp2.bean.LigneCommande;
import sid.sid_tp2.bean.gestionClientP.GestionClientLocal;

public class GestionCommande implements GestionCommandeLocal, GestionCommandeRemote{

	@EJB
	private GestionClientLocal gestionClientLocal ;
	
	
	@Override
	public void ajouterCommande(List<LigneCommande> listeLigneCommande, Client client) {
		
		
		
	}
	
	
	

}
