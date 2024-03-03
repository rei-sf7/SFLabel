import SpriteKit

/// ラベルのモデルクラスのプロトコル
protocol SFLabelModelProtocol {
//    /// ラベルノード
//    var label: SKLabelNode { get }
    func getLabelNode() -> SKLabelNode
    
    /// ラベルのテキストに適用するフォントの種類をセットする
    /// - Parameter fontName: フォント名
    func setFontName(_ fontName: SFLabelDefine.FontName)
    
    /// ラベルのテキストに適用されているフォント名を取得する
    /// - Returns: フォント名
    func getFontName() -> String
    
    /// ラベルに表示するテキストをセットする
    /// - Parameter text: テキスト情報
    func setText(_ text: String)
    
    /// ラベルのテキストを取得する
    /// - Returns: テキスト情報
    func getText() -> String
    
    /// ラベルのテキストのフォントカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFontColor(_ colorName: SFColor.ColorName)
    
    /// ラベルのテキストのフォントカラーを取得する
    /// - Returns: カラー情報
    func getFontColor() -> UIColor
    
    /// ラベルのテキストのフォントサイズをセットする
    /// - Parameter size: サイズ情報
    func setFontSize(_ size: CGFloat)
    
    /// ラベルのテキストのフォントサイズを取得する
    /// - Returns: サイズ情報
    func getFontSize() -> CGFloat
}

final class SFLabelModel: SFLabelModelProtocol {
    
    /// ラベルノード
    private var label: SKLabelNode
    
    /// 初期化
    init() {
        self.label = SKLabelNode()
        self.setText("test message.")
        self.setFontName(.Galvji)
        self.setFontSize(24)
        self.setFontColor(.dark)
        self.label.verticalAlignmentMode = .top
        self.label.horizontalAlignmentMode = .left
    }
    
    func getLabelNode() -> SKLabelNode {
        return self.label
    }
    
    /// ラベルのテキストに適用するフォントの種類をセットする
    /// - Parameter fontName: フォント名
    func setFontName(_ fontName: SFLabelDefine.FontName) {
        self.label.fontName = fontName.rawValue
    }
    
    /// ラベルのテキストに適用されているフォント名を取得する
    /// - Returns: フォント名
    func getFontName() -> String {
        return self.label.fontName!
    }
    
    /// ラベルに表示するテキストをセットする
    /// - Parameter text: テキスト情報
    func setText(_ text: String) {
        self.label.text = text
    }
    
    /// ラベルのテキストを取得する
    /// - Returns: テキスト情報
    func getText() -> String {
        return self.label.text ?? ""
    }
    
    /// ラベルのテキストのフォントサイズをセットする
    /// - Parameter size: サイズ情報
    func setFontSize(_ size: CGFloat) {
        self.label.fontSize = size
    }
    
    /// ラベルのテキストのフォントサイズを取得する
    /// - Returns: サイズ情報
    func getFontSize() -> CGFloat {
        return self.label.fontSize
    }
    
    /// ラベルのテキストのフォントカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFontColor(_ colorName: SFColor.ColorName) {
        self.label.fontColor = SFColor().getColor(colorName)
    }
    
    /// ラベルのテキストのフォントカラーを取得する
    /// - Returns: カラー情報
    func getFontColor() -> UIColor {
        return self.label.fontColor!
    }
}
