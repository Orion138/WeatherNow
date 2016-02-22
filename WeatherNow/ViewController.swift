//
//  ViewController.swift
//  WeatherNow
//
//  Created by Nathan Boosinger on 2/21/16.
//  Copyright © 2016 Nathan Boosinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var temperatureLbl: UILabel!
    @IBOutlet weak var tempMaxLbl: UILabel!
    @IBOutlet weak var tempMinLbl: UILabel!
    @IBOutlet weak var weatherIconImg: UIImageView!
    @IBOutlet weak var sunriseLbl: UILabel!
    @IBOutlet weak var sunsetLbl: UILabel!
    @IBOutlet weak var windSpeedLbl: UILabel!
    @IBOutlet weak var windDirectionLbl: UILabel!
    @IBOutlet weak var humidityLbl: UILabel!
    @IBOutlet weak var barometerLbl: UILabel!
    
    var weather: Weather!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weather = Weather(location: "Fenton, MO", zipcode: "63026")
        weather.downloadWeatherDetails { () -> () in
            self.updateUI()
        }
    }
    
    
    func updateUI() {
        dayLbl.text = "\(weather.time) \(weather.day)"
        descriptionLbl.text = weather.shortDescription
        temperatureLbl.text = "\(weather.temp)°"
        tempMaxLbl.text = "\(weather.tempMax)°"
        tempMinLbl.text = "\(weather.tempMin)°"
        weatherIconImg.image = UIImage(named: weather.icon)
        sunriseLbl.text = weather.sunrise
        sunsetLbl.text = weather.sunset
        windSpeedLbl.text = "\(weather.windSpeed)mph"
        windDirectionLbl.text = "\(weather.windDirection)"
        humidityLbl.text = "\(weather.humidity)%"
        barometerLbl.text = "\(weather.pressure)"
    }
}

