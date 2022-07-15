//
//  TransitionScondViewController.swift
//  SeSACWeek2
//
//  Created by 강민혜 on 7/15/22.
//

import UIKit

class TransitionSecondViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    /*
     1. 앱 켜면 데이터를 가지고 와서 텍스트 뷰에 보여주어야 함.
     2. 바뀐 데이터를 저장해주어야 해요
     => UserDefault
     */
    
    // 감정 갯수 영구적으로 저장하기!! (5분)
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TransitionScondViewController", #function)
        
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
        // 가져오기
        mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
            
        } else {
            // 데이터가 없는 경우에 사용할 문구
            mottoTextView.text = "고래밥"
        }
        
//        print(UserDefaults.standard.string(forKey: "phoneNumber"))
//        print(UserDefaults.standard.integer(forKey: "age"))
//        print(UserDefaults.standard.bool(forKey: "inapp"))
//
    }
    
    // 저장 버튼
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다.")
    }

    // 감정 올리기 버튼
    @IBAction func emotionButtonClicked(_ sender: UIButton){
        
        // 기존 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: "happyEmotion")
        
        // 감정 +1
        let updateValue = currentValue + 1
        
        // 새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
        
        // 레이블에 새로운 내용 보여주기
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        
        // UserDefaults.standard.removeObject(forKey:    )
        // 등록뙨 모든 UserDefaults 데이터 삭제
    
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TransitionScondViewController", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TransitionScondViewController", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TransitionScondViewController", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TransitionScondViewController", #function)
    }
    
}
