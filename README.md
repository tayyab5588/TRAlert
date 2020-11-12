# TRAlert

<p align="center">
<img src="https://user-images.githubusercontent.com/50027618/98242099-c15ed700-1f8d-11eb-9306-f19d106297d5.png" width="230" height="170" /> &nbsp; <img src="https://user-images.githubusercontent.com/50027618/98242102-c2900400-1f8d-11eb-969b-654ff576a31c.png" width="230" height="170" /> &nbsp;
<img src="https://user-images.githubusercontent.com/50027618/98242103-c3c13100-1f8d-11eb-851a-b145cf43af3e.png" width="230" height="170" /> &nbsp;
<img src="https://user-images.githubusercontent.com/50027618/98242106-c459c780-1f8d-11eb-8022-20bb64557b7d.png" width="230" height="170" /> &nbsp;
</a>
</p>




[![CI Status](https://img.shields.io/travis/tayyab5588/TRAlert.svg?style=flat)](https://travis-ci.org/tayyab5588/TRAlert)
[![Version](https://img.shields.io/cocoapods/v/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)
[![License](https://img.shields.io/cocoapods/l/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)
[![Platform](https://img.shields.io/cocoapods/p/TRAlert.svg?style=flat)](https://cocoapods.org/pods/TRAlert)

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

//        let cancelButton = TRAlertButton(title: "Cancel") { [weak self] in
//            guard let _ = self else { return }
//        }
//        let okButton = TRAlertButton(title: "Ok") { [weak self] in
//            guard let _ = self else { return }
//        }
//        Alert.show(title: "TRAlert", body: "Show message text", buttons: [okButton,cancelButton])
//        Alert.designAlert(viewColor: .brown, buttonTextColor: .black, buttonColor: .green, font: .systemFont(ofSize: 12))




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
