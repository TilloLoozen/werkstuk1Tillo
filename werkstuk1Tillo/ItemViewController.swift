
import UIKit

class ItemViewController: UIViewController {
    var item = DeItems()
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var mydescription: UILabel!
    
//    @IBAction func transformImage(_ sender: UIPinchGestureRecognizer) {
//        self.myImageView.transform =  CGAffineTransform(scaleX: sender.scale, y: sender.scale)
//
//
//        //sender.scale = 1
//
//        print("ok")
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.myLabel.text = item.title
        self.mydescription.text = item.beschrijving
        self.myImageView.image = UIImage(named: item.image)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
