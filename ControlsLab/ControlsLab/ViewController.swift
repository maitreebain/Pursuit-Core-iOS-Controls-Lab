import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var suitSegmentedControl: UISegmentedControl!
    
    @IBOutlet var numberChange: [UILabel]!
    
    @IBOutlet var suitImageChange: [UIImageView]!
    
    @IBOutlet weak var stepperControl: UIStepper!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var cardNumber: Int = 1 {
        didSet {
            for number in numberChange {
                if cardNumber == 11 {
                    number.text = "J"
                } else if cardNumber == 12 {
                    number.text = "Q"
                } else if cardNumber == 13 {
                    number.text = "K"
                } else if cardNumber == 1 {
                    number.text = "A"
                } else {
                    number.text = cardNumber.description
                    }
                }
            }
        }
    
    func stepperIncrease() {
        stepperControl.minimumValue = 1.0
        stepperControl.maximumValue = 10.0
        stepperControl.stepValue = 1.0
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
        
        cardNumber = 1
        currentSegment = 1
    }

    
    @IBAction func suitGenerator(_ sender: UISegmentedControl) {
        currentSegment = sender.selectedSegmentIndex
    }
    
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        cardNumber = Int(sender.value)

        }
    }
    

