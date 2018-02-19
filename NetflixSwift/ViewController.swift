//
//  ViewController.swift
//  NetflixSwift
//
//  Created by Eduardo Fornari on 10/04/17.
//  Copyright © 2017 Eduardo Fornari. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://www.netflix.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

    override func viewDidAppear() {
        self.view.window!.toggleFullScreen(self)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}
