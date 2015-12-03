//
//  ViewController.swift
//  InspireMe
//
//  Created by Abdurrahman on 12/3/15.
//  Copyright © 2015 Hafiz Developer. All rights reserved.
//  Inspire Me app! Enjoy

// MARK: - CGFloat(drand48()) is a random color property

import UIKit

class ViewController: UIViewController {

	// MARK: - Connections
	@IBOutlet weak var quoteLabel: UILabel!
	@IBOutlet weak var inspireButton: UIButton!
	@IBOutlet weak var backgroundImage: UIImageView!

	var quotes = Quotes()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let randomColor = randomColors()
		inspireButton.backgroundColor = randomColor
		
		let randomBGLabelColor = randomColorsLabel()
		quoteLabel.backgroundColor = randomBGLabelColor
		
		let quote = quotes.randomQuote()
		quoteLabel.text = quote
		
		// let randImage = randomImage()
		// backgroundImage.image = randImage
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func inspireButtonPressed(sender: AnyObject) {
	
		let quote = quotes.randomQuote()
		quoteLabel.text = quote
		
		randomImage()
		
		let randomColor = randomColors()
		inspireButton.backgroundColor = randomColor
		
		let randomBGLabelColor = randomColorsLabel()
		quoteLabel.backgroundColor = randomBGLabelColor
	}
	
	
	func randomImage() -> UIImage {
		
		let imageCount = 6
		let randomCount = Int(arc4random()) % imageCount + 1
		
		if let image = UIImage(named: "image\(randomCount)") {
			backgroundImage.image = image
		}
		
		
		return UIImage()
	}

	func randomColors() -> UIColor {
		
		let random = Int(arc4random()) % 5
		
		switch random {
		case 0: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
		case 1: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
		case 2: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
		case 3: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
		case 4: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
			
		default: break
		
		}
	
		return UIColor()
	}

	func randomColorsLabel() -> UIColor {
		
		let random = Int(arc4random()) % 5
		
		switch random {
		case 0: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
		case 1: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
		case 2: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
		case 3: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
		case 4: return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
			
		default: break
			
		}
		
		return UIColor()
	}


}

