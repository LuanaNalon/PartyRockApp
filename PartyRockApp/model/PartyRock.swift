//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Luana Nalon on 03/05/2021.
//

import Foundation

class Partyrock {
    private var _imageURL: String!
    private var _videoURL:String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
     return _videoURL
    }
    
    var videoTitle: String{
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
