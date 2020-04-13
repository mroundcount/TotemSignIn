//
//  SignUpViewController.swift
//  TotemVisualsTests
//
//  Created by Michael Roundcount on 4/12/20.
//  Copyright © 2020 Michael Roundcount. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var selectTextLbl: UILabel!
    @IBOutlet weak var usernameContainerView: UIView!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    
    var image: UIImage? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func setUpUI() {
        setUpTitleTextLbl()
        setUpAvatar()
        setUpUsernameTxt()
        setUpEmailTxt()
        setUpPasswordTxt()
        setUpSignUpBtn()
        setUpSignInBtn()
    }
    
    @IBAction func dismissionAction(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
