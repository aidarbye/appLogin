import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var PasswordTextField: UITextField!
    @IBOutlet var UserNameTextField: UITextField!
    @IBOutlet var ForgotPassButton: UIButton!
    @IBOutlet var ForgotNameButton: UIButton!
    @IBAction func LoginAction() {
        let name: String? = UserNameTextField.text!
        let password: String? = PasswordTextField.text!
        if !checkUser(name!, password!) {
            let alert = UIAlertController(title: "Wrong", message: "You are wrong", preferredStyle: .alert)
            alert.addAction(
                UIAlertAction(
                    title: NSLocalizedString("OK", comment: "Default action"),
                    style: .default,
                    handler: { _ in
                        NSLog("The \"OK\" alert occured.")
                    }
                )
            )
            present(alert, animated: true)
            UserNameTextField.text = nil
            PasswordTextField.text = nil
        }
    }
    
    private func checkUser(_ user: String, _ password: String) -> Bool {
        var flag: Bool = false
        AviableUsers.forEach {
            if let pass = $0[user] {
                if pass == password {
                    flag = true
                }
            }
        }
        return flag
    }
}

