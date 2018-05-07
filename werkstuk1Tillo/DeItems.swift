import UIKit

class DeItems {
    var title:String
    var beschrijving:String
    var image:String
    
    init() {
        title = ""
    beschrijving = ""
        image = ""
    }
    
    init(title: String ,beschrijving: String,image:String){
        self.title = title
        self.beschrijving = beschrijving
        self.image = image
    }
}
