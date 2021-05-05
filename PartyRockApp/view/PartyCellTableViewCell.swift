//
//  PartyCellTableViewCell.swift
//  PartyRockApp
//
//  Created by Luana Nalon on 03/05/2021.
//

import UIKit

class PartyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var videoPreviweImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateUI(partyRock: Partyrock) {
        videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do {
             let data = try Data(contentsOf: url)
                DispatchQueue.main.sync {
                    self.videoPreviweImage.image = UIImage(data: data)
                }
            } catch {
//                HANDLE THE ERRO
            }
            
        }
    }


}
