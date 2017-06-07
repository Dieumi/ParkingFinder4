//
//  SignUpViewController.swift
//  ParkingFinder4
//
//  Created by Etudiant on 18/05/2017.
//  Copyright © 2017 esgi. All rights reserved.
//

import UIKit
import Firebase
class SignUpViewController: UIViewController {

    @IBOutlet var login: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var cpassword: UITextField!
    @IBOutlet var confirbutton: UIButton!
    override func viewDidLoad() {
        //FirebaseApp.configure()
        confirbutton.addTarget(self, action:#selector(goSignUp(_:)) , for: .touchUpInside)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   @IBAction func goSignUp(_ sender: Any){
        print(login.text!)
        print(password.text!)
    Auth.auth().createUser(withEmail: login.text!, password: password.text!){(user, error) in
        if error == nil {
            //registration successful
            print(user)

        }else{
            //registration failure
            print(error)

        }
        
    }
    
        
        print("test")
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
