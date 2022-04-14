//
//  ViewController.swift
//  tekCiftSayi
//
//  Created by M.Ömer Ünver on 2.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sayiText: UITextField!
    @IBOutlet weak var sonucLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func hesaplaBtn(_ sender: Any) {
        //örnek
        //girilen sayının tek mi yoksa çift mi olduğunu kontrol eden sistem
        let number = sayiText.text ?? ""
        if number.isEmpty {
            sonucLbl.text = "Lütfen Bir Sayı giriniz"
            return
        }
        
        if let n1 = Int(number) {
            //mod alma işlemi
            if n1 % 2 == 0 {
                sonucLbl.text = "Girilen sayı çifttir"
            }else {
                sonucLbl.text = "girilen sayı tektir"
            }
            
        } else {
            sonucLbl.text = "Lütfen Bir Rakam Giriniz"
        }
        
    }
}

