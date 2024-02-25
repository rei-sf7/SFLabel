import SpriteKit

/// ラベルのビュークラス
final class SFLabel: SKNode {
    
    /// ビューモデルクラス（プロトコル経由）
    private var viewModel: SFLabelViewModelProtocol!
    
    /// ラベルのテキスト
    var text: String {
        get {
            return self.viewModel.text
        }
        set(value) {
            self.viewModel.text = value
        }
    }
    
    /// 初期化
    override init() {
        super.init()
        self.setupBindings()
    }
    
    /// 初期化（未使用）
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// ViewクラスにViewModelとModelを関連付ける
    private func setupBindings()
    {
        let model = SFLabelModel() as SFLabelModelProtocol
        self.viewModel = SFLabelViewModel(model) as SFLabelViewModelProtocol
        /// 親ノードに子ノードを繋げる
        self.addChild(self.viewModel.labelNode)
    }
    
    func setAlignmentMode(_ vertical: SKLabelVerticalAlignmentMode, horizontal: SKLabelHorizontalAlignmentMode) {
//        self.viewModel.setAlignmentMode(vertical, horizontal: horizontal)
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
