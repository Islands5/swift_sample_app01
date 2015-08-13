//
//  CustomNavigationController.swift
//  app01
//
//  Created by 五島　僚太郎 on 2015/08/12.
//  Copyright (c) 2015年 fsail. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController, UINavigationControllerDelegate {
    let backBtn = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let windowSize = UIScreen.mainScreen().bounds.size
        let naviImage = UIImage(named: "navi.jpeg")
        let navArea = UIImageView(frame: CGRectMake(0, 0, windowSize.width, 100))
        
        let navAreaSize = navArea.frame.size
        
        
        backBtn.setTitle("戻る", forState: UIControlState.Normal)
        backBtn.sizeToFit()
        backBtn.backgroundColor = UIColor.blueColor()
        backBtn.addTarget(self, action: "didTouchBack:", forControlEvents: UIControlEvents.TouchUpInside)
        backBtn.center = CGPoint(x: navAreaSize.width - backBtn.frame.size.width * 1.5, y: navAreaSize.height - backBtn.frame.size.height * 1.5)
        
        navArea.image = naviImage
        //navArea.layer.zPosition = 1
        
        self.setNavigationBarHidden(true, animated:true)
        self.tabBarItem.title = "child1"
        
        self.view.addSubview(navArea)
        self.view.addSubview(backBtn)
        
        self.delegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didTouchBack(button :UIButton){
        self.popViewControllerAnimated(true)
    }
    
    //デリゲートを呼び出すことで利用できるメソッドなんでしょうか?
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        if(self.childViewControllers.count <= 1) {
            backBtn.alpha = 0
        }else {
            backBtn.alpha = 1
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
