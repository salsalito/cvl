package com.meuge.cvl.controller;

import com.meuge.cvl.config.WebMail;
import com.meuge.cvl.model.Formulaire;
import com.meuge.cvl.utils.FullTools;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class FormulaireController {
    final static Logger logger = Logger.getLogger(FormulaireController.class);
    final static char separator = '|';
    @ModelAttribute("formulaire")
    public Formulaire setUpFormulaireForm() {
        return new Formulaire();
    }


    @GetMapping("/")
    public String registration() {

        return "meuge";
    }


    @RequestMapping(value = "/getSearchResult", method = RequestMethod.POST)
    public @ResponseBody String getTime(@RequestBody MyDatas hostingForm) {
        String result = getId().toString();
        hostingForm.setId(result);
        writeFile(hostingForm);
        return hostingForm.getId();
    }

    protected Map<String,String> referenceData()  {

        Map<String,String> country = new LinkedHashMap<String,String>();
        JSONParser parser = new JSONParser();
        Resource resource = new ClassPathResource("variables.json");

        try {
            Object obj = parser.parse(new FileReader(resource.getFile().getPath()));
            JSONArray myJ = (JSONArray) obj;
            JSONObject jsonObject = (JSONObject) myJ.get(0);
            for(Iterator iterator = jsonObject.keySet().iterator(); iterator.hasNext();) {
                String key = (String) iterator.next();
                country.put(key,key);
            }
        } catch (IOException  | ParseException e) {
            logger.info("Erreur JSON");
        }

        return country;
    }

    private synchronized Serializable getId()
    {
        return System.currentTimeMillis();
    }

    private synchronized void writeFile (MyDatas mct)  {
        Properties props = FullTools.getFileProperties("application.properties");
        String format = File.separator + new SimpleDateFormat("yyyy-MM-dd").format(new Date())+"_paiement.csv";
        String meuge = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(new Date()) + "|"+
                stringToCsv((mct.getFirstname()+separator+mct.getLastname()+separator+mct.getInfoseance()+separator+mct.getId()))+System.getProperty("line.separator");
        if (props != null) {
            try {
                Files.write(Paths.get(props.getProperty("fichierOut") + format), meuge.getBytes(StandardCharsets.UTF_8),
                        StandardOpenOption.CREATE, StandardOpenOption.APPEND);
            } catch (IOException e) {
                logger.error("Impossible d'neregistrer dans le fichier : "+props.getProperty("fichierOut") + format);
            }
        }
    }
    /*
     *  Save user object
     */
    @PostMapping("/saveUserMan")
    public String saveUser(@ModelAttribute("user") Formulaire user, Model model) {

        Hashtable<String,String> args = new Hashtable();
        args.put("%FirstName%",user.getFirstName());
        args.put("%LastName%",user.getLastName());
        args.put("%Message%",user.getMessage());
        args.put("%Phone%" , user.getPhone());
        args.put("%Email%" , user.getMail());
        WebMail.main(args);
        writeFileContact(user);
        logger.info("FirstName : " + user.getFirstName());
        logger.info("LastName : " + user.getLastName());
        logger.info("Message : " + user.getMessage());
        logger.info("Phone : " + user.getPhone());
        logger.info("Email : " + user.getMail());

        return "meuge";
    }

    private synchronized void writeFileContact (@ModelAttribute("user") Formulaire user)  {
        Properties props = FullTools.getFileProperties("application.properties");
        String format = File.separator + new SimpleDateFormat("yyyy-MM-dd").format(new Date())+"_contact.csv";
        String meuge = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(new Date()) + "|"+
                stringToCsv((user.getFirstName()+ separator+user.getLastName()+separator+user.getPhone()+separator+user.getMail()+separator+user.getMessage()))+System.getProperty("line.separator");
        if (props != null) {
            try {
                Files.write(Paths.get(props.getProperty("fichierOut") + format), meuge.getBytes(StandardCharsets.UTF_8),
                        StandardOpenOption.CREATE, StandardOpenOption.APPEND);
            } catch (IOException e) {
                logger.error("Impossible d'neregistrer dans le fichier : "+props.getProperty("fichierOut") + format);
            }
        }
    }

    private String stringToCsv (String sChamps) {
        String sResult =    sChamps.replaceAll("\r\n","¤");
        return sResult;
    }

}
