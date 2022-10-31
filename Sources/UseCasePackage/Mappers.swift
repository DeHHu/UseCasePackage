//
//  File.swift
//  
//
//  Created by Денис Садаков on 31.10.2022.
//

import Foundation
import MyFirstSwiftPackage

struct Mappers {
	static func productMapper(rawProduct: Product) -> ProductModel {
		return ProductModel(
			id: rawProduct.id,
			title: rawProduct.title,
			productDescription: rawProduct.productDescription,
			price: rawProduct.price)
	}
}


