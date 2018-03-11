package com.meuge.cvl.utils;

import org.apache.log4j.Logger;
import org.apache.log4j.helpers.Loader;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.util.Properties;


public class FullTools {

    public  FullTools(){
        setLogFile();
    }
    final static Logger logger = Logger.getLogger(FullTools.class);

    public static String variables(String variableToCheck)
    {
        return getMessage(variableToCheck, true);
    }

    public static String variables(String variableToCheck, boolean emptyOnError)
    {
        return getMessage(variableToCheck, emptyOnError);
    }
    static void setLogFile() {
        Properties isIn = getFileProperties("application.properties");
        Resource resource = new ClassPathResource("application.properties");
        try {
            File dossierlog = resource.getFile();
            if (isIn != null && isIn.getProperty("log4j.repertoirelinux")!= null)
                dossierlog = isIn != null && isIn.getProperty("log4j.repertoirelinux") != null ?
                        new File(isIn.getProperty("log4j.repertoirelinux")) : dossierlog;
            if (!(dossierlog.exists() && dossierlog.isDirectory()) && isIn.getProperty("log4j.repertoirelinux")!= null)
            {
                try {
                    dossierlog = isIn != null && isIn.getProperty("log4j.repertoirewin") != null ?
                            new File(isIn.getProperty("log4j.repertoirewin")) : dossierlog;
                    if ((dossierlog.exists() && dossierlog.isDirectory()) && isIn.getProperty("log4j.repertoirewin")!= null)
                        System.setProperty("logfile.name",isIn.getProperty("log4j.repertoirewin")+"/meuge.log");
                }
                catch (   NullPointerException e2) {
                    // on ne peut rien faire car pas de log
                }
            }
            else
            {
                System.setProperty("logfile.name",isIn.getProperty("log4j.repertoirelinux")+"/meuge.log");
            }

        } catch (IOException  | NullPointerException e1) {
            logger.error("Fichier variabilisé en erreur");
        }

    }
    public static String getMessage(String message, boolean emptyOnError) {

        String retour = null;
        try {
            JSONParser parser = new JSONParser();
            Properties isIn = getFileProperties("application.properties");
            Resource resource = new ClassPathResource("variables.json");
            File fileToLoad = resource.getFile();
            if (isIn != null && isIn.getProperty("variables")!= null)
                fileToLoad = isIn != null && isIn.getProperty("variables") != null ?
                        new File(isIn.getProperty("variables")) : fileToLoad;
            if ( !fileToLoad.isFile() && isIn.getProperty("variables")!= null)
            try {
                fileToLoad = isIn != null && isIn.getProperty("variableswin") != null ?
                        new File(isIn.getProperty("variableswin")) : fileToLoad;
                if (!fileToLoad.isFile() && isIn.getProperty("variableswin")!= null)
                    {
                        logger.error("Fichier variableswin absent");
                        try {
                            fileToLoad = isIn != null && isIn.getProperty("variableslinux") != null ?
                                    new File(isIn.getProperty("variableslinux")) : fileToLoad;
                            if (!fileToLoad.isFile() && isIn.getProperty("variableswin")!= null)
                                logger.error("Fichier variableslinux absent");
                        }
                        catch (   NullPointerException e2) {
                            logger.error("Fichier variableslinux absent");
                        }
                    }
                }
                catch (NullPointerException e3) {
                    logger.error("Fichier variableswin absent");

                }

            JSONArray a = (JSONArray) parser.parse(new FileReader(fileToLoad));
            for (Object o : a) {
                JSONObject monObjet = (JSONObject) o;
                retour = (String) monObjet.get(message);
            }
        } catch (IOException | ParseException | NullPointerException e1) {
            logger.error("Fichier variabilisé en erreur");
        }
        return retour == null ? emptyOnError  ? "" : "["+message+"]" : retour;
    }

    public static Properties getFileProperties (String fichier) {
        Properties props = null;
        try {
            URL input = Loader.getResource(fichier);
            props = new Properties();
            props.load(input.openStream());
        } catch (IOException | NullPointerException e1) {
            logger.error("Fichier "+ fichier+" non trouve dans les ressources");
        }
        return props ;
    }
}
