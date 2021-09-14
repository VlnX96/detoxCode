> detox

# Detox Dummy Project

## Requirements

* Make sure you have react-native dependencies installed:
   * react-native-cli is installed (`npm install -g react-native-cli`)
   * watchman is installed (`brew install watchman`)

### Step 1: Npm install

* Run `npm install`.

## To test Release build of your app
### Step 2: Build 
* Build the dummy project
 
 ```
 detox build --configuration ios.sim.release
 ```
 
### Step 3: Test 
* Run tests on the dummy project
 
 ```
 detox test --configuration ios.sim.release
 ```
 This action will open a new simulator and run the tests on it.

## To test Debug build of your app
### Step 2: Build 
* Build the dummy project
 
 ```
 detox build --configuration ios.sim.debug
 ```
 
### Step 3: Test 

 * start react-native packager
 
  ```
 npm run start
 ```
 * Run tests on the demo project
 
 ```
 detox test --configuration ios.sim.debug
 ```
