import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fullness: UILabel!
    @IBOutlet weak var hungrinessLabel: UILabel!
    
    let tamagochi = Tamagotchi()
    
    @IBAction func feedTapped(_ sender: UIButton) {
        tamagochi.feed()
        updateUI()
    }
    
    func updateUI() {
        fullness.text = "\(tamagochi.fullness)"
        hungrinessLabel.text = "\(tamagochi.hungriness)"
    }
}
