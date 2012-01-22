package sid.sid_tp2.bean;

import java.util.List;

import javax.ejb.Remote;

@Remote
public interface PanierRemote {
	
	
	public void ajouterProduit(int idProduit);
	
	public void supprimerProduit(int idProduit);
	
	public List<LigneCommande> getPanier();
	
	public void viderPanier();
	
	public void validerPanier();
	
	public void modifierQuantite(int idProduit, int quantite) ;
	
	public double calculerTotal();
	

}
