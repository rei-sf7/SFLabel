import SpriteKit

/// ラベルのビューモデルクラスのプロトコル
protocol SFLabelViewModelProtocol {
    /// ラベルのテキスト
    var text: String { get set }
    /// ラベルノード
    var labelNode: SKLabelNode  { get }
    /// ラベルのテキストのフォントカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFontColor(_ colorName: SFColor.ColorName)
    /// ラベルのテキストのフォントカラーを取得する
    /// - Returns: カラー情報
    func getFontColor() -> UIColor
}

/// ビューモデルクラス
final class SFLabelViewModel: SFLabelViewModelProtocol {
    
    /// モデルクラス（プロトコル経由）
    private let model: SFLabelModelProtocol
    
    /// ラベルのテキスト
    var text: String {
        get {
            return self.model.label.text ?? ""
        }
        set(value) {
            self.model.label.text = value
        }
    }
    
    /// ラベルノード
    var labelNode: SKLabelNode {
        get {
            return self.model.label
        }
    }
    
    /// 初期化
    init(_ model: SFLabelModelProtocol) {
        self.model = model
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
