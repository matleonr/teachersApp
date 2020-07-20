//
//  LaunchScreenViewController.swift
//  Teachlearning
//
//  Created by Mateo Leon Restrepo on 9/07/20.
//  Copyright © 2020 Intergrupo. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textLayer = UILabel()
        textLayer.frame = CGRect(x: view.center.x, y: view.center.y, width: 248, height: 80)
        textLayer.lineBreakMode = .byWordWrapping
        textLayer.numberOfLines = 0
        textLayer.textColor = .white
        let textContent = "Teachlearning"
        let textString = NSMutableAttributedString(
          string: textContent,
          attributes: [
            NSAttributedString.Key.font: UIFont(name: "Grand-Hotel", size: 58.666666666666664)!
          ]
        )
        let textRange = NSRange(location: 0, length: textString.length)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 1.2954545454545454
        paragraphStyle.alignment = .center
        textString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: textRange)
        textString.addAttribute(NSAttributedString.Key.kern, value: 0, range: textRange)
        textLayer.attributedText = textString
        textLayer.sizeToFit()
        view.addSubview(textLayer)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
