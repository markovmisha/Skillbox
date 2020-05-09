import UIKit
import RealmSwift

class refillViewController: UIViewController {

    @IBOutlet weak var plus: UILabel!
    @IBOutlet weak var balance: UILabel!
    
    private let realm = try! Realm()
    var info: Results<UserInfo>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userinfo = self.realm.objects(UserInfo.self)
        plus.text = "\(userinfo.first!.pourboire)"
        balance.text = "\(userinfo.first!.money + Int(plus.text!)!)"
//
//        let money = Int(balance.text!)! + Int(plus.text!)!
//
        if let userinfo = userinfo.first {
            try! self.realm.write {
            userinfo.money = Int(balance.text!)!
            userinfo.pourboire = 0
        }}

}}


        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
