//
//  MovieListTableViewController.swift
//  MoviesList
//
//  Created by elina.zambere on 11/02/2021.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    /*var movieList = [
     "Harry Potter and Deathly Hallows part 1",
     "Harry Potter and Deathly Hallows part 2",
     "Harry Potter and Goblet Of Fire",
     "Joker",
     "Pirates Of The Caribbean Dead Men Tell No Tales",
     "Pirates Of The Caribbean At Worlds End",
     "Pirates Of The Caribbean Dead Mans Chest",
     "Pirates Of The Caribbean The curse of Black Pearl",
     "Star Wars Episode 4: A New Nope",
     "Star Wars Episode 5: Empire Strikes Back",
     "Star Wars Episode 6: Return Of The Jedi",
     "Harry Potter and Deathly Hallows part 1",
     "Harry Potter and Deathly Hallows part 2",
     "Harry Potter and Goblet Of Fire",
     "Joker",
     "Pirates Of The Caribbean Dead Men Tell No Tales",
     "Pirates Of The Caribbean At Worlds End",
     "Pirates Of The Caribbean Dead Mans Chest",
     "Pirates Of The Caribbean The curse of Black Pearl",
     "Star Wars Episode 4: A New Nope",
     "Star Wars Episode 5: Empire Strikes Back",
     "Star Wars Episode 6: Return Of The Jedi",
     ]
     
     */
    
    var movies = Movie.createMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = true
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moviesListCell", for: indexPath)
        
        // Configure the cell...
        
        /*   cell.textLabel?.text = movieList[indexPath.row]
         cell.textLabel?.numberOfLines = 0
         cell.detailTextLabel?.text = movieList[indexPath.row]
         
         cell.imageView?.image = UIImage(named: movieList[indexPath.row])
         
         */
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.movieName
        cell.detailTextLabel?.text = movie.directorName
        cell.imageView?.image = UIImage(named: movie.moviePoster)
        
        cell.textLabel?.numberOfLines = 5
        cell.imageView?.layer.cornerRadius = 10
        cell.imageView?.clipsToBounds = true
        
        //cell.imageView?.layer.borderColor = UIColor.white.cgColor
        //cell.imageView?.layer.borderWidth = 5
        return cell
    }
    
    //MARK: - Table view Delgate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentMovie = movies.remove(at: fromIndexPath.row)
        movies.insert(currentMovie, at: to.row)
        
    }
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            print("indexPath.row: ", indexPath.row)
            
            // Get the new view controller using segue.destination.
            let detailVC = segue.destination as! DetailViewController
            // Pass the selected object to the new view controller.
            detailVC.movie = movies[indexPath.row]
        }
    }
}

