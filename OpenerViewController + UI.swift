//
//  OpenerViewController.swift
//  TotemVisualsTests
//
//  Created by Michael Roundcount on 4/12/20.
//  Copyright © 2020 Michael Roundcount. All rights reserved.
//

import UIKit

extension OpenerViewController {
    
    func setUpIcon() {
        totemIcon.layer.cornerRadius = 5
        totemIcon.clipsToBounds = true
        totemIcon.layer.borderWidth = 1.5
        totemIcon.layer.borderColor = UIColor.black.cgColor
    }
    
    func setUpHeaderTitle() {
        let title = "Welcome to Totem"
        let subTitle = "\n A comedy club in your pants"
        //creating in instance for the label. The attributes are defined as a dictionay.String.Key.Font as the key and the value is going to be an instance of UI font class.
        //We will add another key value for the text color
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSAttributedString.Key.foregroundColor : UIColor.black])
        
        let attributedSubTitle = NSMutableAttributedString(string: subTitle, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)])
        //Appending the two strings
        attributedText.append(attributedSubTitle)
        //create an empty paragraph for line spacing
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        //add the paragraph to the attributed text variable
        //You can also use the \n line breakers
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedText.length))
        
        titleLbl.numberOfLines = 0
        titleLbl.attributedText = attributedText
    }
    
    //Just set up a font size, color, and centering
    func setUpOrLabel() {
        orLbl.text = "Or"
        orLbl.font = UIFont.boldSystemFont(ofSize: 16)
        orLbl.textColor = UIColor(white: 0, alpha: 0.45)
        orLbl.textAlignment = .center
    }
        
    func setUpCreateAccountBtn() {
         createAccountBtn.setTitle("Create a new account", for: UIControl.State.normal)
         createAccountBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
         createAccountBtn.backgroundColor = UIColor(red: 165/255, green: 39/255, blue: 180/255, alpha: 1)
         createAccountBtn.layer.cornerRadius = 5
         createAccountBtn.clipsToBounds = true
     }
    
    func setUpEmailBtn() {
        signInEmailBtn.setTitle("Sign in with Email", for: UIControl.State.normal)
        signInEmailBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        signInEmailBtn.backgroundColor = UIColor(red: 165/255, green: 39/255, blue: 180/255, alpha: 1)
        signInEmailBtn.layer.cornerRadius = 5
        signInEmailBtn.clipsToBounds = true
        //looking for email icon..... for some reason there doesn't seem to be one built in even though there are like 15 different suns
        //signInEmailBtn.setImage(UIImage(named: "mail"), for: UIControl.State.normal)
        signInEmailBtn.imageView?.contentMode = .scaleAspectFit
        signInEmailBtn.tintColor = .white
        signInEmailBtn.imageEdgeInsets = UIEdgeInsets(top: 12, left: -35, bottom: 12, right: 0)
    }
    
    func setUpFacebookBtn() {
        signInFacebookBtn.setTitle("Sign in with Facebook", for: UIControl.State.normal)
        signInFacebookBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        signInFacebookBtn.backgroundColor = UIColor(red: 58/255, green: 85/255, blue: 159/255, alpha: 1)
        signInFacebookBtn.layer.cornerRadius = 5
        signInFacebookBtn.clipsToBounds = true
        signInFacebookBtn.setImage(UIImage(named: "icon-facebook"), for: UIControl.State.normal)
        signInFacebookBtn.imageView?.contentMode = .scaleAspectFit
        signInFacebookBtn.tintColor = .white
        signInFacebookBtn.imageEdgeInsets = UIEdgeInsets(top: 12, left: -15, bottom: 12, right: 0)
    }
    
    func setUpTermsLabel() {
        let attributedTermsText = NSMutableAttributedString(string: "By clicking 'Create a new account' you agree to our ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributedTermsSubTitle = NSMutableAttributedString(string: "Terms of Service", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)])
        
        attributedTermsText.append(attributedTermsSubTitle)
    }
    
    func setUpTermsBtn() {

        let attributedTermsText = NSMutableAttributedString(string: "By create an account you agree to our ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributedTermsSubTitle = NSMutableAttributedString(string: "Terms of Service", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.black])
        //The combination of the two attributed texts
        attributedTermsText.append(attributedTermsSubTitle)
        termsBtn.setAttributedTitle(attributedTermsText, for: UIControl.State.normal)
    }
}
