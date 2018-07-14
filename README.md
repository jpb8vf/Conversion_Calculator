# Conversion_Calculator

## Description: Build the first part of a conversion calculator app that includes the user interface and the implementation of an action sheet to select the converter which causes the displayed units to change.

## Purpose: The challenge provides experience with building user interfaces using stack views as well as implementing action sheets.

## Requirements:

Project Name: Conversion Calculator
Target Platform: iOS
Programming Language: Swift
Devices: Universal

This project is to be managed in a public GitHub repository. For the challenge assignment submit the Clone with HTTPS URL for the repository.

Delete the ViewController.swift file from the project that is automatically provided when an iOS Single View Application is created. You are to create a View Controller that has a descriptive name. Never use generic names like ViewController.swift. The names you use for classes, structs, code files, etc. let other programmers know where to find things. For this project name the view controller ConverterViewController. Make sure you set this as the custom class for the view controller in interface builder.

The two fields at the top where the units are displayed are plain text fields. The font used in the text fields is System 40.0 with the default black color. The top text field has a background color with a hex value of DCFFFF. The bottom text field has a background color of white.

The keyboard is comprised of buttons. The font used for all of the buttons except the Converter button is Avenir Light 40.0. The font for the Converter button is Avenir Light 23.0. The C and +/- buttons have a background color with a hex value of B3B3B3. The Converter button has a background color of Orange. The remaining buttons have a background color with a hex value of CCCCCC.

Once the user interface is built, create IBOutlets to the two text fields. Name the variable for the top text field outputDisplay and the variable for the bottom text field inputDisplay. Also create an IBAction that gets invoked when the Converter button is tapped.

What you need to accomplish next requires an array of struct instances. An array is to be created that contains a list of converters where a struct is used to define a converter. A converter needs to hold three pieces of information: label, input unit, and output unit. The four converters that need to be created and put in the array are:

label: fahrenheit to celcius, input unit: °F, output unit: °C

label: celcius to fahrenheit, input unit: °C, output unit: °F

label: miles to kilometers, input unit: mi, output unit: km

label: kilometers to miles, input unit: km, output unit: mi

Note: you can enter a ° using the keyboard by pressing shift-option 8.

When the app launches the current (default) converter is to be set to fahrenheit to celcius and the labels in the text fields are to be set to the associated input and output units. The place to create the array of converters, set the default converter, and display the labels is in the viewDidLoad function of the view controller.

When the user taps on the Converter button, display an action sheet that lists the converters. When the user selects a converter the current converter is to be set to the selected converter and the input and output units in the text fields are to be changed to match.


