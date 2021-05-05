//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Luana Nalon on 03/05/2021.
//

import UIKit

class VideoVC: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    private var _partyRock: Partyrock!
    
    var partyRock: Partyrock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        
    }
    

}
