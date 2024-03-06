import SpriteKit

/// ラベルのビュークラス
final class SFLabel: SKNode {
    
    /// ビューモデルクラス（プロトコル経由）
    private var viewModel: SFLabelViewModelProtocol!
    
    /// 初期化
    override init() {
        super.init()
        self.setupBindings()
    }
    
    /// 初期化（定義のみ、未使用）
    /// - Parameter coder: -
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// ViewクラスにViewModelとModelを関連付ける
    private func setupBindings()
    {
        let model = SFLabelModel() as SFLabelModelProtocol
        self.viewModel = SFLabelViewModel(model) as SFLabelViewModelProtocol
        /// 親ノードに子ノードを繋げる
        let labelNode = self.viewModel.getLabelNode()
        self.addChild(labelNode)
    }
    
    /// ラベルのテキストをセットする
    func setText(_ text: String) {
        self.viewModel.setText(text)
    }
    
    /// ラベルのテキストをセットする
    func getText() -> String {
        return self.viewModel.getText()
    }
    
    /// ラベルのテキストの垂直および水平方向の配置モードを設定します。
    /// - Parameters:
    ///   - vertical: テキストの垂直方向の配置モード
    ///   - horizontal: テキストの水平方向の配置モード
    func setAlignmentMode(_ vertical: SKLabelVerticalAlignmentMode,_ horizontal: SKLabelHorizontalAlignmentMode) {
        self.viewModel.setAlignmentMode(vertical, horizontal)
    }
    
    /// ラベルのテキストのフォントカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFontColor(_ colorName: SFColor.ColorName) {
        self.viewModel.setFontColor(colorName)
    }
    
    /// ラベルのテキストのフォントカラーを取得する
    /// - Returns: カラー情報
    func getFontColor() -> UIColor {
        return self.viewModel.getFontColor()
    }
    
}
