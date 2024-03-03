final class SFLabelDefine {
    
    /// フォント名
    /// 新たにフォントを追加する場合はInfo.plistの「Fonts provided by application」にフォントファイル名を追加し、ここにネームを追加してご利用ください。
    enum FontName: String {
        /// DIN Alternateフォント
        case DINAlternate = "DIN Alternate"
        /// Galvjiフォント
        case Galvji = "Galvji"
        /// Futuraフォント
        case Futura = "Futura"
        /// ヘルベチカノイエ UltraLightフォント
        case HelveticaNeueUltraLight = "HelveticaNeue-UltraLight"
        /// 源暎ノンブル
        case GenEiNombre = "GenEiNombre-Regular"
        /// 数式フォント
        case Susiki = "sushiki"
        /// 数式フォントかな【UB】
        case SusikiUb = "sushiki_kana_UB"
        /// スコアドーザー
        case ScoreDozer = "x14y20pxScoreDozer"
        /// STROKE Boldフォント
        case StrokeBold = "Stroke-Bold"
        /// STROKE Lightフォント
        case StrokeLight = "Stroke-Light"
        /// STROKE Regularフォント
        case StrokeRegular = "Stroke-Regular"
    }
}
