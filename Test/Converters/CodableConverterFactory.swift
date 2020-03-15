//
//  CodableConverterFactory.swift
//  Test
//
//  Created by Ahmad Almasri on 3/15/20.
//  Copyright © 2020 Ahmad Almasri. All rights reserved.
//

import Foundation

class CodableConverterFactory: Factory {
	
	static func create() -> CodableConverterFactory {
		
		return CodableConverterFactory()
	}
	
	override func responseBodyConverter<T: Decodable>() -> Converter<Data, T>? {
		let cc = CodableConverter(JSONDecoder(), type: T.self)
		return cc
	}
}
