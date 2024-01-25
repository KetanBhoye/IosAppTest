import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kInterBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBold, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kArimoRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kArimoRomanBold, size: size)
    }

    static func kArimoRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kArimoRegular, size: size)
    }

    static func kMontserratRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanRegular, size: size)
    }

    static func kMontserratRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanBold, size: size)
    }

    static func kDMSansRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kDMSansRegular, size: size)
    }

    static func kPoppinsSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsSemiBold, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kPoppinsBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kInterBold":
            result = self.kInterBold(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kArimoRomanBold":
            result = self.kArimoRomanBold(size: size)
        case "kArimoRegular":
            result = self.kArimoRegular(size: size)
        case "kMontserratRomanRegular":
            result = self.kMontserratRomanRegular(size: size)
        case "kMontserratRomanBold":
            result = self.kMontserratRomanBold(size: size)
        case "kDMSansRegular":
            result = self.kDMSansRegular(size: size)
        case "kPoppinsSemiBold":
            result = self.kPoppinsSemiBold(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kPoppinsBold":
            result = self.kPoppinsBold(size: size)
        default:
            result = self.kInterBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kInterBold: String = "Inter-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "Inter-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kArimoRomanBold: String = "ArimoRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kArimoRegular: String = "Arimo-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanRegular: String = "MontserratRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanBold: String = "MontserratRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kDMSansRegular: String = "DMSansRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsSemiBold: String = "Poppins-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBold: String = "Poppins-Bold"
    }
}
