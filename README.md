# TRAlert
<p align="center">
<img src="https://user-images.githubusercontent.com/50027618/99060908-91818600-25c2-11eb-8a81-afbe4e855c73.png" width="400" height="300" /> &nbsp; <img
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/50027618/99993798-fe262d00-2dd9-11eb-924f-0a3e3ec84503.jpeg"  width="180" height="350"/> &nbsp; 
<img src="https://user-images.githubusercontent.com/50027618/99993899-1eee8280-2dda-11eb-8a55-208c7c2f1ba1.jpeg"  width="180" height="350"/> &nbsp; 
</p>

[![CI Status](https://img.shields.io/travis/tayyab5588/TRAlert.svg?style=flat)](https://travis-ci.org/tayyab5588/TRAlert)
[![Version](https://img.shields.io/cocoapods/v/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)
[![License](https://img.shields.io/cocoapods/l/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)
[![Platform](https://img.shields.io/cocoapods/p/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)


##  Apps Using TRAlert
---
- StaryBarry 
- Inventory System
---


## Change Color Of Background UIView,UIButton and UIText 
---

```swift
    static var buttonBGColor = UIColor.black
    static var viewBGColor = UIColor.white
    static var buttonTextColor = UIColor.white

```

## Change Font of Title and Message
```swift
    static var headingFont = UIFont(name: "AmericanTypewriter-Bold", size: 18.0)
    static var messageFont = UIFont(name: "AmericanTypewriter", size: 15.0)
```

## Support Version
---

- [x] XCode 11 support 
- [x] Swift 5.0 support


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Installation

### Cocoapods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```



To integrate TRAlert into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
pod 'TRAlert'
end
```

Then, run the following command:

```bash
$ pod install
```

## Usage


```swift

   let okButton = TRAlertButton.init(title: "Ok") { [weak self] in
       guard let _ = self else { return}
   }
   Alert.show(title: "TRAlert", body: "Show message text", buttons: [okButton])
   return


```



## Features
---

- [x] Implementation with  storyboard
- [x] Custome UIView, UIButton and Text Color
- [x] Custome UItext Font


## Author

**tayyab5588** - (https://github.com/tayyab5588)

## License

TRAlert is available under the MIT license. See the LICENSE file for more info.
