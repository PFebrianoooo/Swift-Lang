import Foundation

let day = "Monday"
let hour = "6"
let minutes = "15"
var periodOfTheDay = hour + " : " + minutes + " " + "PM"

var currentTime = "it's " + periodOfTheDay + " on"
print(currentTime + " \(day)")

let timezone = "PST"
periodOfTheDay += " \(timezone)"

print(periodOfTheDay)
var updateTime = periodOfTheDay + " on \(day)"
print(updateTime)

let shortday = day.prefix(3)
print("Today is \(shortday)")

var updateTimeFinal =  "Its " + periodOfTheDay + " on \(day.prefix(3))"
print(updateTimeFinal)
