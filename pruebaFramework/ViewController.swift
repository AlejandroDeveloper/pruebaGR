//
//  ViewController.swift
//  pruebaFramework
//
//  Created by Alejandro Palomo Rodriguez on 15/4/16.
//  Copyright © 2016 Alejandro Palomo Rodriguez. All rights reserved.
//

import UIKit
import utilConection

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let params = ["serviceId":"10154",
                      "emailAddress":"ameutest@everis.com",
                      "password":"Ameu2016Test"]
        
        let paramsGet = ["serviceId":"10154",
                         "siteId":944809,
                         "contentId":950739]
        
        let url = "https://grifolstest.grifols.com/login-service-portlet/api/jsonws/useraccess/email-sign-in"
        let urlGet = "https://grifolstest.grifols.com/content-sharing-portlet/api/jsonws/contentaccess/get-content"
        
        let user = "ameutest@everis.com"
        let password = "Ameu2016Test"
        
        let conexion = UtilConection()
        conexion.autenticateToUser(url, params: params, user: user, password: password) { (resultAutenticate) in
            if resultAutenticate {
                conexion.getContent(urlGet, params: paramsGet, user: user, password: password, completion: { (response) in
                    
                })
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

