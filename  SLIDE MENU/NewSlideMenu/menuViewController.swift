//
//  menuViewController.swift
//  NewSlideMenu
//
//  Created by Parmarth Mori on 29/01/19.
//  Copyright © 2019 Parmarth Mori. All rights reserved.
//

import UIKit

protocol SlideMenuDelegate {
    func slideMenuItemSelectedAtIndex(_ index : Int32)
}

class menuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var onCloseMenuClick: UIButton!
    
    var btnMenu:UIButton!
    var delegate:SlideMenuDelegate?
    
    @IBAction func btnCloseTapped(_ sender: UIButton)
    {
        btnMenu.tag = 0
        btnMenu.isHidden = false
        if(self.delegate != nil)
        {
            
            // Remember this is UIButton in sender Any is not works
            var index = Int32(sender.tag)
            if(sender == self.onCloseMenuClick)
            {
                index = -1
            }
            delegate?.slideMenuItemSelectedAtIndex(index)
        }
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            self.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            self.view.removeFromSuperview()
            self.removeFromParentViewController()
        })
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1") as! TableViewCell1
        
        return cell
    }
    
   

   
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
