
import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let password = passwordTextfield.text, let email = emailTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, erorr in
                if let e = erorr {
                    print(e)
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
            
        }
    }
    
}
