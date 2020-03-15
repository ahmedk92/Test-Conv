//
//  StringConverterFactory.swift
//  Test
//
//  Created by Ahmad Almasri on 3/15/20.
//  Copyright © 2020 Ahmad Almasri. All rights reserved.
//

import Foundation

class StringConverterFactory: Factory {
	
	static func create() -> StringConverterFactory {
		
		return StringConverterFactory()
	}
	
	override func responseBodyConverter<T: StringProtocol>() -> Converter<Data, T>? {
		
		return StringConverter(type: T.self)
	}
}
