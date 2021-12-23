//
//  SliderSlides.swift
//  StackChat
//
//  Created by Алексей Глазунов on 23.12.2021.
//

import Foundation


class SliderSlides{
    func getSlides()->[Slides] {
        var slides: [Slides] = []
        let slide1 = Slides(id: 1,text: "text1", img: #imageLiteral(resourceName: "slide1-2"))
        let slide2 = Slides(id: 2,text: "text1", img: #imageLiteral(resourceName: "slide1-1"))
        let slide3 = Slides(id: 3,text: "text1", img: #imageLiteral(resourceName: "slide1"))
        
        slides.append(slide1)
        slides.append(slide2)
        slides.append(slide3)
        
        return slides
        
    }
}
