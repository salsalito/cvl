<jsp:useBean id="cons" class="com.meuge.cvl.utils.FullTools" scope="page"/>

<%@ page session="false"%>
<html>
<head>
    <title> Christian Vivien Lhermitte Psychologue clinicien &amp; Psychothérapeute &amp; Psychanaliste </title>
  <meta http-equiv="refresh" content="5; URL=http://www.cv-lhermitte.fr">
</head>
<body>
<h3>${url}</h3>
 <h4>Redirection vers www.cv-lhermitte.fr dans 5 secondes.</h4>
${cons.variables('erreur de page', false)}

  <script>
function includeHTML() {
  var z, i, elmnt, file, xhttp;
  /*loop through a collection of all HTML elements:*/
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    /*search for elements with a certain atrribute:*/
    file = elmnt.getAttribute("w3-include-html");
    if (file) {
      /*make an HTTP request using the attribute value as the file name:*/
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
          if (this.status == 200) {elmnt.innerHTML = this.responseText;}
          if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
          /*remove the attribute, and call this function once more:*/
          elmnt.removeAttribute("w3-include-html");
          includeHTML();
        }
      } 
      xhttp.open("GET", file, true);
      xhttp.send();
      /*exit the function:*/
      return;
    }
  }
}
</script>
</body>
<script>
includeHTML();
</script>
</html>