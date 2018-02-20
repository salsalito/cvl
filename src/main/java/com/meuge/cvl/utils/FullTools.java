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

    final static Logger logger = Logger.getLogger(FullTools.class);

    public static String variables(String variableToCheck)
    {
        return getMessage(variableToCheck, true);
    }

    public static String variables(String variableToCheck, boolean emptyOnError)
    {
        return getMessage(variableToCheck, emptyOnError);
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
