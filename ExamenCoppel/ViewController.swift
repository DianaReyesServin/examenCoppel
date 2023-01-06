//
//  ViewController.swift
//  ExamenCoppel
//
//  Created by Rodrigo Arango on 05/01/23.
//

import UIKit

class ViewController: UIViewController {
    //var movies: [results] = []
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnLogin(_ sender: Any) {
    }
    @IBOutlet weak var lblError: UILabel!
    
    var conexionmanager = ConexionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //mostrarMovies()
        //lblError.text = "hola"
        
        conexionmanager.delegado = self
        conexionmanager.mostrarMovies()
        //print(listaPeliculas)
    }
}

extension ViewController : ConexionDelegado{
    func mostrarMovies(listaPeliculas: [Movies]) {
        print(listaPeliculas)
        
    }
}
    



