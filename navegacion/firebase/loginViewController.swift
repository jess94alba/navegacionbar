//
//  loginViewController.swift
//  navegacion
//
//  Created by Jessi on 16/02/24.
//

import UIKit
import FirebaseAnalytics
import FirebaseAuth

class loginViewController: UIViewController 
{
    
    @IBOutlet weak var emailTextFile: UITextField!
    @IBOutlet weak var passwordTextFile: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loingUpButton: UIButton!
    override func viewDidLoad() 
    {
        super.viewDidLoad()
    }
    @IBAction func singUpButtonAction(_ sender: Any) 
    {
            Auth.auth().createUser(withEmail: email, password: password)
            {
                (result, error) in
                
                if let result = result, error == nil
                {
                    self.navigationController?.pushViewController(viewEmailViewController(email: result.user.email!, provider: .basic), animated: true)
                    
                }else
                {
                    print("ERROR JESS \(error!)")
                    let alertController = UIAlertController(title: "ERROR", message: "email o contraseña incorecta", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    @IBAction func loingUpButtonAction(_ sender: Any)
    {/*
        if let email = emailTextFile.text, let password = passwordTextFile.text
        {
            Auth.auth().signIn(withEmail: email, password: password)
            {
                (result, error) in
                
                if let result = result, error == nil
                {
                    let sin = storyboard?.instantiateViewController(withIdentifier: "tabBarViewController") as! tabBarViewController
                    self.navigationController?.pushViewController(sin, animated: true)
                    self.navigationController?.pushViewController(viewEmailViewController(email: result.user.email!, provider: .basic), animated: true)
                }else
                {
                    print("ERROR JESS \(error!)")
                    let alertController = UIAlertController(title: "ERROR", message: "email o contraseña incorecta", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }/*
    }
}
