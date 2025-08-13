//
//  CartManager.swift
//  movietixproject
//
//  Created by Hung Hoang Gia on 8/10/25.
//

import Foundation

class CartManager {
    static let shared = CartManager()
    private(set) var items = [CartItem]()
    private init() {}

    func add(movie: Movie, tickets: Int) {
        if let idx = items.firstIndex(where: { $0.movie.id == movie.id }) {
            items[idx].ticketCount += tickets
        } else {
            items.append(CartItem(movie: movie, ticketCount: tickets))
        }
    }
}
