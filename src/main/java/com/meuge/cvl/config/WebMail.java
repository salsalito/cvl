package com.meuge.cvl.config;

import com.meuge.cvl.utils.FullTools;
import org.apache.commons.validator.routines.EmailValidator;
import org.apache.log4j.Logger;
import org.apache.log4j.helpers.Loader;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.net.URL;
import java.util.Date;
import java.util.Hashtable;
import java.util.Properties;
public class WebMail {
    final static Logger logger = Logger.getLogger(WebMail.class);

    public static void sendEmail(Session session, String toEmail, String subject, String body, String sentFr, String replyTo, String toCC, String toBCC){
        try
        {
            MimeMessage msg = new MimeMessage(session);
            //set message headers

            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            msg.addHeader("format", "flowed");
            msg.addHeader("Content-Transfer-Encoding", "8bit");

            msg.setFrom(new InternetAddress(sentFr, "NoReply"));

            msg.setReplyTo(InternetAddress.parse(replyTo, false));

            msg.setSubject(subject, "UTF-8");

            //msg.setText(body, "UTF-8");
            msg.setContent(body, "text/html; charset=utf-8");
            msg.setSentDate(new Date());

            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));

            if (toBCC != null) msg.setRecipients(Message.RecipientType.BCC, InternetAddress.parse(toBCC, false));
            if (toCC != null) msg.setRecipients(Message.RecipientType.CC, InternetAddress.parse(toCC, false));

            Transport.send(msg);

            logger.info("Email envoye ==> "+toEmail);
        }
        catch (Exception e) {
            logger.error("Email en erreur ==> "+toEmail);
        }
    }
    /**
     Outgoing Mail (SMTP) Server
     requires TLS or SSL: smtp.gmail.com (use authentication)
     Use Authentication: Yes
     Port for TLS/STARTTLS: 587
     */
    public static void main(Hashtable<String,String> args) {

        String fromEmail = null; //requires valid gmail id
        String password =null; // correct password for gmail id
        String toCC = null;
        String toBCC = null;
        Properties props = FullTools.getFileProperties("mail.properties");
        if (props != null){
            fromEmail = props.getProperty("loginGoogle");
            password = props.getProperty("passGoogle");
            toCC = EmailValidator.getInstance().isValid(props.getProperty("sentTOCC")) ? props.getProperty("sentTOCC") : null;
            toBCC = EmailValidator.getInstance().isValid(props.getProperty("sentTOBCC")) ? props.getProperty("sentTOBCC") : null;
            props.put("mail.smtp.host", props.getProperty("mail.smtp.host")); //SMTP Host
            props.put("mail.smtp.port", props.getProperty("mail.smtp.port")); //TLS Port
            props.put("mail.smtp.auth", props.getProperty("mail.smtp.auth")); //enable authentication
            props.put("mail.smtp.starttls.enable", props.getProperty("mail.smtp.starttls.enable")); //enable STARTTLS
            props.put("subject",props.getProperty("subject"));
            props.put("htmlbody",props.getProperty("htmlbody"));
        }

        //create Authenticator object to pass in Session.getInstance argument
        Session session = Session.getInstance(props, getAuth(fromEmail, password));

        if (session != null && EmailValidator.getInstance().isValid(props.getProperty("sentTO")))
            sendEmail(session, props.getProperty("sentTO"),replaceAll(args,props.getProperty("subject")),
                    replaceAll(args,props.getProperty("htmlbody")), props.getProperty("sentFrom"),
                    args.get("%Email%"), toCC, toBCC);
                  //  props.getProperty("replyTo"), toCC, toBCC);
    }

    private static String replaceAll(Hashtable<String,String> args, String myarg)
    {
        String retour=myarg;
        for (String mct : args.keySet())
            retour = retour.replaceAll(mct,args.get(mct));
        return retour;
    }

    private static Authenticator getAuth(final String fromEmail, final String password) {
        return new Authenticator() {
            //override the getPasswordAuthentication method
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        };
    }
}

