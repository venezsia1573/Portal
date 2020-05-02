//
//  QAViewController.swift
//  xuexi
//
//  Created by Venezsia1573 on 2020/04/25.
//  Copyright © 2020 Venezsia1573. All rights reserved.
//

import UIKit

class QAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        newQuestions()

        // Do any additional setup after loading the view.
    }
    

    
    let questions = ["我们要发扬光大“＿里山路不换肩的“伟大新时代中国特色社会主义革命精神！", "精湛的“湛”字正确的读音为下列哪一项？", "根据伟大领袖在2016年G20峰会上的发言，当前中国人均国内生产总值接近下列哪一项数字？", "填空题：“金砖合作之所以得到快速发展，不仅在于找准了合作之道，＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿”","”和你相见不到＿＿，我就认定你是我的妻子了”ーー据彭丽媛回忆，她与习近平在1986年初次见面时，习近平曾如是说道", "在人民面前，我们永远是＿＿＿。ーー在纪念毛泽东同志诞辰120周年座谈会上的讲话","轻关易道，通商宽＿","“我背(bèi)过《＿＿＿＿》”ーー习近平在福州","那时候，我在陕北农村插队，听说一个知青有《浮士德》这本书，就走了＿＿路去借这本书，后来他又走了＿＿路来取回这本书。ーー2014年10月15日，在文艺工作座谈会上","中国人民是具有伟大创造精神的人民。在几千年历史长河中，中国人民始终辛勤劳作、发明创造……传承了＿＿＿、玛纳斯、江格尔等震撼人心的伟大史诗"]
    
    let answers = [["五里", "十里", "百里", "千里"], ["zhèn", "shèn", "zhàn", "zàn"], ["八千美元", "八万美元", "八千万美元","八万亿美元"], ["关键在于获得了共同利益", "关键在于加深两国人民友谊", "关键在于找准了合作之道","关键在于满足两国人民根本利益"],["四十分钟", "四天", "四个月", "四年"], ["小学生", "初中生", "高中生", "大学生"],["工", "农", "兵", "衣"],["毛泽东传", "新华字典", "希特勒传", "习仲勋传"],["3百米", "3千米", "3里", "30里"],["萨格尔王", "格萨尔王", "王格萨尔", "王格尔萨"]]
    
    let correctAns = [2,2,3,3,1,1,4,2,4,1]
    
    
    //Variables
    
    var rightA:UInt32 = 0
    struct GlobalVariable{
        static var point = 0
        static var currentQ = 0
    }
    
    
    @IBOutlet weak var Qlab: UILabel!
    
    @IBAction func mainAct(_ sender:AnyObject){
        if sender.tag == correctAns[GlobalVariable.currentQ]{
            var button:UIButton = UIButton()
            button = view.viewWithTag(correctAns[GlobalVariable.currentQ]) as! UIButton
            button.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                button.backgroundColor = UIColor.systemTeal
                GlobalVariable.currentQ += 1
                self.newQuestions()
                GlobalVariable.point += 1
            })
            
        }
        else{
            var button:UIButton = UIButton()
            button = view.viewWithTag(correctAns[GlobalVariable.currentQ]) as! UIButton
            button.backgroundColor = UIColor.red
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                button.backgroundColor = UIColor.systemTeal
                GlobalVariable.currentQ += 1
                self.newQuestions()
            })
        }
        
        
        
    }
    
    
    func newQuestions(){
        if GlobalVariable.currentQ > questions.count - 1 {
            performSegue(withIdentifier: "toScore", sender: self)
            
        }
        
        else{
            
        
            Qlab.text = questions[GlobalVariable.currentQ]
        
        var button:UIButton = UIButton()
        
        for i in 1...4
        {
            
            button = view.viewWithTag(i) as! UIButton
            
            button.setTitle(answers[GlobalVariable.currentQ][i-1], for: .normal)
        
            
        }
        
        
        
        }
        
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
