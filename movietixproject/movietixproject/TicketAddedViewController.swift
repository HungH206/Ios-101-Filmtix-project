//
//  TicketAddedViewController.swift
//  movietixproject
//
//  Created by Hung Hoang Gia on 8/9/25.
//

import UIKit

class TicketAddedViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var profileButton: UIButton!
    
    
    var ticketCount: Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messageLabel.text = "Your \(ticketCount) ticket(s) were reserved."
    }
    
    @IBAction private func didTapReturn(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
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
