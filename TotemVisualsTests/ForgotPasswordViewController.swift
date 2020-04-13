//
//  ForgotPasswordViewController.swift
//  TotemVisualsTests
//
//  Created by Michael Roundcount on 4/12/20.
//  Copyright © 2020 Michael Roundcount. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var resetBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        setUpEmailTxt()
        setUpResetBtn()
    }
    
    //Dismissing the view and navigate back to the welcome in scene
    //Remember the action is "show"
    @IBAction func dismissionAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
