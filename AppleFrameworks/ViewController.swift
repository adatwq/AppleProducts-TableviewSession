//
//  ViewController.swift
//  AppleFrameworks
//
//  Created by Reem Quhal on 14/02/2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    var products : [Product] = [Product]()
    
    let cellId = "productCell"


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.register(ProductTableViewCell2.self, forCellReuseIdentifier: "cell2")
        }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createProductArray()

        tableView.reloadData()

    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

         let cell : ProductTableViewCell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductTableViewCell


         let currentLastItem = products[indexPath.row]


         cell.productName?.text = currentLastItem.productName

         cell.productImg?.image = UIImage(named: currentLastItem.productImage)

         cell.productDes?.text = currentLastItem.productDesc


     return cell
     }

    
 
     
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    

    
      func createProductArray() {
            products.append(Product(productName: "iPhone 13 Pro", productImage: "img1", productDesc: "From $999 or $41.62/mo. per month for 24 mo"))
            products.append(Product(productName: "Pro Display XDR", productImage: "img6" , productDesc: "From $4999 or $416.58/mo"))
            products.append(Product(productName: "Apple Watch Series 7", productImage:"img5", productDesc: "From $399 or $16.62/mo"))
          products.append(Product(productName: "AirPods (2generation)", productImage: "img4", productDesc: "$21.50/mo.per month for 6 mo"))
          products.append(Product(productName: "iPad Air", productImage: "img3" , productDesc: "From $599 or $49.91/mo"))
          products.append(Product(productName: "Smart Folio for iPad mini", productImage:"img2", productDesc: "From $599 or $49.91/mo"))
        }
    }



