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
    
    @IBOutlet weak var emailTextFile: UITextField!
    @IBOutlet weak var ProvedorTextFile: UITextField!
    @IBOutlet weak var closeSecionButton: UIButton!
    
     private let email: String
     private let provider: ProviderType
     
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
        print("okkkk ")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
