import AVFoundation
import Foundation

@Observable
final class TextToSpeechManager: NSObject, AVSpeechSynthesizerDelegate {
    private let synthesizer = AVSpeechSynthesizer()
    var isSpeaking = false
    
    override init() {
        super.init()
        synthesizer.delegate = self
        
        // Configure audio session for playback
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .spokenAudio, options: .duckOthers)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Failed to set up audio session: \(error)")
        }
    }
    
    func speak(_ text: String) {
        // Stop any current speech immediately
        stopSpeaking()
        
        // Clean text to remove emojis
        let cleanText = removeEmojis(from: text)
        guard !cleanText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else { return }
        
        let utterance = AVSpeechUtterance(string: cleanText)
        
        // Configure voice
        // Prefer a high-quality female voice if available (e.g., Samantha, Ava)
        if let voice = AVSpeechSynthesisVoice(language: "en-US") {
            utterance.voice = voice
        }
        
        utterance.rate = 0.5 // Natural conversational rate
        utterance.pitchMultiplier = 1.1 // Slightly higher pitch for a friendly tone
        utterance.volume = 1.0
        
        synthesizer.speak(utterance)
        isSpeaking = true
    }
    
    func stopSpeaking() {
        if synthesizer.isSpeaking {
            synthesizer.stopSpeaking(at: .immediate)
        }
        isSpeaking = false
    }
    
    // MARK: - Helper
    
    private func removeEmojis(from text: String) -> String {
        // This regex matches most emoji ranges
        // Note: Swift's string handling deals with extended grapheme clusters, so simple scalar checks work well for most
        return text.unicodeScalars
            .filter { !isEmoji($0) }
            .reduce("") { $0 + String($1) }
    }
    
    private func isEmoji(_ scalar: Unicode.Scalar) -> Bool {
        switch scalar.value {
        case 0x1F600...0x1F64F, // Emoticons
             0x1F300...0x1F5FF, // Misc Symbols and Pictographs
             0x1F680...0x1F6FF, // Transport and Map
             0x1F1E6...0x1F1FF, // Regional Indicator Symbols
             0x2600...0x26FF,   // Misc symbols
             0x2700...0x27BF,   // Dingbats
             0xFE00...0xFE0F,   // Variation Selectors
             0x1F900...0x1F9FF, // Supplemental Symbols and Pictographs
             0x1F018...0x1F270, // Various Asian characters
             0x238C...0x2454,   // Misc items
             0x20D0...0x20FF:   // Combining Diacritical Marks for Symbols
            return true
        default:
            return false
        }
    }
    
    // MARK: - AVSpeechSynthesizerDelegate
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        isSpeaking = false
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance) {
        isSpeaking = false
    }
}
