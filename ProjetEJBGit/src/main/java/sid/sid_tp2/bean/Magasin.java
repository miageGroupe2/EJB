package sid.sid_tp2.bean;

import java.util.ArrayList;
import java.util.List;

public class Magasin {

	
	private static List<Produit> liste ;
	
	
	public static void construireMagasin(){
		
		liste = new ArrayList<Produit>();
				
		Produit produit = new Produit(1, "DVD Docteur House", 60);
		Produit produit2 = new Produit(2, "CD Johny, l'idole des jeunes", 20);
		Produit produit3 = new Produit(3, "CD Edith Piaf", 12);
		liste.add(produit);
		liste.add(produit2);
		liste.add(produit3);
		
	}
	
	public static Produit getProduitById(int idProduit){
		
		if (liste == null){
			
			construireMagasin();
		}
		
		for (Produit produitCourant : liste){
			
			if(produitCourant.getId() == idProduit){
				
				return produitCourant ;
			}
		}
		
		return null ;
	}
}
