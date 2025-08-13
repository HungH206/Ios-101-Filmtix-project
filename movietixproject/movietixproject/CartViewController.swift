//
//  CartViewController.swift
//  movietixproject
//
//  Created by Hung Hoang Gia on 8/10/25.
//

import UIKit
import NukeExtensions

class CartViewController: UIViewController, UITableViewDataSource {
    
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as! CartCell
        let item = items[indexPath.row]
        // Make sure your storyboard cell has these outlets connected!
        cell.titleLabel.text = item.movie.title
        cell.ticketsLabel.text = "\(item.ticketCount) ticket(s)"
        if let path = item.movie.posterPath,
           let url = URL(string: "https://image.tmdb.org/t/p/w500" + path) {
            NukeExtensions.loadImage(with: url, into: cell.posterImageView)
        } else {
            cell.posterImageView.image = nil // fallback if no image
        }
        return cell
    }
    
    
    @IBOutlet weak var cartTableView: UITableView!
    
     var items: [CartItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cartTableView.dataSource = self
        cartTableView.delegate = self  // set delegate to enable didSelectRowAt
        // Do NOT assign items here; always reload from CartManager in viewWillAppear
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        items = CartManager.shared.items
        print("🍏 CartViewController will appear, items count: \(items.count)")
        for item in items {
            print("🍏 Cart item: \(item.movie.title), tickets: \(item.ticketCount)")
        }
        cartTableView.reloadData()
    }
    

    // MARK: - Navigation via storyboard segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTicketDetail",
           let detailVC = segue.destination as? TicketDetailViewController,
           let indexPath = cartTableView.indexPathForSelectedRow {
            detailVC.cartItem = items[indexPath.row]
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

// remove performSegue in delegate extension and override prepare
extension CartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showTicketDetail", sender: nil)
    }
}
