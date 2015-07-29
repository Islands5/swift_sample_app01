//
//  tabChild1ViewController.swift
//  app01
//
//  Created by 五島　僚太郎 on 2015/07/28.
//  Copyright (c) 2015年 fsail. All rights reserved.
//

import UIKit

class tabChild1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let windowSize = UIScreen.mainScreen().bounds.size
        let mainView = UIView(frame: CGRectMake(0, 0, windowSize.width, windowSize.height))
        let nextBtn = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        let backBtn = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        let naviImage = UIImage(named: "navi.jpeg")
        let navArea = UIImageView(frame: CGRectMake(0, 0, windowSize.width, 100))
        navArea.image = naviImage
        let navAreaSize = navArea.frame.size
        
        mainView.backgroundColor = UIColor.redColor()
        
        navArea.backgroundColor = UIColor.greenColor()
        
        nextBtn.setTitle("次の画面へ", forState: UIControlState.Normal)
        nextBtn.sizeToFit()
        nextBtn.addTarget(self, action: "didTouchNext:", forControlEvents: UIControlEvents.TouchUpInside)
        nextBtn.center = self.view.center
        
        backBtn.setTitle("戻る", forState: UIControlState.Normal)
        backBtn.sizeToFit()
        backBtn.backgroundColor = UIColor.blueColor()
        backBtn.addTarget(self, action: "didTouchBack:", forControlEvents: UIControlEvents.TouchUpInside)
        backBtn.center = CGPoint(x: navAreaSize.width - backBtn.frame.size.width * 1.5, y: navAreaSize.height - backBtn.frame.size.height * 1.5)
        
        
        
        
        
        
        self.view.addSubview(mainView)
        self.view.addSubview(nextBtn)
        self.view.addSubview(navArea)
        self.view.addSubview(backBtn)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didTouchNext(button :UIButton){
        self.navigationController?.pushViewController(subViewController(), animated: true)
    }
    
    func didTouchBack(button :UIButton){
        self.navigationController?.popViewControllerAnimated(true)
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
