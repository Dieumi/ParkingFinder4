//
//  AuthViewController.swift
//  ParkingFinder4
//
//  Created by Etudiant on 18/05/2017.
//  Copyright © 2017 esgi. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
class AuthViewController: UIViewController {

    @IBOutlet var signup: UIButton!
    @IBOutlet var google: GIDSignInButton!
    @IBOutlet var login: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var connect: UIButton!
    var window: UIWindow?
    override func viewDidLoad() {

        signup.addTarget(self, action:#selector(goSignUp(_:)) , for: .touchUpInside)
        connect.addTarget(self, action: #selector(goConnect(_:)), for: .touchUpInside)
       // google.addTarget(self, action: #selector(googleSign(_:)), for: .touchUpInside)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goSignUp(_ sender: Any){
        let secondController = SignUpViewController(nibName:"SignUpViewController",bundle: nil)
        let navController = UINavigationController(rootViewController: secondController)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        print("test")
      
    }
    @IBAction func goConnect(_ sender: Any){
        let secondController = SignUpViewController(nibName:"SignUpViewController",bundle: nil)
        let navController = UINavigationController(rootViewController: secondController)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        print("test")
        
    }
    @IBAction func googleSign(_ sender: Any){
        let secondController = SignUpViewController(nibName:"SignUpViewController",bundle: nil)
        let navController = UINavigationController(rootViewController: secondController)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        print("test")
        
    }
   
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
        print("testgoogle")
        if let error = error {
            // ...
            return
        }
        
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,accessToken: authentication.accessToken)
        Auth.auth().signIn(with: credential){(user, error) in
            if error == nil {
                
                print(user)
                
            }else{
                print(error)
                
            }
        }
    
        // ...
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
