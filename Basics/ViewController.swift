//
//  ViewController.swift
//  Basics
//
//  Created by MAC0008 on 03/03/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        findFibonaciSeries(n: 10)
        checkPalindromeOrNot(name: "ORATARO")
        findMaxNumberFromArray()
        findMinNumberFromArray()
        findArmStrongNumber(number: 153)
        oddEventNumber(number: 10)
        findPrimeNumber(number: 30)
    }
}

//MARK: Fibonaci series
func findFibonaciSeries(n: Int){
    //Fibonaci - //0,1,1,3,5,8,13,21,34
    var n3 = Int()
    var n2 = 1
    var n1 = -1
    
    for _ in 0..<n {
        n3 = n1 + n2
        n1 = n2
        n2 = n3
        
        print(n3)
    }
}

//MARK: Palindrome
func checkPalindromeOrNot(name: String)
{
    //Palindrome - ORATARO = ORATARO
    let nameRev = String(name.reversed())
    if name == nameRev {
        print("\(name) is palindrome")
    }
    else
    {
        print("String is not Palindrome number")
    }
}

//MARK: Max Number
func findMaxNumberFromArray()
{
    //Max Number
    let arr = [11, 0, 2, 5, 15]
    let maxNum = arr.max()
    print(maxNum!)
}

//MARK: Min Number
func findMinNumberFromArray()
{
    //Min Number
    let arr = [11, 0, 2, 5, 15]
    let minNum = arr.min()
    print(minNum!)
}

//MARK: Armstrong Number
func findArmStrongNumber(number: Int)
{
    //Armstrong
    
    //153 = 1 * 1 * 1 + 5 * 5 * 5 + 3 * 3 * 3
    var sum = 0
    var tempNum = number
    var reminder = 0
    
    while tempNum != 0{
        reminder = tempNum % 10
        sum = sum + reminder * reminder * reminder
        tempNum /= 10
    }
    if sum > number {
       
    }
    else if sum == number {
        print("Yes \(number) is Armstrong Number")
    }
    else {
        print ("No It's not armstrong number")
    }
    
}

//MARK: OddEvenNumber
func oddEventNumber(number: Int)
{
    for i in 0..<number
    {
        if (i % 2 == 0){
            print("Even = \(i)")
        }else{
            print("Odd = \(i)")
        }
    }
}

//MARK: PrimeNumber
func findPrimeNumber(number: Int)
{
    let upperLimit = Int(Double(number).squareRoot())
    let isPrime = !(2...upperLimit).contains(where: {
        number % $0 == 0
    })
    print(isPrime)
}
