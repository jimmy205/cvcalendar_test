//
//  ViewController.swift
//  test_calendar
//
//  Created by Jimmy on 2017/7/12.
//  Copyright © 2017年 Jimmy. All rights reserved.
//

import UIKit
import CVCalendar


class ViewController: UIViewController,CVCalendarViewDelegate,CVCalendarMenuViewDelegate {
    
    @IBOutlet weak var menuView: CVCalendarMenuView!
    
    
    @IBOutlet weak var calendarView: CVCalendarView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        menuView.commitMenuViewUpdate()
        calendarView.commitCalendarViewUpdate()
        
    }
    
    func presentationMode() -> CalendarMode{
        return CalendarMode.monthView
    }
    func firstWeekday() -> Weekday{
        return Weekday.sunday
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.menuView.menuViewDelegate = self
        self.calendarView.calendarDelegate = self
        self.calendarView.calendarAppearanceDelegate = self
        self.calendarView.animatorDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

