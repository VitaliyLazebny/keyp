Test task that checks Android Settings application (WiFi)
Note: checked on Android 7.1.0, other versions of application can require changes in test
You can use other version to see that tests will fail ;-)

**Tools used**:
```
Genymotion Android emulation
Appium
Ruby 2.2 + RSpec
```

**Installation**:
1. Download and install Genymotion Android emulation 
( genymotion.com )

2. Download and install Appium server<br/>
a. install NodeJS ( nodejs.org )<br/>
b. from console execute:

``` 
  npm install -g appium
```
3. Ruby<br/>
a. download and install Ruby 2.2 + RubyDevKit<br/>
b. execute: 'gem install bundler'<br/>
c. from repo root folder execute: `bundler install`

**Execution**:
1. Run Android 7.1.0 emulation
2. Run appium server in separate console: `appium`
3. Check/update Appium server config: 'appium.txt'
4. Execute tests itself from repo root folder: `rspec`

**Folder structure**: 
```
  x--spec
  |   |-acceptance (contains tests to be executed)
  |   |-page (contains page objects, term taken from web automation )
  |   |-support (contains helper modules for data preparation, page navigation )
  |   |-config.rb 
  |   \-spec_helper.rb
  |
  |-appium.txt (Appium config file)
  |-README.md (this file)
  \-Gemfile (list Ruby gems to be installed)
```

**appium.txt**<br/>
platformName - Android or iOS (depends from expected testing platform)<br/>
appActivity  - name of application to be tested<br/>
appPackage   - app package<br/>
deviceName   - device name to be tested, you can get it using `adb devices`<br/>
