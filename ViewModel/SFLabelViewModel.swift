import SpriteKit

/// ラベルのビューモデルクラスのプロトコル
protocol SFLabelViewModelProtocol {
    /// ラベルのテキストのフォントカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFontColor(_ colorName: SFColor.ColorName)
    
    /// ラベルのテキストのフォントカラーを取得する
    /// - Returns: カラー情報
    func getFontColor() -> UIColor
    
    /// ラベルに表示するテキストをセットする
    /// - Parameter text: テキスト情報
    func setText(_ text: String)
    
    /// ラベルのテキストを取得する
    /// - Returns: テキスト情報
    func getText() -> String
    
    /// ラベルのノードを取得します。
    /// - Returns: ラベルのノード
    func getLabelNode() -> SKLabelNode
    
    /// ラベルのテキストの垂直および水平方向の配置モードを設定します。
    /// - Parameters:
    ///   - vertical: テキストの垂直方向の配置モード
    ///   - horizontal: テキストの水平方向の配置モード
    func setAlignmentMode(_ vertical: SKLabelVerticalAlignmentMode,_ horizontal: SKLabelHorizontalAlignmentMode)
}

/// ビューモデルクラス
final class SFLabelViewModel: SFLabelViewModelProtocol {
    
    /// モデルクラス（プロトコル経由）
    private let model: SFLabelModelProtocol
    
    
    /// 初期化
    /// - Parameter model: SFLabelModelProtocol型のモデル
    init(_ model: SFLabelModelProtocol) {
        self.model = model
    }
    
    /// ラベルのノードを取得します。
    /// - Returns: ラベルのノード
    func getLabelNode() -> SKLabelNode {
        return self.model.getLabelNode()
    }
    
    /// ラベルに表示するテキストをセットする
    /// - Parameter text: テキスト情報
    func setText(_ text: String) {
        self.model.setText(text)
    }
    
    /// ラベルのテキストを取得する
    /// - Returns: テキスト情報
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
    
    /// ラベルのテキストの垂直および水平方向の配置モードを設定します。
    /// - Parameters:
    ///   - vertical: テキストの垂直方向の配置モード
    ///   - horizontal: テキストの水平方向の配置モード
    func setAlignmentMode(_ vertical: SKLabelVerticalAlignmentMode,_ horizontal: SKLabelHorizontalAlignmentMode) {
        self.model.setAlignmentMode(vertical, horizontal)
    }
}
