//
//  ViewController.swift
//  AnniversaryProject
//
//  Created by 노준혁 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var testLabel: UILabel!
    
    @IBOutlet var d_DayCollection: [UILabel]!//D-day 레이블(좌상단)
    @IBOutlet var pickedDateLabel: [UILabel]!//day + 100,200,300,400된 일자(센터)
    @IBOutlet var imageCollection: [UIImageView]!//이미지뷰 컬렉션
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 \tMM월 dd일"
        
        imageDesign()
        d_DayDesign()
        pickedDateDesign()
        
        //datePicker.preferredDatePickerStyle = .automatic // 월/일/년도 현재시간이 default, 버튼형식으로 월/일/년도, 시간 버튼을 선택하면 각각 캘린더와 시간선택뷰가 나와서 직접 선택 가능, 뷰에 가장 알맞는 스타일 자동 선택
        datePicker.preferredDatePickerStyle = .inline // 캘린더형식, v15.5를 사용하기 때문에 .inline 채용
        //datePicker.preferredDatePickerStyle = .wheels //바퀴형 -> 위 아래 슬라이드 / 년도 제외
        //datePicker.preferredDatePickerStyle = .compact // default 설정
        datePickerClicked(datePicker)
        
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
        for i in 0..<pickedDateLabel.count {
            pickedDateLabel[i].textColor = .white
        }
    }
    
//    func calculateDays(from date: Date) -> String {
//        let calendar = Calendar.current
//        let currentDate = Date()
//
//    }
    
    @IBAction func datePickerClicked(_ sender: UIDatePicker) {
//        let pickedDate = sender
//        let calendar = Calendar.current
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy년 \nMM월 dd일"
//        var day100 = DateComponents(day: 99)
//        //day100.day = 100
//
//        testLabel.text = formatter.string(from: datePicker.date)
//
//        let d100 = calendar.date(byAdding: day100, to: datePicker.date)!
//
//        let calDate = calendar.dateComponents([.year, .month, .day], from: datePicker.date, to: d100)
//
//
//        pickedDateLabel[0].text = "\(calDate)"
//
        let calendar = Calendar.current
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 \tMM월 dd일"
        
        let day1 = DateComponents(day: 99)
        let day2 = DateComponents(day: 199)
        let day3 = DateComponents(day: 299)
        let day4 = DateComponents(day: 399)
        
        let d100 = calendar.date(byAdding: day1, to: datePicker.date)!
        let d200 = calendar.date(byAdding: day2, to: datePicker.date)!
        let d300 = calendar.date(byAdding: day3, to: datePicker.date)!
        let d400 = calendar.date(byAdding: day4, to: datePicker.date)!
        
        pickedDateLabel[0].text = "\(d100)"
        pickedDateLabel[1].text = "\(d200)"
        pickedDateLabel[2].text = "\(d300)"
        pickedDateLabel[3].text = "\(d400)"
        
    }
    
}

