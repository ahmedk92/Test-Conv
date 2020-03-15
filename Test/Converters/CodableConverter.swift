//
//  CodableConverter.swift
//  Test
//
//  Created by Ahmad Almasri on 3/15/20.
//  Copyright © 2020 Ahmad Almasri. All rights reserved.
//

import Foundation

class CodableConverter<T: Decodable>: Converter<Data, T> {
	
	let jsonDecoder: JSONDecoder
	let type: T.Type
	init(_ jsonDecoder: JSONDecoder,  type: T.Type) {
		self.jsonDecoder = jsonDecoder
		self.type = type
	}
	override func convert(value: Data) throws -> T {
		
		do {
			
			let result = try JSONDecoder().decode(type.self, from: value)
			
			return result

		} catch {
			throw error
		}
	}
}
