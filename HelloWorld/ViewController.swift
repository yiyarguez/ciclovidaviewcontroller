//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kary Rguez on 09/09/24.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var helloWorldLabel: UILabel!
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorldLabel.text = "Hello Keepcoders!😃"
        navigationItem.title = "Hello World!"
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) { // Se puede ejecutar multiples veces
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) { // Es llamado cada vez que la vista es añadida a la jerarquía de vistas
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    
    @IBAction func didTapXIBButton(_ sender: Any) {
        // Instanciamos el view controller que queremos presentar
        let viewController = FirstViewController()
        // De las siguientes maneras podemos mostrar la pantalla XIB
        
        //navigationController?.show(viewController, sender: nil)
        navigationController?.present(viewController, animated: true)
        //navigationController?.setViewControllers([viewController], animated: true)
        // Este último método es muy útil para el LOGIN de una aplicación 
        
        
        
        
    }
    
    
    @IBAction func didTapButton(_ sender: UIButton) {
        print("Button Tapped")
        sender.tintColor = .green
    }
    
}

