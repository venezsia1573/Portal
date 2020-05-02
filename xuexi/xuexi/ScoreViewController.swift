//
//  ScoreViewController.swift
//  xuexi
//
//  Created by Venezsia1573 on 2020/04/25.
//  Copyright © 2020 Venezsia1573. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    
    
   
    
    @IBOutlet weak var showPoints: UILabel!
    
    @IBOutlet weak var describe: UILabel!
    
    
    
    
    
    @IBAction func showScore(_ sender:UIButton){
    
    showPoints.text = String(QAViewController.GlobalVariable.point)+"分"
        
        showDescribe()
    }
    
    func showDescribe(){
        let myPoint = QAViewController.GlobalVariable.point
        
        if myPoint == 10 {
            describe.text = "撸起袖子加油干！吃完包子接着干！"
            
        }
            
            
            
        else if myPoint >= 0 && myPoint < 2{
            describe.text = "资产阶级走狗，混账东西！滚出中国！"
        }
        else if myPoint >= 2 && myPoint < 4{
            describe.text = "别看今天闹得欢，小心将来拉清单！ーー2014年1月7日，习近平谈司法腐败"
        }
        else if myPoint >= 4 && myPoint <= 5{
            describe.text = "打铁还需自身硬。ーー在中国共产党第十八届中央委员会第一次全体会议上的讲话"
        }
        else if myPoint > 5 && myPoint < 8{
            describe.text = "听党指挥，能打胜仗！ーー习近平在第十二届全国人民代表大会第一次会议解放军代表团全体会议时提出"
        }else if myPoint >= 8 && myPoint <= 9{
            describe.text = "使我们的党永远不变质、我们的红色江山永远不变色！ーー河北省调研指导党的群众路线教育实践活动"
        }
      
        
        QAViewController.GlobalVariable.point = 0
        QAViewController.GlobalVariable.currentQ = 0
        
        
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
