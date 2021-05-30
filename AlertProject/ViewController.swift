//
//  ViewController.swift
//  AlertProject
//
//  Created by Tahir Esirgen on 29.05.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordAgainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        if userNameText.text == ""  {
            makeAlert(titleInput: "Error!", messageInput: "Username Not Found")
            
        }
        else if passwordText.text == ""{
            makeAlert(titleInput: "Error!", messageInput: "Please Enter Password!")
        }
        else if passwordText.text != passwordAgainText.text {
            makeAlert(titleInput: "Error!", messageInput: "Enter the passwords the same!")
        }
        else{
            makeAlert(titleInput: "Success", messageInput: "Wellcome To App")
        }
        
        
        
    }
    
    func makeAlert(titleInput:String,messageInput : String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil)
        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(cancelButton)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

