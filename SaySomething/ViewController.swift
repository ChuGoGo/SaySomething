//
//  ViewController.swift
//  SaySomething
//
//  Created by Chu Go-Go on 2021/12/27.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var language: UISegmentedControl!
    @IBOutlet weak var volume: UISlider!
    @IBOutlet weak var toneSlider: UISlider!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var toneLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
//    設定一個func可以改變他的聲音
    func changeSound(){
//        建立一個AVSpeechUtterance內容物是用textField.text記得打”!“
        let utterance = AVSpeechUtterance(string: textField.text!)
//        設定他的語言，用中文的話，輸入英文他也會講話
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-tw")
//        設定用slider來調整他的音量，音調，速度
        utterance.volume = volume.value
        utterance.rate = speedSlider.value
        utterance.pitchMultiplier = toneSlider.value
//        設定讓他發聲
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
//        顯示他的參數在label上
        volumeLabel.text = "\(volume.value)"
        toneLabel.text = "\(toneSlider.value)"
        speedLabel.text = "\(speedSlider.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func languageSegmented(_ sender: UISegmentedControl) {
        
        changeSound()
    }
    
    @IBAction func radomButton(_ sender: Any) {
        volume.setValue(Float.random(in: 0...1), animated: true)
        speedSlider.setValue(Float.random(in: 0...1), animated: true)
        toneSlider.setValue(Float.random(in: 0...1), animated: true)
        changeSound()
    }
    

    @IBAction func playButton(_ sender: Any) {
        changeSound()
    }
    @IBAction func volumeSlider(_ sender: UISlider) {
        changeSound()
    }
    @IBAction func firebirdScreen(_ sender: Any) {
        let utterance = AVSpeechUtterance(string: "火焰火焰火焰")
        
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-tw")
        utterance.volume = volume.value
        utterance.rate = speedSlider.value
        utterance.pitchMultiplier = toneSlider.value
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
        
    }
    @IBAction func flashBirdScreen(_ sender: Any) {
        let utterance = AVSpeechUtterance(string: "閃電閃電閃電")
        
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-tw")
        utterance.volume = volume.value
        utterance.rate = speedSlider.value
        utterance.pitchMultiplier = toneSlider.value
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    @IBAction func freezeBirdScreen(_ sender: Any) {
        let utterance = AVSpeechUtterance(string: "急凍急凍急凍")
        
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-tw")
        utterance.volume = volume.value
        utterance.rate = speedSlider.value
        utterance.pitchMultiplier = toneSlider.value
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    
}

