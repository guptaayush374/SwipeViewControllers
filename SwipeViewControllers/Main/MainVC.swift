//
//  MainVC.swift
//  SwipeViewControllers
//
//  Created by Macbook on 25/07/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView?
    
    @IBOutlet weak var btnFirstVC: UIButton!
    @IBOutlet weak var btnSecondVC: UIButton!
    @IBOutlet weak var btnThirdVC: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let firstVC = FirstVC(nibName: "FirstVC", bundle: nil)
        let secondVC = SecondVC(nibName: "SecondVC", bundle: nil)
        let thirdVC = ThirdVC(nibName: "ThirdVC", bundle: nil)

        let bounds = UIScreen.main.bounds
        let width = bounds.size.width
        let height = bounds.size.height
        
        self.scrollView!.contentSize = CGSize(width: 3 * width, height: height)
        self.scrollView?.isPagingEnabled = true
        
        let arrVC = [firstVC, secondVC, thirdVC]
        
        var idx = 0
        for vc in arrVC {
            addChildViewController(vc)
            let originX = CGFloat(idx) * width
            vc.view.frame = CGRect(x: originX, y: 0, width: width, height: height)
            scrollView!.addSubview(vc.view)
            vc.didMove(toParentViewController: self)
            idx += 1
        }
    }
    
    @IBAction func tapFirstVCBtn(_ sender: UIButton) {
        
        
    }
    
    @IBAction func tapSecondVCBtn(_ sender: UIButton) {
        
        
    }
    
    @IBAction func tapThirdVCBtn(_ sender: UIButton) {
        
    
    }
}
