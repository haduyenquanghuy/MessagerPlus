// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Common {
    /// Tạo tài khoản mới
    internal static let createAccount = L10n.tr("Localizable", "Common.CreateAccount", fallback: "Tạo tài khoản mới")
    /// Bạn quên mật khẩu ư?
    internal static let forgetPassword = L10n.tr("Localizable", "Common.ForgetPassword", fallback: "Bạn quên mật khẩu ư?")
    /// Đăng nhập
    internal static let login = L10n.tr("Localizable", "Common.Login", fallback: "Đăng nhập")
    /// Mật khẩu
    internal static let password = L10n.tr("Localizable", "Common.Password", fallback: "Mật khẩu")
    /// Localizable.strings
    ///   MessagerPlus
    /// 
    ///   Created by Ha Duyen Quang Huy on 03/08/2023.
    internal static let phoneNumberOrEmail = L10n.tr("Localizable", "Common.PhoneNumberOrEmail", fallback: "Số điện thoại hoặc email")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
