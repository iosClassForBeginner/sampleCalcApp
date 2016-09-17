  
  
# 第8回: １時間でiPhoneアプリを作ろう (2016/09/24)

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/sampleCalcApp/blob/master/Assets/img.png" /></div>
  
  当アカウントへ訪れていただき、誠にありがとうございます。第8回アプリ教室では、計算機アプリを作ります。自分のペースで勉強したい、勉強前に予習したい、内容を復習したい場合、ご利用ください。
  
## アプリ教室に興味ある方、歓迎します。  
  Meetup  
  http://www.meetup.com/ios-dev-in-namba/events/232838288/  
  
## 別途アプリ教室(有料)も開いております  
  http://learning-ios-dev.esy.es/  

## 問い合わせ
  株式会社ジーライブ
  http://geelive-inc.com  

## アプリ作成手順
#### 1, Storyboardで、アプリのデザイン
> 1-1. main.storyboardを選択し、UI部品からtextfield, label, buttonを配置します。(ドラッグ&ドロップ)
<div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/sampleCalcApp/blob/master/Assets/001.gif" /></div>

> 1-2. StoryboardからViewcontroller.swiftにtextfield, label, buttonを紐付けます。
- textfield, labelの紐付け方(control押しながらドラッグ)
<div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/sampleCalcApp/blob/master/Assets/002.gif" /></div>
- buttonの紐付け方(control押しながらドラッグ)
<div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/sampleCalcApp/blob/master/Assets/003.gif" /></div>

#### 2, ViewController.swiftにコード記述
- 以下コードブロックを記入
  
- 数値のみ入力するため

```Swift
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 数値のみ入力
        leftText.keyboardType = .numberPad
        rightText.keyboardType = .numberPad
    }
```
- 数値計算部分

```Swift
    @IBAction func equal(_ sender: AnyObject) {
        // キーボード閉じる
        self.view.endEditing(true)
        let leftNum = Int(leftText.text!) ?? 0
        let rightNum = Int(rightText.text!) ?? 0
        let sumNum = leftNum + rightNum
        answerLabel.text = "\(sumNum)"
        leftText.text = ""
        rightText.text = ""
    }
```
