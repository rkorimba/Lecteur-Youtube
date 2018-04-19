//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Riad Korimbacus on 19/04/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if chanson != nil {
            chargerVideo(chanson: chanson!)
        }
    }
    
    func chargerVideo(chanson: Chanson) {
        if let url = URL(string: chanson.videoUrl) {
            let requete = URLRequest(url: url)
            webView.load(requete)
        }
    }
}
