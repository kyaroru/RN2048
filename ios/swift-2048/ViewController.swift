//
//  ViewController.swift
//  swift-2048
//
//  Created by Austin Zheng on 6/3/14.
//  Copyright (c) 2014 Austin Zheng. Released under the terms of the MIT license.
//

import UIKit
import React

class ViewController: UIViewController {
                            
  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
  func infoForKey(_ key: String) -> String {
    return (Bundle.main.infoDictionary?[key] as! String)
  }

  @IBAction func startGameButtonTapped(_ sender : UIButton) {
    let game = NumberTileGameViewController(dimension: 4, threshold: 2048)
    self.present(game, animated: true, completion: nil)
  }
    
  @IBAction func openReactNative(_ sender : UIButton) {
    NSLog("Hello")
    let myIP : String = infoForKey("MyIPAddress")
    let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
    let mockData:NSDictionary = ["ip_address": myIP]
    let rootView = RCTRootView(
        bundleURL: jsCodeLocation,
        moduleName: "RN2048",
        initialProperties: mockData as [NSObject : AnyObject],
        launchOptions: nil
    )
    let vc = UIViewController()
    vc.view = rootView
    self.present(vc, animated: true, completion: nil)
  }
}

