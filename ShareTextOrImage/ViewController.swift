//
//  ViewController.swift
//  ShareTextOrImage
//
//  Created by ProgrammingWithSwift on 2019/12/24.
//  Copyright © 2019 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let activityViewController = self.share(items: ["text test",
                                                        UIImage(imageLiteralResourceName: "testImage"),
                                                        URL(string: "https://google.com")!],
                                                ipad: (true, self.view))
        self.present(activityViewController,
                     animated: true)
    }
    
    private func share(items: [Any],
                       excludedActivityTypes: [UIActivity.ActivityType]? = nil,
                       ipad: (forIpad: Bool, view: UIView?) = (false, nil)) -> UIActivityViewController {
        let activityViewController = UIActivityViewController(activityItems: items,
                                                              applicationActivities: nil)
        if ipad.forIpad {
            activityViewController.popoverPresentationController?.sourceView = ipad.view
        }
        
        if let excludedActivityTypes = excludedActivityTypes {
            activityViewController.excludedActivityTypes = excludedActivityTypes
        }
        
        return activityViewController
    }

//    private func share(items: [Any],
//                       excludedActivityTypes: [UIActivity.ActivityType]? = nil,
//                       ipad: (forIpad: Bool, view: UIView?) = (false, nil)) {
//        let activityViewController = UIActivityViewController(activityItems: items,
//                                                              applicationActivities: nil)
//
//        if ipad.forIpad {
//            activityViewController.popoverPresentationController?.sourceView = ipad.view
//        }
//
//        if let excludedActivityTypes = excludedActivityTypes {
//            activityViewController.excludedActivityTypes = excludedActivityTypes
//        }
//
//        present(activityViewController, animated: true)
//    }
}

