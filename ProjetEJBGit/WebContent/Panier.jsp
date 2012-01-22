
<%@page import="sid.sid_tp2.bean.gestionClientP.GestionClientRemote"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Map"%>
<%@page import="sid.sid_tp2.bean.LigneCommande"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sid.sid_tp2.bean.Produit"%>
<%@page import="java.util.List"%>
<%@page import="sid.sid_tp2.bean.PanierRemote"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	
	
	ServletContext contextAppli = request.getSession(true).getServletContext();
	PanierRemote panierRemote = null ;
	GestionClientRemote gestionClientRemote = null ;
	
	if(contextAppli.getAttribute("panierRemote")==null)
	{
		InitialContext ctx = new InitialContext();

		panierRemote = (PanierRemote) ctx.lookup("java:global/ProjetEJBGit/Panier!sid.sid_tp2.bean.PanierRemote");
		
		contextAppli.setAttribute("panierRemote", panierRemote);
	}
	else
	{
		panierRemote = (PanierRemote)contextAppli.getAttribute("panierRemote");
	}
	
	if(contextAppli.getAttribute("gestionClientRemote")==null)
	{
		InitialContext ctx = new InitialContext();
		gestionClientRemote = (GestionClientRemote) ctx.lookup("java:global/ProjetEJBGit/GestionClient!sid.sid_tp2.bean.gestionClientP.GestionClientRemote");
		 
		contextAppli.setAttribute("gestionClientRemote", gestionClientRemote);
	}
	else
	{
		gestionClientRemote = (GestionClientRemote)contextAppli.getAttribute("gestionClientRemote");
	}
	
	
	if(request.getParameter("idAjoutProduit") != null){
		
		panierRemote.ajouterProduit(Integer.parseInt(request.getParameter("idAjoutProduit")));		
	
	}else if(request.getParameter("viderPanier") != null){
		
		panierRemote.viderPanier();
		
	}else if(request.getParameter("idSupprimerProduit") != null){
		
		panierRemote.supprimerProduit(Integer.parseInt(request.getParameter("idSupprimerProduit")));		
	
	}else if(request.getParameter("idModifierQuantite") != null){
		
		
		int idProduit = Integer.parseInt(request.getParameter("idModifierQuantite"));
		int quantite = Integer.parseInt(request.getParameter("quantite"));
		
		panierRemote.modifierQuantite(idProduit, quantite);	
		
	}else if(request.getParameter("validerPanier") != null){
		
		panierRemote.validerPanier();		
	}
	
	
	List<LigneCommande> panier = panierRemote.getPanier();
	
	out.println("Bonjour Monsieur " + gestionClientRemote.getNom() + " "+ gestionClientRemote.getPrenom());
	out.println("<h3>Votre panier contient : </h3>");
    
	out.println("<table><tr><td>Nom produit</td><td>Prix</td><td>Quantité</td><td>Prix total</td></tr>");
	
	for (LigneCommande ligneCommandeCourante : panier){
		
		Produit produit = ligneCommandeCourante.getProduit() ;
		int idProduit = produit.getId();
		
		out.println("<tr><td>"+ produit.getNom()+"</td>"
		+"<td>" + produit.getPrix() +"</td>"
		+"<td>" + ligneCommandeCourante.getQuantite() +"</td>"
		+"<td>" + produit.getPrix() * ligneCommandeCourante.getQuantite()+"</td>"+				
		"<td><a href=\"Panier.jsp?idSupprimerProduit="+idProduit+"\">Supprimer ce produit</a></td>"+
		"<td><form id=\""+idProduit+"\" method=\"get\" action=\"Panier.jsp\"><input type=\"hidden\" name=\"idModifierQuantite\" id=\"idModifierQuantite\" value=\""+idProduit+"\" /><input type=\"text\" name=\"quantite\" id=\"quantite\"/><input type=\"submit\" value=\"Changer\" /></form></td>"+
		"</tr>");

	}
	out.println("</table>");
	
	
	out.println("<br/><form id=\"validerPanier\" method=\"get\" action=\"Panier.jsp\"><input type=\"hidden\" name=\"validerPanier\" id=\"validerPanier\" value=\"1\"/><input type=\"submit\" value=\"Valider panier\" /></form>");
	
	out.println("<br/><a href=\"Panier.jsp?viderPanier=true\">Vider le panier</a>");		
	out.println("<br/><a href=\"Produit.jsp\">Retour aux produits</a></td>");
	
	%>
</body>
</html>