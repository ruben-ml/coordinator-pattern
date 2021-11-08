//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 5 storyboards.
  struct storyboard {
    /// Storyboard `HotelsDetailView`.
    static let hotelsDetailView = _R.storyboard.hotelsDetailView()
    /// Storyboard `InformationDetailView`.
    static let informationDetailView = _R.storyboard.informationDetailView()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `TransportDetailView`.
    static let transportDetailView = _R.storyboard.transportDetailView()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "HotelsDetailView", bundle: ...)`
    static func hotelsDetailView(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.hotelsDetailView)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "InformationDetailView", bundle: ...)`
    static func informationDetailView(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.informationDetailView)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "TransportDetailView", bundle: ...)`
    static func transportDetailView(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.transportDetailView)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 2 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")
    /// Color `cellColor`.
    static let cellColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "cellColor")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "cellColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func cellColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.cellColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "cellColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func cellColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.cellColor.name)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.file` struct is generated, and contains static references to 2 files.
  struct file {
    /// Resource file `Tours.json`.
    static let toursJson = Rswift.FileResource(bundle: R.hostingBundle, name: "Tours", pathExtension: "json")
    /// Resource file `shopsJSON.json`.
    static let shopsJSONJson = Rswift.FileResource(bundle: R.hostingBundle, name: "shopsJSON", pathExtension: "json")

    /// `bundle.url(forResource: "Tours", withExtension: "json")`
    static func toursJson(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.toursJson
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "shopsJSON", withExtension: "json")`
    static func shopsJSONJson(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.shopsJSONJson
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 20 images.
  struct image {
    /// Image `background`.
    static let background = Rswift.ImageResource(bundle: R.hostingBundle, name: "background")
    /// Image `boat`.
    static let boat = Rswift.ImageResource(bundle: R.hostingBundle, name: "boat")
    /// Image `bus`.
    static let bus = Rswift.ImageResource(bundle: R.hostingBundle, name: "bus")
    /// Image `cableCar`.
    static let cableCar = Rswift.ImageResource(bundle: R.hostingBundle, name: "cableCar")
    /// Image `calendar`.
    static let calendar = Rswift.ImageResource(bundle: R.hostingBundle, name: "calendar")
    /// Image `currency`.
    static let currency = Rswift.ImageResource(bundle: R.hostingBundle, name: "currency")
    /// Image `documentation`.
    static let documentation = Rswift.ImageResource(bundle: R.hostingBundle, name: "documentation")
    /// Image `hotel1`.
    static let hotel1 = Rswift.ImageResource(bundle: R.hostingBundle, name: "hotel1")
    /// Image `hotel2`.
    static let hotel2 = Rswift.ImageResource(bundle: R.hostingBundle, name: "hotel2")
    /// Image `hotel3`.
    static let hotel3 = Rswift.ImageResource(bundle: R.hostingBundle, name: "hotel3")
    /// Image `idiom`.
    static let idiom = Rswift.ImageResource(bundle: R.hostingBundle, name: "idiom")
    /// Image `mainDishes`.
    static let mainDishes = Rswift.ImageResource(bundle: R.hostingBundle, name: "mainDishes")
    /// Image `price`.
    static let price = Rswift.ImageResource(bundle: R.hostingBundle, name: "price")
    /// Image `taxi`.
    static let taxi = Rswift.ImageResource(bundle: R.hostingBundle, name: "taxi")
    /// Image `teteria`.
    static let teteria = Rswift.ImageResource(bundle: R.hostingBundle, name: "teteria")
    /// Image `toursEspecias`.
    static let toursEspecias = Rswift.ImageResource(bundle: R.hostingBundle, name: "toursEspecias")
    /// Image `trolleyCar`.
    static let trolleyCar = Rswift.ImageResource(bundle: R.hostingBundle, name: "trolleyCar")
    /// Image `turkeyDessert`.
    static let turkeyDessert = Rswift.ImageResource(bundle: R.hostingBundle, name: "turkeyDessert")
    /// Image `turkeyDrink`.
    static let turkeyDrink = Rswift.ImageResource(bundle: R.hostingBundle, name: "turkeyDrink")
    /// Image `weather`.
    static let weather = Rswift.ImageResource(bundle: R.hostingBundle, name: "weather")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "background", bundle: ..., traitCollection: ...)`
    static func background(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.background, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "boat", bundle: ..., traitCollection: ...)`
    static func boat(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.boat, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "bus", bundle: ..., traitCollection: ...)`
    static func bus(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.bus, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "cableCar", bundle: ..., traitCollection: ...)`
    static func cableCar(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cableCar, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "calendar", bundle: ..., traitCollection: ...)`
    static func calendar(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.calendar, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "currency", bundle: ..., traitCollection: ...)`
    static func currency(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.currency, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "documentation", bundle: ..., traitCollection: ...)`
    static func documentation(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.documentation, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "hotel1", bundle: ..., traitCollection: ...)`
    static func hotel1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.hotel1, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "hotel2", bundle: ..., traitCollection: ...)`
    static func hotel2(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.hotel2, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "hotel3", bundle: ..., traitCollection: ...)`
    static func hotel3(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.hotel3, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "idiom", bundle: ..., traitCollection: ...)`
    static func idiom(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.idiom, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "mainDishes", bundle: ..., traitCollection: ...)`
    static func mainDishes(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.mainDishes, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "price", bundle: ..., traitCollection: ...)`
    static func price(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.price, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "taxi", bundle: ..., traitCollection: ...)`
    static func taxi(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.taxi, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "teteria", bundle: ..., traitCollection: ...)`
    static func teteria(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.teteria, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "toursEspecias", bundle: ..., traitCollection: ...)`
    static func toursEspecias(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.toursEspecias, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "trolleyCar", bundle: ..., traitCollection: ...)`
    static func trolleyCar(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.trolleyCar, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "turkeyDessert", bundle: ..., traitCollection: ...)`
    static func turkeyDessert(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.turkeyDessert, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "turkeyDrink", bundle: ..., traitCollection: ...)`
    static func turkeyDrink(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.turkeyDrink, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "weather", bundle: ..., traitCollection: ...)`
    static func weather(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.weather, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.info` struct is generated, and contains static references to 1 properties.
  struct info {
    struct uiApplicationSceneManifest {
      static let _key = "UIApplicationSceneManifest"
      static let uiApplicationSupportsMultipleScenes = false

      struct uiSceneConfigurations {
        static let _key = "UISceneConfigurations"

        struct uiWindowSceneSessionRoleApplication {
          struct defaultConfiguration {
            static let _key = "Default Configuration"
            static let uiSceneConfigurationName = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneConfigurationName") ?? "Default Configuration"
            static let uiSceneDelegateClassName = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneDelegateClassName") ?? "$(PRODUCT_MODULE_NAME).SceneDelegate"

            fileprivate init() {}
          }

          fileprivate init() {}
        }

        fileprivate init() {}
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  /// This `R.nib` struct is generated, and contains static references to 4 nibs.
  struct nib {
    /// Nib `ShopsViewController`.
    static let shopsViewController = _R.nib._ShopsViewController()
    /// Nib `ToursDetailTableViewCell`.
    static let toursDetailTableViewCell = _R.nib._ToursDetailTableViewCell()
    /// Nib `ToursViewController`.
    static let toursViewController = _R.nib._ToursViewController()
    /// Nib `shopsTableViewCell`.
    static let shopsTableViewCell = _R.nib._shopsTableViewCell()

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "ShopsViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.shopsViewController) instead")
    static func shopsViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.shopsViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "ToursDetailTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.toursDetailTableViewCell) instead")
    static func toursDetailTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.toursDetailTableViewCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "ToursViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.toursViewController) instead")
    static func toursViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.toursViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "shopsTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.shopsTableViewCell) instead")
    static func shopsTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.shopsTableViewCell)
    }
    #endif

    static func shopsTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> shopsTableViewCell? {
      return R.nib.shopsTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? shopsTableViewCell
    }

    static func shopsViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.shopsViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func toursDetailTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> ToursDetailTableViewCell? {
      return R.nib.toursDetailTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? ToursDetailTableViewCell
    }

    static func toursViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.toursViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    fileprivate init() {}
  }

  /// This `R.reuseIdentifier` struct is generated, and contains static references to 3 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `ToursDetailTableViewCell`.
    static let toursDetailTableViewCell: Rswift.ReuseIdentifier<ToursDetailTableViewCell> = Rswift.ReuseIdentifier(identifier: "ToursDetailTableViewCell")
    /// Reuse identifier `cellHotel`.
    static let cellHotel: Rswift.ReuseIdentifier<HotelsTableViewCell> = Rswift.ReuseIdentifier(identifier: "cellHotel")
    /// Reuse identifier `transportCell`.
    static let transportCell: Rswift.ReuseIdentifier<TransportCollectionViewCell> = Rswift.ReuseIdentifier(identifier: "transportCell")

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try nib.validate()
    #endif
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _ToursDetailTableViewCell.validate()
    }

    struct _ShopsViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "ShopsViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _ToursDetailTableViewCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType, Rswift.Validatable {
      typealias ReusableType = ToursDetailTableViewCell

      let bundle = R.hostingBundle
      let identifier = "ToursDetailTableViewCell"
      let name = "ToursDetailTableViewCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> ToursDetailTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? ToursDetailTableViewCell
      }

      static func validate() throws {
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "arrow.up.circle") == nil { throw Rswift.ValidationError(description: "[R.swift] System image named 'arrow.up.circle' is used in nib 'ToursDetailTableViewCell', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "checkmark.circle") == nil { throw Rswift.ValidationError(description: "[R.swift] System image named 'checkmark.circle' is used in nib 'ToursDetailTableViewCell', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "star") == nil { throw Rswift.ValidationError(description: "[R.swift] System image named 'star' is used in nib 'ToursDetailTableViewCell', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "timer") == nil { throw Rswift.ValidationError(description: "[R.swift] System image named 'timer' is used in nib 'ToursDetailTableViewCell', but couldn't be loaded.") } }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }

    struct _ToursViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "ToursViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _shopsTableViewCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType {
      typealias ReusableType = shopsTableViewCell

      let bundle = R.hostingBundle
      let identifier = "cell"
      let name = "shopsTableViewCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> shopsTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? shopsTableViewCell
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try hotelsDetailView.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try informationDetailView.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try transportDetailView.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct hotelsDetailView: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let hotelsViewController = StoryboardViewControllerResource<HotelsViewController>(identifier: "HotelsViewController")
      let name = "HotelsDetailView"

      func hotelsViewController(_: Void = ()) -> HotelsViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: hotelsViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.hotelsDetailView().hotelsViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'hotelsViewController' could not be loaded from storyboard 'HotelsDetailView' as 'HotelsViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct informationDetailView: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let informationViewController = StoryboardViewControllerResource<InformationViewController>(identifier: "InformationViewController")
      let name = "InformationDetailView"

      func informationViewController(_: Void = ()) -> InformationViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: informationViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.informationDetailView().informationViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'informationViewController' could not be loaded from storyboard 'InformationDetailView' as 'InformationViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let detailViewController = StoryboardViewControllerResource<DetailViewController>(identifier: "DetailViewController")
      let name = "Main"
      let viewController = StoryboardViewControllerResource<ViewController>(identifier: "ViewController")

      func detailViewController(_: Void = ()) -> DetailViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: detailViewController)
      }

      func viewController(_: Void = ()) -> ViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: viewController)
      }

      static func validate() throws {
        if UIKit.UIImage(named: "background", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'background' is used in storyboard 'Main', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.main().detailViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'detailViewController' could not be loaded from storyboard 'Main' as 'DetailViewController'.") }
        if _R.storyboard.main().viewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'viewController' could not be loaded from storyboard 'Main' as 'ViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct transportDetailView: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "TransportDetailView"
      let transportViewController = StoryboardViewControllerResource<TransportViewController>(identifier: "TransportViewController")

      func transportViewController(_: Void = ()) -> TransportViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: transportViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.transportDetailView().transportViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'transportViewController' could not be loaded from storyboard 'TransportDetailView' as 'TransportViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
