# RN2048

## Demo
![](http://g.recordit.co/l3slcFRTsW.gif)

## Clone & Setup
```
git clone https://github.com/kyaroru/RN2048.git
cd RN2048
yarn install
```

Open finder, navigate to `ios/swift-2048/` folder, rename `Dev.xcconfig.example` to `Dev.xcconfig`

**Please rename before running pod install, else build failed :p**
```
cd ios
pod install
```

## Start the app
- Open swift-2048.xcworkspace
- Start packager
```
cd .. (back to RN2048 root folder)
yarn start
```
- Run the app