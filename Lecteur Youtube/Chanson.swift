//
//  Chanson.swift
//  Lecteur Youtube
//
//  Created by Riad Korimbacus on 19/04/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import Foundation

class Chanson {
    
    private var _artiste: String
    private var _titre: String
    private var _code: String
    private var _baseURLVideo = "https://www.youtube.com/embed/"
    private var _baseUrlMiniature = "https://i.ytimg.com/vi/"
    private var _finUrlMiniature = "/maxresdefault.jpg"

    var artiste: String {
        return _artiste
    }
    
    var titre: String {
        return _titre
    }
    
    var videoUrl: String {
        return _baseURLVideo + _code
    }
    
    var miniatureUrl: String {
        return _baseUrlMiniature + _code + _finUrlMiniature
    }
    
    init(artiste: String, titre: String, code: String) {
        self._artiste = artiste
        self._titre = titre
        self._code = code
    }
}
