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
    
    var email: String
    var provider: ProviderType
    
    init(email: String, provider: ProviderType)
    {
        self.email = email
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
