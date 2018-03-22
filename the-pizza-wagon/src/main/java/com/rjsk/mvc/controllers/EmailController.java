package com.rjsk.mvc.controllers;

import java.io.IOException;
import java.io.InputStream;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmailController {

	static String emailFromRecipient, emailSubject, emailMessage, emailName;
	static final String emailToRecipient = "YOUR_QUERY_EMAIL";

	static ModelAndView modelViewObj;

	@Autowired
	private JavaMailSender mailSenderObj;

	@RequestMapping(value = {"/contactus", "emailForm"}, method = RequestMethod.GET)
	public ModelAndView showEmailForm(ModelMap model) {
		modelViewObj = new ModelAndView("emailForm");
		return  modelViewObj;		
	}

	// This Method Is Used To Prepare The Email Message And Send It To The Client
	@RequestMapping(value = "sendEmail", method = RequestMethod.POST)
	public ModelAndView sendEmailToClient(HttpServletRequest request, final @RequestParam CommonsMultipartFile attachFileObj) {

		// Reading Email Form Input Parameters		
		emailName = request.getParameter("name");
		emailSubject = request.getParameter("subject");
		emailMessage = request.getParameter("message");
		emailFromRecipient = request.getParameter("mailFrom");

		// Logging The Email Form Parameters For Debugging Purpose
		//System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + ", Message?= " + emailMessage + "\n");

		mailSenderObj.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");				
				mimeMsgHelperObj.setTo(emailToRecipient);
		        mimeMsgHelperObj.setFrom(emailFromRecipient, emailName);;
		        mimeMsgHelperObj.setReplyTo(emailFromRecipient, emailName);;
				mimeMsgHelperObj.setText("Message by "+emailName+"("+emailFromRecipient+"),\n"+emailMessage);
				mimeMsgHelperObj.setSubject(emailSubject);

				// Determine If There Is An File Upload. If Yes, Attach It To The Client Email				
				if ((attachFileObj != null) && (attachFileObj.getSize() > 0) && (!attachFileObj.equals(""))) {
					System.out.println("\nAttachment Name?= " + attachFileObj.getOriginalFilename() + "\n");
					mimeMsgHelperObj.addAttachment(attachFileObj.getOriginalFilename(), new InputStreamSource() {					
						public InputStream getInputStream() throws IOException {
							return attachFileObj.getInputStream();
						}
					});
				} else {
					System.out.println("\nNo Attachment Is Selected By The User. Sending Text Email!\n");
				}
			}
		});
		//System.out.println("\nMessage Send Successfully.... Hurrey!\n");

		modelViewObj = new ModelAndView("success","messageObj","Thank You! Your Email Has Been Sent!");
		return  modelViewObj;	
	}
}