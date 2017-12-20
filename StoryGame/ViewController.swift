//
//  ViewController.swift
//  StoryGame
//
//  Created by Mihai Leonte on 12/18/17.
//  Copyright © 2017 Mihai Leonte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // let story = Page(story: .touchDown)
        //story.firstChoice = (title: "Go to Saturn", page: Page(story: .cave))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startAdventure" {
            guard let pageController = segue.destination as? PageController else {
                return
            }
            
            pageController.page = Adventure.story
        }
    }

}

