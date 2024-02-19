//
//  TabBarController.swift
//  navegacion
//
//  Created by Jessi on 16/02/24.
//

import UIKit

class TabBarController: UITabBarController 
{
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
        super.viewDidLoad()   
        
        title = "inicio"        
    }
    

}
