//
//  Converter.swift
//  Test
//
//  Created by Ahmad Almasri on 3/15/20.
//  Copyright © 2020 Ahmad Almasri. All rights reserved.
//

import Foundation


typealias Converter<I, O> = (I) throws -> O
typealias ConverterFactory<I, O> = () -> Converter<I, O>

typealias CodableConverter<O: Decodable> = Converter<Data, O>
typealias CodableConverterFactory<T: Decodable> = () -> CodableConverter<T>

func makeCodableConverter<T>() -> CodableConverter<T> {
    { data in
        try JSONDecoder().decode(T.self, from: data)
    }
}

func makeCodableConverterFactory<T>() -> CodableConverterFactory<T> {
    {
        makeCodableConverter()
    }
}
