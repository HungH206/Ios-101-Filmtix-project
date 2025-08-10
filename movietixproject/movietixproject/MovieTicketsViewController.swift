//
//  MovieTicketsViewController.swift
//  movietixproject
//
//  Created by Hung Hoang Gia on 8/9/25.
//

import UIKit

class MovieTicketsViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var ticketStepper: UIStepper!
    @IBOutlet weak var confirmButton: UIButton!
    
    private var ticketCount = 1 {
        didSet { updateUI() }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ticketStepper.minimumValue = 1
        ticketStepper.maximumValue = 10  // or whatever limit you need
        ticketStepper.value = Double(ticketCount)
        updateUI()
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
            ticketCount = Int(sender.value)
        }
    
        @IBAction private func didTapConfirm(_ sender: UIButton) {
            performSegue(withIdentifier: "showTicketAdded", sender: nil)
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard segue.identifier == "showTicketAdded",
                  let dest = segue.destination as? TicketAddedViewController else { return }
            dest.ticketCount = ticketCount
        }

        private func updateUI() {
            countLabel.text = "\(ticketCount)"
            ticketStepper.value = Double(ticketCount)
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
