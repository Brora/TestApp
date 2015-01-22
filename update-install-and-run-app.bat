copy "platforms\android\ant-build\CordovaApp-debug.apk" "C:\Program Files (x86)\Android\android-sdk\platform-tools"
adb kill-server
adb start-server
cd C:\Program Files (x86)\Android\android-sdk\platform-tools\
del TestApp.apk
ren CordovaApp-debug.apk TestApp.apk
adb install -r TestApp.apk
adb shell am start -n com.ionicframework.myapp577913/.CordovaApp