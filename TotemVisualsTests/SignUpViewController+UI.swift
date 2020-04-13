//
//  SignUpViewController+UI.swift
//  TotemVisualsTests
//
//  Created by Michael Roundcount on 4/12/20.
//  Copyright © 2020 Michael Roundcount. All rights reserved.
//

import UIKit
import Foundation

extension SignUpViewController {
    
    func setUpTitleTextLbl() {
        let title = "Sign Up"
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSAttributedString.Key.foregroundColor : UIColor.black])
        
        titleTextLbl.attributedText = attributedText
    }

    func setUpAvatar() {
        avatar.layer.cornerRadius = 50
        avatar.clipsToBounds = true
        avatar.layer.borderWidth = 0.5
        avatar.layer.borderColor = UIColor.black.cgColor
        //adding actions to respond to tap gesture
        avatar.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(presentPicker))
        avatar.addGestureRecognizer(tapGesture)
    }
    
    @objc func presentPicker() {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        //enable methods in the UIImage picker delegate
        picker.delegate = self
        //Making the image fill the entire UIIMage space
        avatar.contentMode = . scaleAspectFill
        self.present(picker, animated: true, completion: nil)
    }
    
    func setUpUsernameTxt() {
        //build a wall! Caugh cuagh make a border
        usernameContainerView.layer.borderWidth = 1
        //note the type for border color is cgColor
        usernameContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        usernameContainerView.layer.cornerRadius = 3
        usernameContainerView.clipsToBounds = true
        //we don't need the border for the full name text field. Tthis is because the container came with a border
        usernameTxt.borderStyle = .none
        //coding in the placeholder string with the same key value pairing attributed string just like on ViewController+UI.
        let placeholderAttr = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        usernameTxt.attributedPlaceholder = placeholderAttr
        usernameTxt.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    func setUpEmailTxt() {
        emailContainerView.layer.borderWidth = 1
        emailContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        emailContainerView.layer.cornerRadius = 3
        emailContainerView.clipsToBounds = true
        
        emailTxt.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        emailTxt.attributedPlaceholder = placeholderAttr
        emailTxt.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setUpPasswordTxt() {
        //the encryption text should be done in storyboard
        passwordContainerView.layer.borderWidth = 1
        passwordContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        passwordContainerView.layer.cornerRadius = 3
        passwordContainerView.clipsToBounds = true
        
        passwordTxt.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Password (6+ Characters)", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        passwordTxt.attributedPlaceholder = placeholderAttr
        passwordTxt.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setUpSignUpBtn() {
        signUpBtn.setTitle("Sign Up", for: UIControl.State.normal)
        signUpBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        signUpBtn.backgroundColor = UIColor(red: 165/255, green: 39/255, blue: 180/255, alpha: 1)
        signUpBtn.layer.cornerRadius = 5
        signUpBtn.clipsToBounds = true
        signUpBtn.setTitleColor(.white, for: UIControl.State.normal)
        
    }
    
    func setUpSignInBtn() {
        let attributedText = NSMutableAttributedString(string: "Already have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributedSubText = NSMutableAttributedString(string: "Sign In", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.black])
        
        attributedText.append(attributedSubText)
        signInBtn.setAttributedTitle(attributedText, for: UIControl.State.normal)
    }
    //Dismissing the keyboard.
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

extension SignUpViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //display the photo on the UIIMage view. Use editedImage so if the photo is edited this info will return on the edited photo.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imageSelected = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        {
            image = imageSelected
            avatar.image = imageSelected
        }
        //If the user does not update their avatar. It will return to the default image
        if let imageOrigional = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            image = imageOrigional
            avatar.image = imageOrigional
        }
        picker.dismiss(animated: true, completion: nil)
    }
        
}
