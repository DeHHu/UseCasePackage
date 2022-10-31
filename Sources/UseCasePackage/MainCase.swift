//
//  File.swift
//  
//
//  Created by Денис Садаков on 31.10.2022.
//

import Foundation
import MyFirstSwiftPackage

public protocol MainCase {
	func getMainText(id: String, completion: @escaping (Result<ProductModel, Error>) -> Void)
}

public class MainCaseImpl: MainCase {
	
	public init(){}
	
	public func getMainText(id: String, completion: @escaping (Result<ProductModel, Error>) -> Void) {
		let repo: ProductsRepository = ProductsRepositoryImpl()
		repo.product(by: id) { result in
			switch result {
				case .success(let product):
					completion(.success(Mappers.productMapper(rawProduct: product)))
				case .failure(let error):
					completion(.failure(error))
			}
		}
		
	}
}
