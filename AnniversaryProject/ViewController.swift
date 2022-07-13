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
        
        //datePicker.preferredDatePickerStyle = .automatic // 월/일/년도 현재시간이 default, 버튼형식으로 월/일/년도, 시간 버튼을 선택하면 각각 캘린더와 시간선택뷰가 나와서 직접 선택 가능, 뷰에 가장 알맞는 스타일 자동 선택
        datePicker.preferredDatePickerStyle = .inline // 캘린더형식, v15.5를 사용하기 때문에 .inline 채용
        //datePicker.preferredDatePickerStyle = .wheels //바퀴형 -> 위 아래 슬라이드 / 년도 제외
        //datePicker.preferredDatePickerStyle = .compact // default 설정
        
        
          
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

