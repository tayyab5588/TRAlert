# TRAlert
<p align="center">
<img src="https://user-images.githubusercontent.com/50027618/99060908-91818600-25c2-11eb-8a81-afbe4e855c73.png" width="400" height="300" /> &nbsp; <img
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/50027618/99058563-38642300-25bf-11eb-9402-006ab56bb0a1.gif"  width="180" height="350"/> &nbsp; 
<img src="https://user-images.githubusercontent.com/50027618/99060515-f8eb0600-25c1-11eb-9513-b590313136c1.gif"  width="180" height="350"/> &nbsp; 
<img src="https://user-images.githubusercontent.com/50027618/99060626-1ddf7900-25c2-11eb-8670-d3930012ac59.gif"  width="180" height="350">


</p>

[![CI Status](https://img.shields.io/travis/tayyab5588/TRAlert.svg?style=flat)](https://travis-ci.org/tayyab5588/TRAlert)
[![Version](https://img.shields.io/cocoapods/v/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)
[![License](https://img.shields.io/cocoapods/l/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)
[![Platform](https://img.shields.io/cocoapods/p/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)




## Change Color Of Background UIView,UIButton and UIText 
---

```swift
Alert.designAlert(viewColor: .brown, buttonTextColor: .black, buttonColor: .green, font: .systemFont(ofSize: 12))
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TRAlert is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TRAlert'
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

let cancelButton = TRAlertButton(title: "Cancel") { [weak self] in
guard let _ = self else { return }
}
let okButton = TRAlertButton(title: "Ok") { [weak self] in
guard let _ = self else { return }
}
Alert.show(title: "TRAlert", body: "Show message text", buttons: [okButton,cancelButton])
Alert.designAlert(viewColor: .brown, buttonTextColor: .black, buttonColor: .green, font: .systemFont(ofSize: 12))




```

- All done! Run the code and see the magic.


## Features
---

- [x] Implementation with code & storyboard
- [x] Custome UIView, UIButton and Text Color
- [x] Custome UItext Font


## Author

tayyab5588, t.raza5588@gmail.com

## License

TRAlert is available under the MIT license. See the LICENSE file for more info.
