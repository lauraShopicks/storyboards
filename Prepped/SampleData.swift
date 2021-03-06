/*
* Copyright (c) 2015 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import Foundation

//MARK: - Checklist Sample Data

class Checklist {
  let title: String
  var items = [ChecklistItem]()
  
  init(title: String, items: [ChecklistItem]) {
    self.title = title
    self.items = items
  }
}

class ChecklistItem {
  let name: String
  var checked: Bool
  let notes: String
  
  init(_ name: String, checked: Bool = false, notes: String = " ") {
    self.name = name
    self.checked = checked
    self.notes = notes
  }
}

var checklists = [
  Checklist(title: "Food", items: [
    ChecklistItem("Baked Beans", checked: true, notes: "Must be Heinz"),
    ChecklistItem("Noodles", checked: false, notes: "Check gas and water available for cooking"),
    ChecklistItem("Custard", checked: true, notes: "Long life"),
    ChecklistItem("Dried Apricots", checked: true, notes: "For Aunt Beatrice")
    ]),
  
  Checklist(title: "Medical", items: [
    ChecklistItem("Aspirin"),
    ChecklistItem("Bandages"),
    ChecklistItem("Whisky")
    ]),
  
  Checklist(title: "Equipment", items: [ ChecklistItem("Sharpened thing for getting stones out of horse's hooves") ]),
  
  Checklist(title: "To Do", items: [ ChecklistItem("Download Max Soderstrom’s Survival Guide App") ])
]

//MARK: - Diary Sample Data

struct DiaryEntry {
  let date: Date
  let text: String
  
  static var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter
  }
  
  init(date: String, text: String) {
    self.date = DiaryEntry.dateFormatter.date(from: date)!
    self.text = text
  }
  
  init(date: Date, text: String) {
    self.date = date
    self.text = text
  }
  
  var year: String {
    let components = (Calendar.current as NSCalendar).components(.year, from: date)
    return "\(components.year)"
  }
  
  var month: String {
    let components = (Calendar.current as NSCalendar).components(.month, from: date)
    return DiaryEntry.dateFormatter.shortMonthSymbols[components.month!].uppercased()
  }
  
  var day: String {
    let components = (Calendar.current as NSCalendar).components(.day, from: date)
    return "\(components.day)"
  }
}

var diaryEntries = [
  DiaryEntry(date:"2016-07-02", text: "Have heard rumors. Preparing."),
  DiaryEntry(date:"2016-07-04", text: "List of safe contacts arrived."),
  DiaryEntry(date:"2016-07-05", text: "Food shortages and riots"),
  DiaryEntry(date:"2016-07-08", text: "I may be underprepared. They are coming...")
]

