//
//  EpisodesTableViewController.swift
//  Duc Blog
//
//  Created by Duc Tran on 4/3/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit
import SafariServices

class EpisodesTableViewController: UITableViewController
{
    var episodes = [Episode]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        episodes = Episode.downloadAllEpisodes()
        self.tableView.reloadData()
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = .none
        
    }
    
   

    // MARK: - Table view data source

   override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return episodes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Episode Cell", for: indexPath) as! EpisodeTableViewCell
        let episode = self.episodes[indexPath.row]
        
        cell.episode = episode
        
        return cell
    }
    
   
    
//    // MARK: - UITableViewDelegate
//
//     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedEpisode = self.episodes[indexPath.row]
//
//        // import SafariServices
//        let safariVC = SFSafariViewController(url: selectedEpisode.url! as URL)
//        safariVC.view.tintColor = UIColor(red: 248/255.0, green: 47/255.0, blue: 38/255.0, alpha: 1.0)
//        safariVC.delegate = self
//        self.presentpresent(safariVC, animated: true, completion: nil)
//    }
//
//
//    // MARK: - Target / Action
//
//    @IBAction func fullBlogDidTap(sender: AnyObject)
//    {
//        // import SafariServices
//        let safariVC = SFSafariViewController(URL: NSURL(string: "http://www.ductran.io/blog")!)
//        safariVC.view.tintColor = UIColor(red: 248/255.0, green: 47/255.0, blue: 38/255.0, alpha: 1.0)
//        safariVC.delegate = self
//        self.presentViewController(safariVC, animated: true, completion: nil)
//    }
    
}

//extension EpisodesTableViewController : SFSafariViewControllerDelegate
//{
//    func safariViewControllerDidFinish(controller: SFSafariViewController) {
//        controller.dismissViewControllerAnimated(true, completion: nil)
//    }
//}
















