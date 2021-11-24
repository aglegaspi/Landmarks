//
//  PageViewController.swift
//  Landmarks
//
//  Created by Alex 6.1 on 11/23/21.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator { Coordinator(self) }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [context.coordinator.controllers[currentPage]], direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        var parent: PageViewController
        var controllers = [UIViewController]()
        
        init(_ pageViewController: PageViewController) {
            parent = pageViewController
            controllers = parent.pages.map { UIHostingController(rootView: $0) }
        } // init
        
        func pageViewController(_ pageViewController: UIPageViewController,
            viewControllerBefore viewController: UIViewController) -> UIViewController? {
            
                guard let index = controllers.firstIndex(of: viewController) else { return nil }
                
                if index == 0 { return controllers.last }
                
                return controllers[index - 1]
            } // before
        
        func pageViewController(_ pageViewController: UIPageViewController,
            viewControllerAfter viewController: UIViewController) -> UIViewController? {
            
                guard let index = controllers.firstIndex(of: viewController) else { return nil }
                
                if index + 1 == controllers.count { return controllers.first }
                
                return controllers[index + 1]
                
            } // after
        
        /// updates after the animation/swipe is complete
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            if completed, let visibleViewController = pageViewController.viewControllers?.first,
               let index = controllers.firstIndex(of: visibleViewController) {
                parent.currentPage = index
            }
        }
        
        /// updates during the swipe
//        func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController]) {
//            if let index = controllers.firstIndex(of: pendingViewControllers.first!) {
//                withAnimation(.linear(duration: 5.0)) {
//                    parent.currentPage = index
//                }
//            }
//        }
        
    } // Coordinator

} // PageViewController
