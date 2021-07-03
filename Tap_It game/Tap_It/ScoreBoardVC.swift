//
//  ScoreBoardVC.swift
//  Tap_It
//
//  Created by MacBook Pro on 02/07/21.
//

import UIKit

class ScoreBoardVC: UIViewController {
    let token = UserDefaults.standard.string(forKey: "UserToken")
    let name = UserDefaults.standard.string(forKey: "Name")
    let score = UserDefaults.standard.string(forKey: "Score")
    
    private let MyImageView: UIImageView = {
        
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFill
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "win")
        
        return myImageView
        
    }()
    
    private let LeaderBoard : UILabel = {
       let label = UILabel()
        label.text = "LeaderBoard"
        label.textColor = .yellow
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
  
    
    
    private let Name : UILabel = {
       let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    private let Score : UILabel = {
       let label = UILabel()
        label.text = "Score"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    private let Nmtxt : UILabel = {
       let label = UILabel()
        label.text = ""
        label.textColor = .green
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    private let Scoreno : UILabel = {
       let label = UILabel()
        label.text = ""
        label.textColor = .green
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .brown
        Nmtxt.text = name
        Scoreno.text = score
        view.addSubview(MyImageView)
        view.addSubview(LeaderBoard)
        view.addSubview(Name)
        view.addSubview(Score)
        view.addSubview(Nmtxt)
        view.addSubview(Scoreno)

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        MyImageView.frame = CGRect(x: 0, y: view.safeAreaInsets.top + 10, width: view.width, height: 150)
        LeaderBoard.frame = CGRect(x: 120, y: MyImageView.bottom + 5, width: view.width, height: 50)
        Name.frame = CGRect(x: 20, y: LeaderBoard.bottom + 20, width: 150, height: 50)
        Score.frame = CGRect(x: 260, y: LeaderBoard.bottom + 20, width: 90, height: 50)
        Nmtxt.frame = CGRect(x: 20, y: Name.bottom + 20, width: 150, height: 50)
        Scoreno.frame = CGRect(x: 260, y: Score.bottom + 20, width: 90, height: 50)
        
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
