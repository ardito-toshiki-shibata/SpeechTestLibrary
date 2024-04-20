// The Swift Programming Language
// https://docs.swift.org/swift-book



import Foundation
import AVFoundation

@available(macOS 10.14, *)
public class SpeechManager {
    
    private let synthesizer = AVSpeechSynthesizer()
    public init() {
        
    }
    
    public func play(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        let voice = AVSpeechSynthesisVoice(language: "ja-JP")
        utterance.voice = voice
        self.synthesizer.speak(utterance)
    }
}
