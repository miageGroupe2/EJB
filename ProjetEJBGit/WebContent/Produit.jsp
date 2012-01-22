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
	
	

	out.println("<table><tr><td>Nom produit</td><td>Prix</td></tr>");
	
		
	out.println("<tr><td>DVD Docteur House</td><td> 60 </td><td><a href=\"Panier.jsp?idAjoutProduit=1\">Ajouter au panier</a></td>");
	out.println("<tr><td>CD Johny, l'idole des jeunes</td><td> 25 </td><td><a href=\"Panier.jsp?idAjoutProduit=2\">Ajouter au panier</a></td>");
	out.println("<tr><td>CD Edith piaf</td><td> 12 </td><td><a href=\"Panier.jsp?idAjoutProduit=3\">Ajouter au panier</a></td>");


	out.println("<a href=\"Panier.jsp\">Voir le panier</a></td>");
	
	 %>

</body>
</html>