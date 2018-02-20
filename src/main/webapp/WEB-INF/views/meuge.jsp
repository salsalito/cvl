<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:useBean id="cons" class="com.meuge.cvl.utils.FullTools" scope="page"/>
<!DOCTYPE html>
<!-- ==============================
Project:        cv-lhermitte avec Responsive HTML Template Based On Twitter Bootstrap 3.3.4
Version:        1.0
Author:         Jimmy O
Email:          jobtan@gmail.com
Website:        http://www. cv-lhermitte.fr
================================== -->
<html lang="fr" class="no-js">
<!-- BEGIN HEAD -->
<head>
    <title> Christian Vivien Lhermitte Psychologue clinicien &amp; Psychothérapeute &amp; Psychanaliste </title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- Fonts!-->
  <!--
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/fonts/fontawesome/font-awesome.min.css' />" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/fonts/themify-icons/themify-icons.css' />" />
  !-->   
  <!-- Fonts Version HTML!-->
  
    <link rel="stylesheet" type="text/css" href="resources/fonts/fonts.css" />
    <link rel="stylesheet" type="text/css" href="resources/fonts/icons.css" />
    <link rel="stylesheet" type="text/css" href="resources/fonts/fontawesome/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/fonts/themify-icons/themify-icons.css" />

   
  <!-- Fonts Externe!-->
     <!--
    <link href="http://fonts.googleapis.com/css?family=Lobster:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,300italic,700|Source+Sans+Pro:400,400italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Oswald:400,300italic,700|Source+Sans+Pro:400,400italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Cabin:300,400,500,600,700" rel="stylesheet" type="text/css">
!-->
       <!-- GLOBAL MANDATORY STYLES
    <link href="<c:url value='/resources/vendor/simple-line-icons/css/simple-line-icons.css' />" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet" type="text/css" >
    !-->
    <!-- GLOBAL MANDATORY STYLES  Version HTML!-->
    <link href="resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">



    <!-- PAGE LEVEL PLUGIN STYLES
    <link href="<c:url value='/resources/css/animate.css' />" rel="stylesheet" />
    <link href="<c:url value='/resources/vendor/swiper/css/swiper.min.css' />" rel="stylesheet" type="text/css" />
    !-->
    <!-- PAGE LEVEL PLUGIN STYLES  Version HTML!-->
    <link href="resources/css/animate.css" rel="stylesheet" />
    <link href="resources/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css" />

  
      <!-- THEME STYLES 
    <link href="<c:url value='/resources/css/layout.css' />" rel="stylesheet" type="text/css" />
!-->
  
    <!-- THEME STYLES Version HTML!-->
        <link href="resources/css/layout.css" rel="stylesheet" type="text/css" />
    
    <!-- THEME MAIN 
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/main.css' />" />
        !-->
    <!-- THEME MAIN Version HTML!-->
        <link rel="stylesheet" type="text/css" href="resources/css/main.css" />
    
    <!-- Favicon
    <link rel="shortcut icon" href="<c:url value='/resources/favicon.ico' />" />
    !-->
    <!-- Favicon Version HTML!-->
    <link rel="shortcut icon" href="resources/favicon.ico" />
    <link rel="stylesheet" href="resources/trumbowyg/ui/trumbowyg.min.css">
  



</head>
<!-- END HEAD -->
<!-- BODY -->
<body id="body" data-spy="scroll" data-target=".header">

    <!--========== HEADER ==========-->
    <header class="header navbar-fixed-top">
        <!-- Navbar -->
        <nav class="navbar" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="menu-container js_nav-item">
                      <span class="btn btn-primary btn-w1800">
                        SITE EN CONSTRUCTION</span>
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="toggle-icon"></span>
                    </button>

                    <!-- Logo !-->
                    <div class="logo">
                        <!-- 
                             <img class="logo-img" src="<c:url value='/resources/img/logo.png' />" alt="Asentus Logo">


                         </a>!-->
                      <a  href="#body" >
                        <img class="logo-img" src="resources/img/Logo-2tetes-NB-info.png" alt="Logo CV Lhermitte">
                        <!--<img class="logo-img" src="<c:url value='/resources/img/Logo-2tetes-NB-info.png' />" alt="Logo CV Lhermitte">!-->
                      </a>
                        
                      
                    </div>
                    <!-- End Logo !-->




                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-collapse">
                    <div class="menu-container">
                        <ul class="nav navbar-nav navbar-nav-right">

                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">${cons.variables('homeTitreMenu',false)}</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">${cons.variables('aproposTitreMenu',false)}</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#paypal">${cons.variables('formReglementTitreMenu',false)}</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#infopratique">${cons.variables('infoTitreMenu',false)}</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#contact">${cons.variables('contactTitreMenu',false)}</a></li>
                        </ul>
                    </div>
                </div>
                <!-- End Navbar Collapse -->
            </div>
        </nav>
        <!-- Navbar -->
    </header>
    <!--========== END HEADER ==========-->
    <!--========== SLIDER ==========-->
    <div class="promo-block">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-sm-7 col-md-7 col-xs-7">
                    <!--div class="margin-b-20"!-->
                      <!--div!-->
                        <h1 class="promo-block-title">Christian Vivien <br /> LHERMITTE</h1>
                        <p class="promo-block-text">Psychologue clinicien - Psychothérapeute - Psychanaliste</p>
                    <!--/div!-->
                    <!-- lien social
                    <ul class="list-inline">
                        <li><a href="#" class="social-icons"><i class="icon-social-facebook"></i></a></li>
                        <li><a href="#" class="social-icons"><i class="icon-social-twitter"></i></a></li>
                        <li><a href="#" class="social-icons"><i class="icon-social-dribbble"></i></a></li>
                        <li><a href="#" class="social-icons"><i class="icon-social-behance"></i></a></li>
                        <li><a href="#" class="social-icons"><i class="icon-social-linkedin"></i></a></li>
                    </ul>
                    !-->
                </div>



                <div class="col-lg-5 col-sm-5 col-md-5 col-xs-5>
                    <!-- img class="full-width img-responsive" src="<c:url value='/resources/img/900x1600-5-NB.jpg' />" alt="Image"!-->
                    <img class="full-width img-responsive" src="resources/img/900x1600-5-NB.jpg" alt="Christian Vivien Lhermitte">
                </div>
            </div>
            <!--// end row -->
        </div>
    </div>
    <!--========== SLIDER ==========-->
    <!--========== PAGE LAYOUT ==========-->
    <!-- About -->
    <div id="about">
        <div class="container content-lg">
            <div class="row">

                <div class="col-sm-12 sm-margin-b-20">
                    <div class="section-seperator margin-b-20">
                        <div class="margin-b-20">
                            <div class="margin-b-20">
                                <h2>${cons.variables('aproposTitre',false)}</h2>
                                <p>${cons.variables('apropos1',false)}</p>
                                <p>${cons.variables('apropos2',false)}</p>
                                <p>${cons.variables('apropos3',false)}</p>
                                <p>${cons.variables('apropos4',false)}</p>
                            </div>
                        </div>
                    </div>
                </div>


            </div><!--// end row -->
        </div>
    </div>
    <!-- End About -->
    <!--
    <div class="bg-color-sky-light">
        <div class="container content-lg">
            !--> <!--Englobe le cadre -->
    <div id="paypal" >
        <div class="bg-color-sky-light">
            <div class="container content-lg">
                <div class="row margin-b-20">
                    <!--
                        Extra small (for smartphones .col-xs-*)
                        Small (for tablets .col-sm-*)
                        Medium (for laptops .col-md-*)
                        Large (for laptops/desktops .col-lg-*).
                    
                        -->
                    <div class="consult-form2"> <!--col-lg-6 col-sm-10 col-md-12 col-lg-12-->
                        
                        <form id="form_paiement" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                            <div class="info info-details__bloc info-details__bloc--cursus">
                                <h2>${cons.variables('formReglementTitre',false)}</h2>
                                <h3>
                                    <span>
                                        ${cons.variables('formReglementIntro',false)}
                                    </span>
                                </h3>
                                <ul class="info-details__bloc__content">
                                    ${cons.variables('formReglementListeIntro',false)}
                                </ul>



                                <table summary="règlement d'une ou plusieurs séance" class="table-responsive table-responsive-01">
                                    <caption>Information sur les séances à régler</caption>
                                    <colgroup align="char" char=",">
                                        <col width="120" />
                                        <col width="200" />
                                    </colgroup>

                                    <thead>
                                        <tr>
                                            <th id="entete1"><label for=e1>Prénom</label></th>
                                            <th id="entete2"><label for=e2>Nom</label></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td headers="entete1"><input type="hidden" name="on0" value="Prenom"><input id="prenom" type="text" name="os0" maxlength="200" placeholder="votre prénom" required form=form_paiement> </td>
                                            <td headers="entete2"><input type="hidden" name="on1" value="Nom"><input id="nom" type="text" name="os1" maxlength="200" placeholder="votre nom" required form=form_paiement> </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table summary="règlement d'une ou plusieurs séance" class="table-responsive table-responsive-01">
                                    <colgroup align="char" char=",">
                                        <col width="320" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th id="entete3"><label for=e3>Information séance(s)</label></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td headers="entete3"><input type="hidden" name="on2" value="Information seance(s)">
                                                                  <input id="infoseance" rows="1" type="text" name="os2" maxlength="200" placeholder="Séance(s) et date(s)" required form=form_paiement> </td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                                <input type="hidden" name="cmd" value="_s-xclick" />
                                <input type="hidden" name="hosted_button_id" value="LBJ5YRSYWLGLJ">
                                <!--  a rendre unique si on ne veut pas faire des factures en double ou être rejetter par paypal
                                     <input type="hidden" name="invoice" value="nomprenomcolle" />
                                -->
                                <input type="submit" value="REGLER" class="btn btn-primary btn-w180" name="submit" alt="Payer en ligne par paypal ou carte bleue" />
                            </div>
                        </form>
                    </div>
                </div>
            </div> <!--// end row -->
        </div>
    </div>
<!--
        </div>
    </div>
!--> <!--Englobe le cadre -->

    <!--
        <div class="bg-color-sky-light" data-auto-height="true">
            <div class="container content-lg">
                <div class="row row-space-2 margin-b-4">
                    <div class="col-md-3 col-sm-6 md-margin-b-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-mustache"></i>
                            </div>
                            <div class="service-info">
                                <h3>Psychotérapeuthe</h3>
                                <p class="margin-b-5">Je reçois des adolescents et des adultes, il pratique également des entretiens par téléphone
                                    et des visio-entretiens.</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 md-margin-b-4">
                        <div class="service bg-color-base wow zoomIn" data-height="height" data-wow-duration=".3" data-wow-delay=".1s">
                            <div class="service-element">
                                <i class="service-icon color-white icon-screen-tablet"></i>
                            </div>
                            <div class="service-info">
                                <h3 class="color-white">Psychologue clinicien</h3>
                                <p class="color-white margin-b-5">Psychologue clinicien d’orientation analytique, l’expérience acquise pendant 25 ans à l’écoute des patients de l’unité
                                    psychiatrique de Fleury-Mérogis lui permet d’aborder les difficultés les plus variées chez des patients aux organisations
                                    psychiques complexes.</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 sm-margin-b-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-chemistry"></i>
                            </div>
                            <div class="service-info">
                                <h3>Orientation analytique</h3>
                                <p class="margin-b-5">Le patient peut désirer venir consulter pour des symptômes liés à un événement difficile, à un traumatisme ou pour des
                                    troubles dont l’origine n’est pas connue.</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-badge"></i>
                            </div>
                            <div class="service-info">
                                <h3>Diplomes</h3>
                                <p class="margin-b-5">Maîtrise de psy</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>


    !-->
    <!-- End Experience !-->
    <!-- Info Pratique -->
    <div id="infopratique">
        <div class="container content-lg">
            <div class="row margin-b-40">
                <div class="col-sm-6" id="infopratique1">
                    <h2>${cons.variables('infoTitre',false)}</h2>
                        ${cons.variables('infoDescription1',false)}
                </div>
            </div><!--// end row -->

            <div class="row">
                <div id="infopratique2" class="col-sm-6 sm-margin-b-50">

                    <div class="info-details__bloc info-details__bloc--spokenLanguage">
                        <h3><span class="icon-earth" aria-hidden="true"></span>
                            Langues parlées
                        </h3>
                        <div class="info-details__bloc__content">
                            <p>Français</p>
                            <p>Anglais</p>
                            <p>Allemand</p>
                        </div>
                    </div>


                    <div class="info-details__bloc info-details__bloc--formation">
                        <h3><span class="icon-graduation" aria-hidden="true"></span>
                            Diplôme et formation
                        </h3>
                        <ul class="info-details__bloc__content">
                            <li><p class="diplome">Psychologue clinicien</p><p>Paris 7  - <span class="diplome-annee">1992</span></p></li>
                        </ul>
                    </div>
                    <div class="info-details__bloc info-details__bloc--cursus">
                        <h3><span class="icon-livre" aria-hidden="true"></span>Cursus</h3>
                        <div class="info-details__bloc__content">
                            <ul>
                                <li><p class="diplome">Unité psychiatrique</p><p>Fleury-Mérogis<br />Entre 1992 et 2017</p></li>
                                <li><p class="diplome">Groupe de paroles </p><p>collèges des hauts de seine<br />Entre 2000 et 2004</p></li>
                                <li><p class="diplome">Psychologue</p><p>Hôpital de jour rue de Douay<br />Entre 1991 et 1992</p></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div  class="col-sm-6 sm-margin-b-50">
                    <div id="infopratique3" class="info-details__bloc info-details__bloc--consultation">
                        <h3><span class="icon-credit" aria-hidden="true"></span>Modes de règlement</h3>
                        <ul class="list-inline">
                            <li class="has-bubble"><span class="praticien__option__expl bubble">Sont acceptés les chèques et espèces ainsi que les règlements par paypal ou carte bleue.</span></li>
                        </ul>
                    </div>
                    <div id="infopratique4" class="info-details__bloc info-details__bloc--consultation">
                        <h3><span class="icon-stethoscope" aria-hidden="true"></span>Consultations proposées</h3>
                        <p class="info-details__bloc__content"> <span>Prise en charge des adultes, couples et enfants ( sauf nourrissons ).</span><br></p>
                    </div>

                    <div id="infopratique5" class="info-details__bloc info-details__bloc--access">
                        <h3><span class="icon-location" aria-hidden="true"></span>Détails d'accès au cabinet</h3>

                        <ul class="info-details__bloc__content">
                            <li><p><span>Bâtiment:</span>  65, Boulevard des Invalides</p></li>
                            <li><p> Interphone : Cabinet médical</p></li>
                            <li><p><span>Etage:</span>  RDC <span>Porte:</span>  RDC à gauche après l'interphone</p></li>
                        </ul>
                    </div>


                    <div id="infopratique6" class="bloc transportBloc transport-list">
                        <h3><span class="icon-directions" aria-hidden="true"></span>Moyens de Transport</h3>
                        <h4><span class="lineType ratp-logo-metro" aria-hidden="true"></span>Métro</h4>
                        <ul class="info-details__bloc__content">
                            <li><h4><span class="name">Duroc</span></h4>
                                <ul class="lines">
                                    <li><span class="line"><img style="height: 30px;line-height: 30px;" src="resources/img/ratp-metro-10.jpg" alt="Ligne 10" /> ligne 10</span></li>
                                    <li><span class="line"><img style="height: 30px;line-height: 30px;" src="resources/img/ratp-metro-13.png" alt="Ligne 13" /> ligne 13</span></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <div id="infopratique7" class="info-details__bloc info-details__bloc--infopratiques">
                        <h3><span class="icon-vcard" aria-hidden="true"></span>Téléphone</h3>
                        <ul class="lines">
                            <li><span class="line">Secrétariat : 01 44 38 90 90</span></li>
                            <li><span class="line">Portable : 06 14 07 52 35</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--// end row -->
            <div id="googlemap" class="col-md-6 col-xs-10 md-margin-b-60">
                <!-- <h2 class="form-01__title"></h2> !-->
                <h2> Carte de géolocalisation</h2>
                <iframe title="Carte de géolocalisation" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.566177230962!2d2.314486715830423!3d48.84741310943334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e6702dee0c0ecd%3A0x8749c111d28c6237!2s65+Boulevard+des+Invalides%2C+75007+Paris!5e0!3m2!1sfr!2sfr!4v1518373625968" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

                <!--moyenne carte
                         Petitee
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.566177230962!2d2.314486715830423!3d48.84741310943334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e6702dee0c0ecd%3A0x8749c111d28c6237!2s65+Boulevard+des+Invalides%2C+75007+Paris!5e0!3m2!1sfr!2sfr!4v1518373625968" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>

                Moyenne
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.566177230962!2d2.314486715830423!3d48.84741310943334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e6702dee0c0ecd%3A0x8749c111d28c6237!2s65+Boulevard+des+Invalides%2C+75007+Paris!5e0!3m2!1sfr!2sfr!4v1518373625968" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

                Grande
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.566177230962!2d2.314486715830423!3d48.84741310943334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e6702dee0c0ecd%3A0x8749c111d28c6237!2s65+Boulevard+des+Invalides%2C+75007+Paris!5e0!3m2!1sfr!2sfr!4v1518373625968" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
                !-->
            </div>
        </div>
    </div>
    <!-- End Info Pratique -->
    <!-- Contact -->
    <div id="contact">
        <div class="bg-color-sky-light">
            <div class="container content-lg">
                <div class="row margin-b-40">
                    <!--
                        <div class="col-sm-6">
                            <h2>Contactez moi</h2>

                            <form:form method="POST" action="saveUserMan" modelAttribute="formulaire">
                                Prenom : <form:input id="first-name" class="input100" type="text" name="first-name" placeholder="First name" path="firstName" />
                                Nom :  <form:input class="input100" type="text" name="last-name" placeholder="Last name" path="lastName" />
                                Mail :   <form:input id="email" class="input100" type="text" name="email" placeholder="Eg. example@email.com" path="mail" />
                                Phone : <form:input id="phone" class="input100" type="text" name="phone" placeholder="Eg. +1 800 000000" path="phone" />
                                Message :  <form:textarea id="message" class="input100" name="message" placeholder="Write us a message" path="message"></form:textarea>
                                <input type="submit"  value="Envoyer"/>
                            </form:form>

                        </div>
                        !-->
                    <!-- form-01 -->
                    <div class="form-01 consult-form js-consult-form__content">
                        <h2 class="form-01__title">Formulaire de contact</h2>
                        <form:form id="form_contact"  class="form-01__form" method="POST" action="saveUserMan" modelAttribute="formulaire" >
                            <div class="form__item form__item--03">
                                <form:input id="firstName" type="text" name="first-name" placeholder="Prénom"  path="firstName" required="required" />
                            </div>
                            <div class="form__item form__item--03">
                                <form:input id="lastName" type="text" name="last-Name" placeholder="Nom" path="lastName" required="required"  />
                            </div>
                            <div class="form__item form__item--03">
                                <form:input id="phone" type="text" name="phone" placeholder="+33 123456789"  path="phone"  required="required" />
                            </div>
                            <div class="form__item form__item--03">
                                <form:input id="mail" type="email" name="email" placeholder="exemple@email.com"  path="mail" required="required" />
                            </div>
                            <div class="form__item">
                                <form:textarea id="message" rows="3" name="message" placeholder="Ecrivez votre message" path="message" required="required"  />
                            </div>
                            <div  class="form__button">
                                <input id="submit_contact" type="submit" value="Envoyer" class="btn btn-primary btn-w180"  />
                            </div>

                        </form:form>
                    </div><!-- End / form-01 -->
                </div>
                <!--// end row -->
                <!--
                            <div class="row">
                                <div class="col-md-3 col-xs-6 md-margin-b-30">
                                    <h4>Location</h4>
                                    <a href="#">65 Boulevard des invalides<br/>75007 PARIS<br/>Métro Duroc</a>
                                </div>
                                <div class="col-md-3 col-xs-6 md-margin-b-30">
                                    <h4>Téléphone</h4>
                                    <a href="#">01 44 38 90 90  /  06 14 07 52 35</a>
                                </div>
                                <div class="col-md-3 col-xs-6">
                                    <h4>Email</h4>
                                    <a href="mailto:#">cvlhermitte@gmail.com</a>
                                </div>
                                <div class="col-md-3 col-xs-6">
                                    <h4>Web</h4>
                                    <a href="#">www.cv-lhermitte.fr</a>
                                </div>
                            </div>
                          !-->
                <!--// end row -->
            </div>
        </div>
    </div>
    <!-- End Contact -->
    <!-- Clients -->
    <!--
    <div class="bg-color-sky-light">
        <div class="content-lg container">

            <div class="swiper-slider swiper-clients">

                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img class="swiper-clients-img" src="<c:url value='/resources/img/clients/01.png' />" alt="Clients Logo">
                    </div>
                    <div class="swiper-slide">
                        <img class="swiper-clients-img" src="<c:url value='/resources/img/clients/02.png' />" alt="Clients Logo">
                    </div>
                    <div class="swiper-slide">
                        <img class="swiper-clients-img" src="<c:url value='/resources/img/clients/03.png' />" alt="Clients Logo">
                    </div>
                    <div class="swiper-slide">
                        <img class="swiper-clients-img" src="<c:url value='/resources/img/clients/04.png' />" alt="Clients Logo">
                    </div>
                    <div class="swiper-slide">
                        <img class="swiper-clients-img" src="<c:url value='/resources/img/clients/05.png' />" alt="Clients Logo">
                    </div>
                    <div class="swiper-slide">
                        <img class="swiper-clients-img" src="<c:url value='/resources/img/clients/06.png' />" alt="Clients Logo">
                    </div>
                </div>

            </div>

        </div>
    </div>
    !-->
    <!-- End Clients !-->
    <!-- Promo Banner !-->
    <!--
    <div class="promo-banner parallax-window" data-parallax="scroll" data-image-src="<c:url value='/resources/img/1920x1080/01.jpg' />">
        <div class="container-sm content-lg">
            <h2 class="promo-banner-title">Resultats</h2>
            <p class="promo-banner-text">Les résultats se verront au fur et à mesure des séances dans le cadre d'expériences diverses telles que des macro séances de 10 minutes permettant au sujet de se voir au dela de sa conscience.</p>
        </div>
    </div>
    !-->
    <!-- End Promo Banner !-->
    <!--========== END PAGE LAYOUT ==========-->
    <!--========== FOOTER ==========-->
    <footer class="footer">
        <div class="content container">
            <div class="row">
                <div class="col-xs-6">
                    <!--img class="footer-logo" src="<c:url value='/resources/img/logo.png' />" alt="CV Lhermitte Logo"!-->
                    <img class="footer-logo" src="resources/img/logo.png" alt="CV Lhermitte Logo">
                </div>
                <div class="col-xs-6 text-right sm-text-left">
                    <p class="margin-b-0"><a class="fweight-700" href="http://cv-lhermitte.fr">Chritian Vivian</a> Lhermitte</p>
                </div>
            </div>
            <!--// end row !-->
        </div>
    </footer>
    <!--========== END FOOTER ==========!-->
    <!-- Back To Top !-->
    <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

    <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) !-->
    <!-- CORE PLUGINS
    <script src="<c:url value='/resources/vendor/jquery.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/vendor/jquery-migrate.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.min.js' />" type="text/javascript"></script>
    -->
    <!-- CORE PLUGINS Versioon HTML-->
    <script src="resources/vendor/jquery.min.js" type="text/javascript"></script>
    <script src="resources/vendor/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <!-- PAGE LEVEL PLUGINS
    <script src="<c:url value='/resources/vendor/jquery.easing.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/vendor/jquery.back-to-top.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/vendor/jquery.smooth-scroll.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/vendor/jquery.wow.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/vendor/jquery.parallax.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/vendor/jquery.appear.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/vendor/swiper/js/swiper.jquery.min.js' />" type="text/javascript"></script>
    -->
    <!-- PAGE LEVEL PLUGINS Version HTML-->
    <script src="resources/vendor/jquery.easing.js" type="text/javascript"></script>
    <script src="resources/vendor/jquery.back-to-top.js" type="text/javascript"></script>
    <script src="resources/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
    <script src="resources/vendor/jquery.wow.min.js" type="text/javascript"></script>
    <script src="resources/vendor/jquery.parallax.min.js" type="text/javascript"></script>
    <script src="resources/vendor/jquery.appear.js" type="text/javascript"></script>
    <script src="resources/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>


    <!-- PAGE LEVEL SCRIPTS
    <script src="<c:url value='/resources/js/layout.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/js/components/progress-bar.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/js/components/swiper.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/js/components/wow.min.js' />" type="text/javascript"></script>
    -->
    <!-- PAGE LEVEL SCRIPTS Version HTML-->
    <script src="resources/js/layout.min.js" type="text/javascript"></script>
    <script src="resources/js/components/progress-bar.min.js" type="text/javascript"></script>
    <script src="resources/js/components/swiper.min.js" type="text/javascript"></script>
    <script src="resources/js/components/wow.min.js" type="text/javascript"></script>
    <!-- ajouter pour gérer l'editeur trumbowyg-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-3.2.1.min.js"><\/script>')</script>
    <script src="resources/trumbowyg/trumbowyg.min.js" type="text/javascript"></script>
    <!-- fin ajouter pour gérer l'editeur trumbowyg-->
    <script type="text/javascript">
    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i = 0; i < vars.length; i++) {
            var pair = vars[i].split("=");
            if (pair[0] == variable) { return pair[1]; }
        }
        return (false);
    }

    //2°) test avec paypal devant le formulaire paypal
    if (getQueryVariable("paypal")) {
        var retour = getQueryVariable("paypal");
        //window.location.hash = 'http://www.cv-lhermitte.fr/#contact';
        window.location.hash = 'contact';
        if (retour == "paid")
            alert("Vous avez payé une séance.");
        else
            alert("Le paiement est annulé.");
    } else {

    }
    </script>

    <script type='text/javascript'>
        //c'est du jquery
 // On attend que le DOM soit prêt
 $(document).ready(function(){
// Dès que le document est soumis...
     $('#form_contact').submit(function () {
 // On affiche une fenêtre de confirmation
 var c = confirm("Confirmez-vous l'envoi des informations de contact?");
 // On retourne la réponse de l'utilisateur
 return c;
});

$('#form_paiement').submit(function () {
    // On affiche une fenêtre de confirmation
    var nom = document.getElementById("nom").value;
    var prenom = document.getElementById("prenom").value;
    
    var infoseance = document.getElementById("infoseance").value;
    var c = confirm("Confirmez-vous la demande de règlement pour " + nom + " " + prenom + " ?\n" + infoseance);
    // On retourne la réponse de l'utilisateur
    return c;
});
$('#infopratique1').trumbowyg();
$('#infopratique2').trumbowyg();
$('#infopratique3').trumbowyg();
$('#infopratique4').trumbowyg();
$('#infopratique5').trumbowyg();
$('#infopratique6').trumbowyg();
$('#infopratique7').trumbowyg();
 });
    </script>
</body>
<!-- END BODY -->
</html>
