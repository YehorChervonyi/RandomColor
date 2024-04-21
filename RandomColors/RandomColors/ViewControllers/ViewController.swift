//
//  ViewController.swift
//  RandomColors
//
//  Created by ferret on 21.04.2024.
//

import UIKit

class ViewController: UIViewController	 {
    
    var colors:[UIColor] = []
    
    enum Cells{
        static let colorCell = "ColorCell"
    }
    enum Segues{
        static let toDetail = "toDetails"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomColorsArray()
    }
    
    func generateRandomColorsArray(){
        for _ in 0...50{
            colors.append(.Random())
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailsVC
        destVC.color = sender as? UIColor
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail , sender: color)
    }
}
