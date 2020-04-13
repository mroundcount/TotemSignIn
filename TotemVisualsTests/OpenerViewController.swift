//
//  OpenerViewController.swift
//  TotemVisualsTests
//
//  Created by Michael Roundcount on 4/12/20.
//  Copyright © 2020 Michael Roundcount. All rights reserved.
//

import UIKit

class OpenerViewController: UIViewController {
    
    @IBOutlet weak var totemIcon: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var createAccountBtn: UIButton!
    @IBOutlet weak var signInEmailBtn: UIButton!
    @IBOutlet weak var orLbl: UILabel!
    @IBOutlet weak var signInFacebookBtn: UIButton!
    @IBOutlet weak var termsBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        setUpIcon()
        setUpHeaderTitle()
        setUpOrLabel()
        setUpFacebookBtn()
        setUpEmailBtn()
        setUpCreateAccountBtn()
        setUpTermsBtn()
    }
}
