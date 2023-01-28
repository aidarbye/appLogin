import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var TagBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TagBar.selectedItem = TagBar.items?.first
    }
    
    
}
