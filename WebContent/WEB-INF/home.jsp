<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>

	<%@ include file="menu.jsp"%>
	this is Home Page

	<p>
		<%
			String name = (String) request.getAttribute("name");
			if (name != null) {
				out.println("Hello " + name);
			} else {
				out.println("Hello world");
			}
		%>
	</p>

	<p>${ !empty name ? "Hello "+ name : "Hello world" }</p>

	<p>Hello Expression Languages ${ user.name } ${user.active ? "is an active user" : "is an inactive user"}
	</p>

	<p>
		<c:out value="Hello JSTL !" />
	</p>

	On affiche une variable en JSTL de la façon suivante :

	<p>
		<c:out value="${ variable }">Valeur par défaut</c:out>
	</p>
	On peut directement y définir une variable, avec son champ
	d'application :

	<c:set var="pseudo" value="Mateo21" scope="page" />
	On peut supprimer la variable :

	<c:remove var="pseudo" scope="page" />
	On peut travailler aussi avec des Java Beans. Ici, on modifie la
	propriété d'un Bean puis on l'affiche :



	<p>
		<c:out value="${ user.name }" />
	</p>

	<c:set target="${ user }" property="name" value="Bimezzagh" />
	<p>
		<c:out value="${ user.name }" />
	</p>


	Un test en JSTL :

	<c:if test="${ 50 > 10 }" var="variable">
    C'est vrai !
</c:if>
	Un test multiple en JSTL :
	<br>

	<c:choose>
		<c:when test="${ variable }">Du texte</c:when>
		<c:when test="${ autreVariable }">Du texte 2</c:when>
		<c:when test="${ encoreUneAutreVariable }">Du texte 3</c:when>
		<c:otherwise>mmmmm</c:otherwise>
	</c:choose>
	<br> Les conditions sont exécutées dans l'ordre. Si aucune ne
	convient, c'est otherwise qui sera exécuté.
	<br> Une boucle qui s'exécute un certain nombre de fois en JSTL :

	<c:forEach var="i" begin="0" end="10" step="2">
		<p>
			Un message n°
			<c:out value="${ i }" />
			!
		</p>
	</c:forEach>
	Une boucle sur un array (tableau) :
	<br>

	<c:forEach items="${ titles }" var="titre" varStatus="status">
		<p>
			N°
			<c:out value="${ status.count }" />
			:
			<c:out value="${ titre }" />
			!
		</p>
	</c:forEach>
	Une boucle qui travaille sur une chaîne de caractères découpée :
<br>
	<c:forTokens var="morceau"
		items="Un élément/Encore un autre élément/Un dernier pour la route"
		delims="/ ">
		<p>${ morceau }</p>
	</c:forTokens>
</body>
</html>