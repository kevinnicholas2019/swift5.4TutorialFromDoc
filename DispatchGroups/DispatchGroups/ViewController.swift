//
//  ViewController.swift
//  DispatchGroups
//
//  Created by Kevin Tan on 31/07/21.
//

import UIKit

//class ViewController: UIViewController {
//
//    let arr: [TimeInterval] = [
//        1,
//        3,
//        5,
//        7,
//        2,
//        7
//    ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        getData()
//    }
//
//    func getData() {
//        let group = DispatchGroup()
//        for number in arr {
//            group.enter()
//            print("Entering group with number: \(number)")
//            DispatchQueue.global().asyncAfter(deadline: .now() + number, execute: {
//                group.leave()
//                print("leaving group for \(number)")
//            })
//        }
//
//        group.notify(queue: .main, execute: {
//            print("Done with all operations")
//            self.view.backgroundColor = .blue
//        })
//    }
//
//}

class ViewController: UIViewController {
    
    var sharedResource = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SEMAPHORE WITH QUEUE
//        let semaphore = DispatchSemaphore( value: 0)
//        let dispatchQueue = DispatchQueue.global(qos: .background)
        
//        dispatchQueue.async {
////            self.fetchImage { (_, _) in
////                print("Finished fetching images \(1)")
////                self.sharedResource.append("1")
////            }
////            self.fetchImage { (_, _) in
////                print("Finished fetching images \(2)")
////                self.sharedResource.append("1")
////            }
////            self.fetchImage { (_, _) in
////                print("Finished fetching images \(3)")
////                self.sharedResource.append("1")
////            }
//            sleep(5)
//            print(1)
//            print(2)
//            print(3)
//        }
//
//        let dispatchGroup = DispatchGroup()
//
//        for i in 1...3 {
//            dispatchGroup.enter()
//            print(i)
//            dispatchGroup.leave()
//        }
        
//        DispatchQueue.main.async {
//            print("1")
//            sleep(1)
//            print("2")
//            sleep(2)
//            print("3")
//            print("4")
//        }
        
//        dispatchQueue.async {
            
            //WITHOUT SEMAPHORE
//            self.fetchImage { (_, _) in
//                print("Finished fetching images \(1)")
//                self.sharedResource.append("1")
//            }
//
//            self.fetchImage { (_, _) in
//                print("Finished fetching images \(2)")
//                self.sharedResource.append("2")
//            }
//
//            self.fetchImage { (_, _) in
//                print("Finished fetching images \(3)")
//                self.sharedResource.append("3")
//            }
            
            //SEMAPHORE
//            self.fetchImage { (_, _) in
//                print("Finished fetching images \(1)")
//                self.sharedResource.append("1")
//                semaphore.signal()
//            }
//            semaphore.wait()
//
//            self.fetchImage { (_, _) in
//                print("Finished fetching images \(2)")
//                self.sharedResource.append("2")
//                semaphore.signal()
//            }
//            semaphore.wait()
//
//            self.fetchImage { (_, _) in
//                print("Finished fetching images \(3)")
//                self.sharedResource.append("3")
//                semaphore.signal()
//            }
//            semaphore.wait()
//        }
        
        //DISPATCHGROUP
//        let dispatchGroup = DispatchGroup()
//
//        dispatchGroup.enter()
//        fetchImage { (_, _) in
//            print("Finished fetching images \(1)")
//            self.sharedResource.append("1")
//            dispatchGroup.leave()
//        }
//
//        dispatchGroup.enter()
//        fetchImage { (_, _) in
//            print("Finished fetching images \(2)")
//            self.sharedResource.removeAll()
//            dispatchGroup.leave()
//        }
//
//        dispatchGroup.enter()
//        fetchImage { (_, _) in
//            print("Finished fetching images \(3)")
//            self.sharedResource += ["3", "4", "5", "6"]
//            dispatchGroup.leave()
//        }
//
//        dispatchGroup.notify(queue: .main) {
//            print("Finished fetching images.")
//        }
        
        
        //KERJA PARALLEL
        let group = DispatchGroup()
        let queue = DispatchQueue.global()
        
        group.enter()
        queue.async(group: group) {
//            sleep(3)
            print("1")
            group.leave()
        }
        
        group.enter()
        queue.async(group: group) {
//            sleep(1)
            print("2")
            group.leave()
        }
        
        group.enter()
        queue.async(group: group) {
            print("3")
            group.leave()
        }
        
//        group.wait()
        group.notify(queue: queue, execute: {
            print("SUDAH TERPRINT")
        })
//        print("TUNGGU SEBENTAR...")
        
        
//        print("Waiting for images to finish fetching...")
    }
    
    func fetchImage(completion: @escaping (UIImage?, Error?) -> ()) {
        guard let url = URL(string: "https://letsbuildthatapp-videos.s3-us-west-2.amazonaws.com/5a90871e-408a-46da-a43c-210348a67082") else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            completion(UIImage(data: data ?? Data()), nil)
        }.resume()
    }

}
