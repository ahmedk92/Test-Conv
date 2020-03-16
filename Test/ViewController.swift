//
//  ViewController.swift
//  Test
//
//  Created by Ahmad Almasri on 3/5/20.
//  Copyright © 2020 Ahmad Almasri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    typealias Factory = ConverterFactory<Data, User>
	var f: Factory!
    func addFactory(f: @escaping Factory) {
		self.f = f
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()

		self.addFactory(f: makeCodableConverterFactory())
		let json = """
		{"name": "Ahmad", "age":"11"}
		"""
		
		
		////
		
		let result: Converter<Data, User>? = self.f()
		do {
		let user = try result?(json.data(using: .utf8)!)
			dump(user)

		} catch {
			print(error)
		}

}

}



class User: NSObject, Decodable {
	
	let name: String
	let age: String
	
}


