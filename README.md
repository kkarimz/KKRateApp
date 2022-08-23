# KKRateApp for Swift

KKRateApp is a simple Swift app rating library that prompts your app users to rate the app after using it for a X times.

KKRateApp is a simple Swift Package that allows you to prompt your users to review your app after certain number of app launches, or attempt to review the app manually. 

## Requirements
* Xcode 13 or higher
* iOS 15.0 or higher

## Installation
### Swift Package Manager

#### Swift 5
```swift
dependencies: [
    .package(url: "https://github.com/kaiusee/KKRateApp.git", from: "1.0"),
    /// ...
]
```

## Usage Example
In your initial view controller add the following:

```swift
// Import Package
import KKRateApp

// In ViewDidLoad, Call this func below with the number of times you would like to trigger the app rating 
KKRateMyApp.rateAppAfter(appLaunches: 5)
```

You can also attempt to prompt the user for review manually by calling:

```swift
KKRateMyApp.attemptAppReview()
```

## Screenshot

![](https://github.com/kaiusee/RateMyApp/blob/master/KKRateMyApp.jpg)


## License
MIT License

Copyright (c) 2022 Kais K.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

