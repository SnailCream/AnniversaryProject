//
//  ViewController.swift
//  AnniversaryProject
//
//  Created by 노준혁 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet var d_DayCollection: [UILabel]!//D-day 레이블(좌상단)
    @IBOutlet var pickedDateLabel: [UILabel]!//선택된 일자(센터)
    @IBOutlet var imageCollection: [UIImageView]!//이미지뷰 컬렉션
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDesign()
        d_DayDesign()
        pickedDateDesign()
          
    }
    
    func imageDesign() {
        for image in imageCollection {
            image.layer.cornerRadius = 20
            image.clipsToBounds = true
        }
    }
    
    func d_DayDesign() {
        let textArr = ["D+100", "D+200", "D+300", "D+400"]
         
        for i in 0..<d_DayCollection.count {
            d_DayCollection[i].text = textArr[i]
            d_DayCollection[i].textColor = .white
            d_DayCollection[i].font = .boldSystemFont(ofSize: 30)
        }
    }
    
    func pickedDateDesign() {
        let textArr = ["2021년 \n03월 27일", "2021년 \n07월 06일", "2021년 \n10월 13일", "2022년 \n01월 21일"]
        
        for i in 0..<pickedDateLabel.count {
            pickedDateLabel[i].text = textArr[i]
            pickedDateLabel[i].textColor = .white
        }
    }

}

