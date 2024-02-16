//
//  viewEmailViewController.swift
//  navegacion
//
//  Created by Jessi on 16/02/24.
//

import UIKit

enum ProviderType: String
{
    case basic
}
class viewEmailViewController: UIViewController
{
    
    @IBOutlet weak var emailLable: UITextField!
    @IBOutlet weak var ProvedorLable: UITextField!
    @IBOutlet weak var closeSecionLable: UIButton!
    
    //private let email: String
    //private let provider: ProviderType
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        emailLable.text = email
        // Do any additional setup after loading the view.
    }
    
}
