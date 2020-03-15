//
//  Converter.swift
//  Test
//
//  Created by Ahmad Almasri on 3/15/20.
//  Copyright © 2020 Ahmad Almasri. All rights reserved.
//

import Foundation


class Converter<T, U> {

	func convert(value: T) throws -> U {
		
		preconditionFailure("Converter not implemented")
	}
}


class Factory {
 
	func responseBodyConverter<T>() -> Converter<Data, T>? {
		
		return nil
	}
}
