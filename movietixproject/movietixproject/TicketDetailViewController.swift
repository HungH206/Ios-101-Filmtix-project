//
//  TicketDetailViewController.swift
//  movietixproject
//
//  Created by Hung Hoang Gia on 8/12/25.
//

import UIKit
import NukeExtensions

class TicketDetailViewController: UIViewController {
    
    @IBOutlet weak var ticketPosterImageView: UIImageView!
    
    @IBOutlet weak var ticketTitleLabel: UILabel!
    
    @IBOutlet weak var ticketNumberLabel: UILabel!
    
    @IBOutlet weak var purchaseButton: UIButton!
    
    var cartItem: CartItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Pop ulate UI with cart item data
        ticketTitleLabel.text = cartItem.movie.title
        ticketNumberLabel.text = "\(cartItem.ticketCount) ticket(s)"
        if let path = cartItem.movie.posterPath,
           let url = URL(string: "https://image.tmdb.org/t/p/w500" + path) {
            NukeExtensions.loadImage(with: url, into: ticketPosterImageView)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
