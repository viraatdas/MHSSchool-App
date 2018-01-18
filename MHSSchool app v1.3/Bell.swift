import UIKit

class Bell: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
   
  
    @IBOutlet weak var pickerView: UIPickerView!
    

    @IBOutlet weak var label: UILabel!
   
    @IBOutlet weak var imageView: UIImageView!
    let sports = ["Regular Day","30 Minute Advisory", "2 Hour Delay", "2 Hour Early Dismissal", "3 Hour Delay"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sports[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sports.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = sports[row]
        switch row {
        case 0:
            imageView.image =  UIImage(named: "regular school day")
        case 1:
            imageView.image =  UIImage(named: "30 min advisory")
        case 2:
            imageView.image =  UIImage(named: "2 hr delay")
        case 3:
            imageView.image =  UIImage(named: "2 hr early dismissal")
        case 4:
            imageView.image =  UIImage(named: "3 hr delay")
        default:
            imageView.image = UIImage(named: "regular school day")
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        // Do any additional setup after loading the view, typically from a nib.
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
