//
//  Constants.swift
//  WeatherNow
//
//  Created by Nathan Boosinger on 2/21/16.
//  Copyright © 2016 Nathan Boosinger. All rights reserved.
//

import Foundation

// URL for current weather
// http://api.openweathermap.org/data/2.5/weather?zip=63026,us&units=imperial&appid=50ef38918c4d72a4f9acd1d779a50bf6

public let URL_BASE = "http://api.openweathermap.org/data/2.5/weather?zip="
public let URL_ZIP = "62263"
public let URL_UNITS = ",us&units=imperial&appid="
public let API_KEY = "50ef38918c4d72a4f9acd1d779a50bf6"

typealias DownloadComplete = () -> ()