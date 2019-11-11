import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var suitSegmentedControl: UISegmentedControl!
    
    @IBOutlet var numberChange: [UILabel]!
    
    @IBOutlet var suitImageChange: [UIImageView]!
    
    @IBOutlet weak var stepperControl: UIStepper!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var cardNumber: Double = 1.0 {
        didSet {
            for number in numberChange {
                number.text = "8"
            }
        }
    }
    
    func configureStepper() {
        stepperControl.minimumValue = 1.0
        stepperControl.maximumValue = 10.0
        stepperControl.stepValue = 1.0
        //default start value
        stepperControl.value = 1.0
    }
    
    
    var currentSegment: Int = 0 {
        didSet {
            switch suitSegmentedControl.selectedSegmentIndex {
            case 0:
                for imageView in suitImageChange{
                    imageView.image = UIImage.init(systemName: "suit.diamond.fill")
                }
            case 1:
                for imageView in suitImageChange{
                    imageView.image = UIImage.init(systemName: "heart.fill")
                }
            case 2:
                for imageView in suitImageChange{
                    imageView.image = UIImage.init(systemName: "suit.club.fill")
                }
            case 3:
                for imageView in suitImageChange{
                    imageView.image = UIImage.init(systemName: "suit.spade.fill")
                }
            default:
                for imageView in suitImageChange{
                    imageView.image = UIImage.init(systemName: "suit.spade.fill")
                    }
                }
            }
        }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    
    @IBAction func suitGenerator(_ sender: UISegmentedControl) {
        currentSegment = sender.selectedSegmentIndex
    }
    
    
    @IBAction func stepperChange(_ sender: UIStepper) {
    }
    
    
}

