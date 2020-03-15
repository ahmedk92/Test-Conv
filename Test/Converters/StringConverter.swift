//
//  StringConverter.swift
//  Test
//
//  Created by Ahmad Almasri on 3/15/20.
//  Copyright © 2020 Ahmad Almasri. All rights reserved.
//

import Foundation

class StringConverter<T: StringProtocol>: Converter<Data, T> {
	let type: T.Type
	
	 init(type: T.Type) {
		self.type = type
	}
	
	override func convert(value: Data) throws -> T {
		
	guard let decode = String(data: value, encoding: .utf8),  let result = decode as? T else
		  {
				
			  throw NSError()
		}
		return result
	}
}
