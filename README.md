Test task that checks Android Settings application (WiFi)  

**Tools used**:
```
Genymotion Android emulation
Appium
Ruby 2.2 + RSpec
```

**Installation**:
1. Download and install Genymotion Android emulation 
( genymotion.com )

2. Download and install Appium server<br>
a. install NodeJS ( nodejs.org )<br>
b. from console execute:

``` 
  npm install -g appium
```
3. Ruby<br>
a. download and install Ruby 2.2 + RubyDevKit<br>
b. execute: 'gem install bundler'<br>
c. from repo root folder execute: `bundler install`

**Execution**:
1. Clone repo 
2. Run appium server in separate console: `appium`
3. Check/update Appium server config: 'appium.txt'
4. Execute tests itself: `rspec`

**Folder structure**: 
```
  x--spec
  |   |-acceptance (contains tests to be executed)
  |   |-page (contains page objects, term taken from web automation )
  |   |-support (contains helper modules for data preparation, page navigation )
  |   |-config.rb 
  |   |-README.md (this file)
  |   \-spec_helper.rb
  |
  |-appium.txt (Appium config file)
  \-Gemfile (list Ruby gems to be installed)
```
