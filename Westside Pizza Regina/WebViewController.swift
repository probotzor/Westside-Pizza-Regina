//
//  WebViewController.swift
//  Westside Pizza Regina
//
//  Created by Milos Jakovljevic on 7/5/18.
//  Copyright © 2018 Pbztex. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.foodbooking.com/mobile/menu?company_uid=4ec22e51-91ba-4ae4-a526-c4c86d5cdcc3&restaurant_uid=40d3fce9-6c04-4a54-8702-275b9688700b")
        let request = URLRequest(url: url!)
        let session = URLSession.shared
        let task = session.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                self.webview.loadRequest(request)
            } else {
                print("Error: \(String(describing: error))")
            }
        }
        task.resume()
        webview.scrollView.showsVerticalScrollIndicator = false
        webview.scrollView.showsHorizontalScrollIndicator = false
    }
    
   

}
