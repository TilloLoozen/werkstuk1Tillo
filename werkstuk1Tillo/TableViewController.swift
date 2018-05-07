

import UIKit

class TableViewController: UITableViewController{
    
    var items = [DeItems]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = DeItems(title: "person1",beschrijving:"test", image: "mars1")
        let item2 = DeItems(title: "person2",beschrijving:"test", image: "mars2")
        let item3 = DeItems(title: "persoon3",beschrijving:"test", image: "Gandalf")
        
        
        items.append(item1)
        items.append(item2)
        items.append(item3)
        
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = items[indexPath.row].title
        cell.imageView?.image = UIImage(named: items[indexPath.row].image)
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarItemView"
        {
            let vc = segue.destination as! ItemViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            vc.item = items[(indexPath?.row)!]
        }
    }
}
