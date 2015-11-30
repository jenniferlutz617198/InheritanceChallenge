//
//  ViewController.swift
//  ClassificationAndInheritanceChallenge
//
//  Created by Robert Le Bruce on 6/6/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UITextView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        UIDevice.currentDevice().batteryMonitoringEnabled = true

        let myMVPDevice = iPad()

        myLabel.text = getDeviceInfo(myMVPDevice)
    }

    @IBAction func onStretch1Pressed(sender: UIButton)
    {
        let myFirstDevice = iPad()

        myFirstDevice.name = UIDevice.currentDevice().name
        myFirstDevice.model = UIDevice.currentDevice().model
        myFirstDevice.batteryLevel = UIDevice.currentDevice().batteryLevel
        myFirstDevice.systemVersion = UIDevice.currentDevice().systemVersion

        myFirstDevice.orientationIsPortrait = UIDevice.currentDevice().orientation.isPortrait

        myLabel.text = "Stretch #1 Completed\n\n" + getDeviceInfo(myFirstDevice)
    }

    @IBAction func onStretch2Pressed(sender: UIButton)
    {
        let name = UIDevice.currentDevice().name
        let model = UIDevice.currentDevice().model
        let batteryLevel = UIDevice.currentDevice().batteryLevel
        let systemVersion = UIDevice.currentDevice().systemVersion
        let screenWidth = (Float)(UIScreen.mainScreen().bounds.width)
        let screenHeight = (Float)(UIScreen.mainScreen().bounds.height)
        let orientationIsPortrait = UIDevice.currentDevice().orientation.isPortrait

        //Uncomment for the two lines below for Stretch #2
        //let mySecondDevice = iPad(Name: name, Model: model, BatteryLevel: batteryLevel, SystemVersion: systemVersion, ScreenWidth: screenWidth, ScreenHeight: screenHeight, Orientation: orientationIsPortrait)
        //myLabel.text = "Stretch #2 Completed\n\n" + getDeviceInfo(mySecondDevice)
    }

    @IBAction func onStretch3Pressed(sender: UIButton)
    {
        let name = UIDevice.currentDevice().name
        let model = UIDevice.currentDevice().model
        let batteryLevel = UIDevice.currentDevice().batteryLevel
        let systemVersion = UIDevice.currentDevice().systemVersion

        //Uncomment for the six lines below for Stretch #3
        //let myAppleDevice = AppleDevice(Name: name, Model: model, BatteryLevel: batteryLevel, SystemVersion: systemVersion)

        //let myThirdDevice = iPad(AppleDevice: myAppleDevice)

        //myThirdDevice.screenWidth = (Float)(UIScreen.mainScreen().bounds.width)
        //myThirdDevice.screenHeight = (Float)(UIScreen.mainScreen().bounds.height)
        //myThirdDevice.orientationIsPortrait = UIDevice.currentDevice().orientation.isPortrait

        //myLabel.text = "Stretch #3 Completed\n\n" + getDeviceInfo(myThirdDevice)
    }

    func getDeviceInfo(device: iPad) -> String {
        return  "Name: \(device.name)\n" +
                "Model: \(device.model)\n" +
                "Battery Level: \(device.batteryLevel)\n" +
                "System Version: \(device.systemVersion)\n" +
                "Screen Width: \(device.screenWidth)\n" +
                "Screen Height: \(device.screenHeight)\n" +
                "Orientation Is Portrait?: \(device.orientationIsPortrait)"
    }
}

