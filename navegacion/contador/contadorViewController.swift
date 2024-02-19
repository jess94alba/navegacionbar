//
//  contadorViewController.swift
//  navegacion
//
//  Created by Jessi on 18/02/24.
//

import UIKit

class contadorViewController: UIViewController {

    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var buton: UIButton!
    var numero = 0
    
    func contar()
    {
        numero += 1
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        buton.setTitle("Suma + 1", for: .normal)
        buton.backgroundColor = .blue
        buton.setTitleColor(.white, for: .normal)
        etiqueta.text = "\(numero)"
    }
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        print("view will disapper")
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    @IBAction func acctionsum(_ sender: Any)
    {
        contar()
        etiqueta.text = "\(numero)"
        
        /*
         if buton.backgroundColor == .blue
         {
         buton.backgroundColor = .red
         return
         }
         
         if buton.backgroundColor != .blue
         {
         buton.backgroundColor = .green
         return
         }
         */
        /*switch buton.backgroundColor
         {
         case UIColor.blue:
         buton.backgroundColor = .green
         case UIColor.green:
         buton.backgroundColor = .red
         default:
         buton.backgroundColor = .blue
         }*/
    }

}
