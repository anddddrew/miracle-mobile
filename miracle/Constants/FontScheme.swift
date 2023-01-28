import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kInterBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBold, size: size)
    }

    static func kInterExtraBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterExtraBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kInterBold":
            result = self.kInterBold(size: size)
        case "kInterExtraBold":
            result = self.kInterExtraBold(size: size)
        default:
            result = self.kInterRegular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "Inter-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "Inter-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterBold: String = "Inter-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterExtraBold: String = "Inter-ExtraBold"
    }
}
