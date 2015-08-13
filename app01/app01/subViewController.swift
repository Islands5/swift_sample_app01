//
//  subViewController.swift
//  app01
//
//  Created by 五島　僚太郎 on 2015/07/28.
//  Copyright (c) 2015年 fsail. All rights reserved.
//

import UIKit

class subViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let windowSize = UIScreen.mainScreen().bounds.size
        let mainView = UIView(frame: CGRectMake(0, 0, windowSize.width, windowSize.height))
        //let naviImage = UIImage(named: "navi.jpeg")
        //let navArea = UIImageView(frame: CGRectMake(0, 0, windowSize.width, 100))
        //navArea.image = naviImage
        
        //let navAreaSize = navArea.frame.size
        
        mainView.backgroundColor = UIColor.blueColor()
        
        //navArea.backgroundColor = UIColor.greenColor()
        

        //backBtn.center = CGPoint(x: navAreaSize.width - backBtn.frame.size.width * 1.5, y: navAreaSize.height - backBtn.frame.size.height * 1.5)
        
        self.view.addSubview(mainView)
        //self.view.addSubview(navArea)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func viewDidAppear(animated: Bool) {
//        let windowSize = UIScreen.mainScreen().bounds.size
//        let navArea = UIImageView(frame: CGRectMake(0, 0, windowSize.width, 100))

//        println("test1")
        
//    }
    
//    override func viewDidDisappear(animated: Bool) {
//        self.navigationController.view.removeFromSuperview()
//        println("test2")
//    }
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
