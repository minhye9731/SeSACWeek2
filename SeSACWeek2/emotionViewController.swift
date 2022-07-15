//
//  emotionViewController.swift
//  SeSACWeek2
//
//  Created by 강민혜 on 7/12/22.
//

import UIKit

class emotionViewController: UIViewController {
    
    @IBOutlet weak var emotionFirstLabel: UILabel!
    @IBOutlet weak var emotionSecondLabel: UILabel!
    @IBOutlet weak var emotionThirdLabel: UILabel!
    @IBOutlet weak var emotionFourthLabel: UILabel!
    @IBOutlet weak var emotionFifthLabel: UILabel!
    @IBOutlet weak var emotionSixthLabel: UILabel!
    
    @IBOutlet weak var emotionFirstButton: UIButton!
    @IBOutlet weak var emotionSecondButton: UIButton!
    @IBOutlet weak var emotionThirdButton: UIButton!
    @IBOutlet weak var emotionFouthButton: UIButton!
    @IBOutlet weak var emotionFIfthButton: UIButton!
    @IBOutlet weak var emotionSixthButton: UIButton!
    
    var emotionArray = [0, 0, 0, 0, 0, 0]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 랜덤으로 뽑고, 이름까지 넣는거 한번에 방법
//        setUserNickname()
        // 랜덤으로 뽑고, 이름 넣는거 따로따로 방법
        emotionFirstLabel.text = setUserNickname()
        
        // example()
        view.backgroundColor = example().0
        emotionFirstButton.setImage(UIImage(named: example().2), for: .normal)
        
        emotionFirstButton.tag = 0
        let image = UIImage(named: "sesac_slime1")?.withRenderingMode(.alwaysOriginal)
        emotionFirstButton.setImage(image, for: .normal)
        
    }
    
    // 랜덤으로 뽑고, 이름까지 넣는거 한번에 방법
//    func setUserNickname() {
//        let nickname = ["고래밥", "칙촉", "격투가"]
//        let select = nickname.randomElement()!
//        emotionFirstLabel.text = "저는 \(select)입니다."
//    }
    
    // 랜덤으로 뽑고, 이름 넣는거 따로따로 방법
    func setUserNickname() -> String {
        let nickname = ["고래밥", "칙촉", "격투가"]
        let select = nickname.randomElement()!
        
        return "저는 \(select)입니다."
    }
    
    // 배경색, 레이블, 이미지
    func example() -> (UIColor, String, String) {
        
        let color: [UIColor] = [.yellow, .red, .blue]
        let image: [String] = ["sesac_slime6", "sesac_slime7", "sesac_slime8", "sesac_slime5"]
        
        return (color.randomElement()!, "고래밥", image.randomElement()!)
    }
    
    
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        
        print(sender.tag, sender.currentTitle, sender.currentTitle)
        
        emotionArray[sender.tag] += 1
        
        emotionFirstLabel.text = "\(emotionArray[0])"
        emotionSecondLabel.text = "\(emotionArray[1])"
        emotionThirdLabel.text = "\(emotionArray[2])"
        emotionFourthLabel.text = "\(emotionArray[3])"
        emotionFifthLabel.text = "\(emotionArray[4])"
        emotionSixthLabel.text = "\(emotionArray[5])"
        
        showAlertController()
    }
    
    func showAlertController() {
        
        // 1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .alert)
        
        // 2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        // 3. 1+2
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        // 4. present
        present(alert, animated: true, completion: nil)
        
    }
    

}
