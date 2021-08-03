//
//  ViewController.swift
//  ThreadGroups
//
//  Created by Alexey Pavlov on 30.07.2021.
//

import UIKit

public typealias completionClosure = (_ image: UIImage?) -> ()

public class ImageLoader {
    public init() {}
     
    public func asyncLoad(imageName: String, completion: @escaping completionClosure) {
        let pause = Double(arc4random_uniform(5))
        DispatchQueue.main.asyncAfter(deadline: .now() + pause) {
            let image = UIImage(named: imageName)
            completion(image)
        }
    }
     
    public func syncLoad(imageName: String) -> UIImage? {
        sleep(5)
        return UIImage(named: imageName)
    }
}

