package sid.sid_tp2.bean.gestionCommandeP;

import java.util.List;

import sid.sid_tp2.bean.Client;
import sid.sid_tp2.bean.LigneCommande;

public interface GestionCommandeLocal {

	
	public void ajouterCommande(List<LigneCommande> listeLigneCommande, Client client);
}
