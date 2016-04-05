//
//  ViewController.swift
//  MyGigaPetMonster
//
//  Created by jmayfield37 on 3/28/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        
    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    @IBOutlet weak var penalty1Img: UIImageView!
    @IBOutlet weak var penalty2Img: UIImageView!
    @IBOutlet weak var penalty3Img: UIImageView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*var imgArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            
            imgArray.append(img!)
        }
        
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()*/
        
        let DIM_ALPHA: CGFloat = 0.2
        let OPAQUE: CGFloat = 1.0
        let MAX_PENALTIES = 3
        
        var penalties = 0
        var timer: NSTimer!
        
        
        penalty1Img.alpha = DIM_ALPHA
        penalty2Img.alpha = DIM_ALPHA
        penalty3Img.alpha = DIM_ALPHA
        
        
        foodImg.dropTarget = monsterImg
        heartImg.dropTarget = monsterImg
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        
        
    }
    
    func itemDroppedOnCharacter(notif: AnyObject)
    {
        print("Item dropeed on monster")
    }
    
    func startTimer()
    {

    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //print("i touched screen")
    }


}

