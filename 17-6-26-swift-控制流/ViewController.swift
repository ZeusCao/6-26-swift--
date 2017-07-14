//
//  ViewController.swift
//  17-6-26-swift-控制流
//
//  Created by Zeus on 2017/6/26.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo()
        demo1()
        demo2(x: 10, y: nil)
        demo3()
        demo4()
    }
    
    // MARK --- 反向的for循环
    func demo6() {
        
        // reversed 反转
        for i in (0..<10).reversed() {
            print(i)
        }
        
    }
    

    // MARK --- 传统的oc中的for循环被取消
    func demo5() {
        // 不包含5
        for i in 0..<5 {
            print(i)
        }
        // 包含5
        for i in 0...5 {
            print(i)
        }
    }
    
    
    
    // MARK --- guard 守卫，守护
    // guard let 和 if let 刚好相反
    func demo4() {
        let oName :String? = "老王"
        let  oAge : Int? = 10
        
        // guard let 守护一定有值，没有值直接返回
        guard let name = oName, let age = oAge else {
            print("name 或 age 为空")
            return
        }
        // 代码执行至此，name和age一定有值
        // 通常判断是否有值之后会做具体的逻辑实现 ，代码多的情况下使用 ，如果用if let 则凭空多了一层分支；guard是降低层次的方法
        
         print(name + String(age))
    }
    
    
    
    // MARK --- if let / var 连用语法，目的就是判断值
    func demo3() {
        
        let oName :String? = "老王"
        let  oAge : Int? = 10
        // 解包有风险，要判断不为空才可以解包
        if oName != nil && oAge != nil {
            print(oName! + String(oAge!))
        }
        
        
        // 相当于 if let连用判断对象的值是否为nil，避免了解包
        // if var 连用可以在括号内对值进行修改
        if var name = oName,
           let age = oAge{
            // name 和 age 的作用域仅在当前的{}之中
            // 进入分支后一定有值
            name = "老李"
            print(name + String(age))
        }
        else
        {
            print("name 或 age 为空")
        }
        
    }
    
    
    
    // MARK  --- 简单的三目 ：??
    func demo2(x: Int?, y: Int?) {
        
        /**
            ?? 是一个简单的三目
            如果有值，使用值，如果没有值则使用？？后面的值
         */
        print((x ?? 0) + (y ?? 0) );
        
    }
    
    
    
    // MARK --- 三目 
    func demo1()  {
        let  x = 10
        
        // 三目的语法和OC一样
        x > 5 ? print("大了") : print("小了")
        
        // 只想让他执行前半句 “（）”表示空执行
        x > 5 ? print("大了") : ()
    }
    

    
    // MARK --- 简单的分支 if语句
    // 1.条件不需要（）
    // 2.语句必须要有{}
    func demo()  {
        
        let  x  = 10
        
        if x > 5 {
            print("大了")
        }
        else
        {
            print("小了")
        }
    }
    
    
    
    

}

