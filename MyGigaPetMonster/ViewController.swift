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
        
        foodImg.dropTarget = monsterImg
        heartImg.dropTarget = monsterImg
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        
        
    }
    
    func itemDroppedOnCharacter(notif: AnyObject)
    {
        print("Item dropeed on monster")
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //print("i touched screen")
    }


}

