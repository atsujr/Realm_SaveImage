import UIKit

class TweetTableViewCell: UITableViewCell {

    @IBOutlet var tweetTextLabel: UILabel!
    @IBOutlet var tweetImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setTweet(tweetText: String?, tweetImageFileName: String?) {
        profileImageView.layer.cornerRadius = 25
        tweetTextLabel.text = tweetText
        
        tweetImageView.image = nil
        if let tweetImageName = tweetImageFileName{
            let tweetImageURL = tweetImageName.convertStringToURL()
            tweetImageView.image = tweetImageURL.getimageformURL()
        }
    }
}
