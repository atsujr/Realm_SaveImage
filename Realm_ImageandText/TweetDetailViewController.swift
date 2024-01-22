import UIKit
import RealmSwift

class TweetDetailViewController: UIViewController {

    @IBOutlet weak var tweetTextField: UITextField!
    @IBOutlet weak var tweetImageView: UIImageView!
    var tweets: [Tweet]!
    var tweetNumber: Int = 0
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
        setTweetData()
    }
    @IBAction func addImage(_ sender: Any) {
        
    }
    @IBAction func saveTweet(_ sender: Any) {
    }
    func setTweetData(){
        tweets = Array(realm.objects(Tweet.self)).reversed()
        tweetTextField.text = tweets[tweetNumber].tweetText
        if let tweetImageName = tweets[tweetNumber].tweetImageName{
            let tweetImageURL = tweetImageName.convertStringToURL()
            tweetImageView.image = tweetImageURL.getimageformURL()
        }
    }

}
