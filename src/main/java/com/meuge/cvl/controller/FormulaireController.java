package com.meuge.cvl.controller;

import com.meuge.cvl.config.WebMail;
import com.meuge.cvl.model.Formulaire;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;

import java.util.Hashtable;

@Controller
public class FormulaireController {
    final static Logger logger = Logger.getLogger(FormulaireController.class);
    @ModelAttribute("formulaire")
    public Formulaire setUpFormulaireForm() {
        return new Formulaire();
    }


    @GetMapping("/")
    public String registration() {

        return "meuge";
    }
    /*
        *  Save user object
        */
    @PostMapping("/saveUserMan")
    public String saveUser(@ModelAttribute("user") Formulaire user, Model model) {

        Hashtable<String,String> args = new Hashtable();
        args.put("%FirstName%",user.getFirstName());
        args.put("%LastName%",user.getFirstName());
        args.put("%Message%",user.getMessage());
        args.put("%Phone%" , user.getPhone());
        args.put("%Email%" , user.getMail());
        WebMail.main(args);
        logger.info("FirstName : " + user.getFirstName());
        logger.info("LastName : " + user.getLastName());
        logger.info("Message : " + user.getMessage());
        logger.info("Phone : " + user.getPhone());
        logger.info("Email : " + user.getMail());

        return "meuge";
    }



}
