//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Wesley Osborne on 11/16/20.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
      let request = URLRequest(url: url)
      webView.load(request)
    }
  }
  
  @IBOutlet var webView: WKWebView!
  
  @IBAction func close() {
    dismiss(animated: true, completion: nil)
  }

}
