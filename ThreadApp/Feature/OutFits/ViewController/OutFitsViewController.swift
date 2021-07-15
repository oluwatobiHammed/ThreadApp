//
//  OutFitsViewController.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import UIKit
import RxSwift
import RxCocoa

class OutFitsViewController: BaseViewController, UITableViewDataSource {
 
    
    @IBOutlet weak var tableview: UITableView!
    
    var validateDisposable: Disposable?
    /// Room View Model Object
    var outFitsViewModel: IOutFitsViewModel?
    var outFits = [Outfits]()
    override func getViewModel() -> BaseViewModel {
        return self.outFitsViewModel as! BaseViewModel
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "OutFits"
        navigationController?.navigationBar.prefersLargeTitles = true
        //tableview.contentInsetAdjustmentBehavior = .never
        outFitsViewModel?.getOutFIts(pageNo: 2)
        tableview.register(UINib(nibName: OutFitViewController.Identifier, bundle: nil), forCellReuseIdentifier: OutFitViewController.Identifier)
        let rooms = Bundle.main.decode(OutfitsResponse.self, from: "response.json")
        rooms.subscribe({ [weak self] res in
            print()
            DispatchQueue.main.async {
                if let result = (res.element?.outfits) {
                    self?.outFits.append(contentsOf: result)
                    self?.tableview.reloadData()
                }
                
            }
            
        })
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return outFits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OutFitViewController.Identifier) as! OutFitViewController
        cell.config(outFits[indexPath.row])
        return cell
    }
    
    
    

}
