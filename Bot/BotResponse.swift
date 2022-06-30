//
//  File.swift
//  
//
//  Created by WX on 24/6/22.
//

import Foundation


func getBotResponse(message: String) -> String {
    let msg = message.lowercased()
    
    
    // greetings & ending
    if msg.contains("hello") {
        return "Hey there!"
    } else if msg.contains("hi") {
        return "Hey there!"
    } else if msg.contains("bye") {
        return "cya!"
    }
    
    if msg.contains("how are you") {
        return "I'm fine, how about you?"
    } else if msg.contains("hru"){
        return "I'm fine, how about you?"
    } else if msg.contains("good") {
        return "That's nice!"
    } else if msg.contains("great") {
        return "That's cool!"
    } else {
        return "..."
    }
}
