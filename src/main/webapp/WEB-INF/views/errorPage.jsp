<jsp:useBean id="cons" class="com.meuge.cvl.utils.FullTools" scope="page"/>

<%@ page session="false"%>
<html>
<head>
    <title> Christian Vivien Lhermitte Psychologue clinicien &amp; Psychothérapeute &amp; Psychanaliste </title>
</head>
<body>
<h3>${url}</h3>
<h1>${cons.variables('erreur de page', false)}</h1>

</body>
</html>