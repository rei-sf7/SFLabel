import SpriteKit

/// ラベルのビューモデルクラスのプロトコル
protocol SFLabelViewModelProtocol {
//    /// ラベルのテキスト
//    var text: String { get set }
//    /// ラベルノード
//    var labelNode: SKLabelNode  { get }
    /// ラベルのテキストのフォントカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFontColor(_ colorName: SFColor.ColorName)
    /// ラベルのテキストのフォントカラーを取得する
    /// - Returns: カラー情報
    func getFontColor() -> UIColor
    func setText(_ text: String)
    func getText() -> String
    func getLabelNode() -> SKLabelNode
}

/// ビューモデルクラス
final class SFLabelViewModel: SFLabelViewModelProtocol {
    
    /// モデルクラス（プロトコル経由）
    private let model: SFLabelModelProtocol
    
//    /// ラベルのテキスト
//    var text: String {
//        get {
//            return self.model.label.text ?? ""
//        }
//        set(value) {
//            self.model.label.text = value
//        }
//    }
    
//    /// ラベルノード
//    var labelNode: SKLabelNode {
//        get {
//            return self.model.label
//        }
//    }
    
    /// 初期化
    init(_ model: SFLabelModelProtocol) {
        self.model = model
    }
    
    func getLabelNode() -> SKLabelNode {
        return self.model.getLabelNode()
    }
    
    /// ラベルのテキストをセットする
    func setText(_ text: String) {
        self.model.setText(text)
    }
    
    /// ラベルのテキストをセットする
    func getText() -> String {
        return self.model.getText()
    }
    
    /// ラベルのテキストのフォントカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFontColor(_ colorName: SFColor.ColorName) {
        self.model.setFontColor(colorName)
    }
    
    /// ラベルのテキストのフォントカラーを取得する
    /// - Returns: カラー情報
    func getFontColor() -> UIColor {
        return self.model.getFontColor()
    }
}
