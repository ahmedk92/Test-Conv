//
//  ViewController.swift
//  Test
//
//  Created by Ahmad Almasri on 3/5/20.
//  Copyright © 2020 Ahmad Almasri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var f: Factory!
	func addFactory(f: Factory) {
		self.f = f
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()

		self.addFactory(f: CodableConverterFactory.create())
		let json = """
		{"name": "Ahmad", "age":"11"}
		"""
		
		
		////
		
		let result: Converter<Data, User>? = self.f.responseBodyConverter()
		do {
		let user = try result?.convert(value: json.data(using: .utf8)!)
			print(user)

		} catch {
			print(error)
		}

}

}



class User: NSObject, Decodable {
	
	let name: String
	let age: String
	
}


