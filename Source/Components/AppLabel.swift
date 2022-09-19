import UIKit

class AppLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    init(text: String, color: UIColor, font: UIFont, align: NSTextAlignment, lines: Int = 1) {
        super.init(frame: .zero)
        self.defaultValues(text: text, color: color, font: font, align: align)
        self.numberOfLines = lines
    }
    
    private func defaultValues(text: String, color: UIColor, font: UIFont, align: NSTextAlignment) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = color
        self.textAlignment = align
        self.font = font
        self.text = text
    }
}
