//
//  ResultViewController.swift
//  Gacha
//
//  Created by Hazuki Tamura on 2021/08/15.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数の数字
    var number: Int!
    
    //画像用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageview: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //乱数
        number = Int.random(in: 0...9)
        if number == 9{
            monsterImageview .image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else  if number > 7{
            monsterImageview .image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        }else{
                monsterImageview .image = UIImage(named: "monster003")
                backgroundImageView.image = UIImage(named: "bg_blue")
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
