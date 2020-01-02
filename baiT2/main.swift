//
//  main.swift
//  baiT2
//
//  Created by Ngoduc on 12/28/19.
//  Copyright © 2019 Ngoduc. All rights reserved.
//

import Foundation

func kiemtradieukien(sonhap: Double) -> Bool{
    if sonhap >= 1 && sonhap <= 10 {
        return true
    }else{
        return false
    }
}

func xeploai(sonhap: Double) -> String {
    if sonhap > 8 {
        return "Giỏi"
    }
    if sonhap < 8 && sonhap > 5 {
           return "Khá"
       }
 return "Trung Bình"
    
}

func tinnhDaythua(n: Int) -> Int {
   var ketqua: Int = 1
    for i in 1..<n {
        ketqua = ketqua*i
    }
    return ketqua
}

func timSoMin(m: Int) -> Int{
    var n: Int = 0
    var i: Int = 1

    n =  tinnhDaythua(n: i)
    
   
  
   while (n < m) {
       i += 1
       n = tinnhDaythua(n: i)
    }
    return i
}

func kiemtraChanLe(n: Int) -> Bool{
    if n % 2 == 0 {
        return true
    } else {
      return false
    }
}

func inX(n: Int){
    for i in 0..<n {
        if i == (n - 1)/2 {
            for l in 0..<n-1{
                if l == (n - 1)/2 {
                    print("*", terminator: "")
                }else{
                  print(" ", terminator: "")
                }
            }
            print("")
        } else {
            for k in 0..<n-1 {
                if i < (n - 1)/2 {
                    if (k == i || k == n - i - 2) {
                               print("*", terminator: "")
                           }
                           print(" ", terminator: "")
                       }
                       if i >  (n - 1)/2 {
                         if (k == n - i - 1 || k == i - 1) {
                           print("*", terminator: "")
                                        }
                           print(" ", terminator: "")
                       }
                   }
                   print("")
        }
       
    }
}
func inTamgiacCan(n: Int){
   var soBandau = 1;
    for i in 0..<(n + 1){
       
        for k in 0..<(n - i){
         print(" ", terminator: "")
        }
       for l in 0..<soBandau{
               print("*", terminator: "")
              }
        soBandau += 2;
        print("")
    }
}

func max3so(a: Int, b :Int, c: Int) -> Int{
    var m = a
    if m < b {
        m = b
    }
    if m < c {
        return c
    }
    return m
}
func min3so(a: Int, b: Int, c: Int) -> Int{
    var min = a
    if min > b {
        min = b
    }
    if min > c {
        return c
       }

    return min
}

func kiemtraTamgiac(a: Int, b: Int, c: Int){
    if (a < b + c && b < a + c && c < b + a) {
        print("a,b,c là ba cạnh của một tam giac")
    }else{
     print("a,b,c không là ba cạnh của một tam giác")
    }
}

func kiemtraNamNhuan(year: Int){
    if (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) {
        print("Năm \(year) là năm nhuận")
    }else{
     print("Năm \(year) không năm nhuận")
    }
}

func mang6 (){
    var mang: [String] = ["An", "Long" , "Trang", "Nam", "Lam"]
    for i in 2..<mang.count {
      mang[i+1] = mang[i]
    }
    mang[2] = "Quang"
    mang.remove(at: mang.count - 1)
    let t: String = "Nhung"
    for item in mang {
        if item == t {
            print("Biến t có trong mảng")
        }
        print("Biến t không có trong mảng")
    }
}
func mang5() {
 var mang: [Int] = [1, 3 , 5, 6, 8]
    var tong: Int = 0;
    var max = 0
    var min = 0
    for item in mang {
        tong += item
    }
    print("Trung bình cộng của dãy số cho trước: \(tong/mang.count)")
   
   
    for (index, value) in  mang.enumerated() {
        
        if  max < value {
            max = value
            
        }
        if  min > value {
            min = value
        }
        
    }
    
    print("Phần tử lớn nhất của mảng: \(max)")
    print("Phần tử bé nhất của mảng: \(min)")
}
func mang4(c: String){
    for character in c.reversed() {
        print(character, terminator: "")
    }
}
func mang3(){
 var mang: [Int] = [1, 3 , 5, 6, 8]
    var i: Int = 0
    while (i < mang.count) {
        if !kiemtraChanLe(n: mang[i]) {
             print("Vị trí phần tử số lẻ đầu tiên của chuỗi là: \(i)")
        }
        i += 1
    }
    var vitri: Int = mang.count - 1
    
    while (vitri != 0) {
           if kiemtraChanLe(n: mang[vitri]) {
                print("Vị trí phần tử số chẵn cuối cùng của chuỗi là: \(vitri)")
           }
           vitri -= 1
       }
}
func mang(){
    var numbers: [Int] = [0,1,2]
    
    //đếm số phần tử trong mảng
    print(numbers.count)
    //thêm mới một phần tử vào mảng
    numbers.append(9)
    print(numbers)
    
    //thêm mới nhiều phần tử vào mảng
    numbers.append(contentsOf: [2,3])
    print(numbers)
    
    //xoá 1 phần tử trong mảng
    numbers.remove(at: 0)
    print(numbers)
    
    //xoá tất cả phần tử của mảng
//    numbers.removeAll()
//    print(numbers)
    //Thay thế một phần tử trong mảng
    numbers[0] = 10
    print(numbers)
    //Thay thế một đoạn phần tử trong mảng
    numbers.replaceSubrange(2...4, with: [5,6,7])
    print(numbers)
    
    //duyệt mảng
    for item in numbers {
        print(item)
    }
    print("------------")
    //duyệt mảng theo chiều ngược  lại(đảo mảng)
    for item in numbers.reversed() {
        print(item)
    }
    for i in 0..<numbers.count{
      // đọc phần tử the
      print(numbers[i])
    }
    for (index, value) in numbers.enumerated(){
        print("Index là: \(index) -Value là: \(value)")
    }
}

func timMax2() {
    var number: [Int] = [1, 2, 3, -4]
    var max = 0
    var maxIndex = 0
    var min = 0
    var max2 = 0
    for (index, value) in  number.enumerated() {
        if value < 0 {
            number[index] = 0
        }
        if  max < value {
            max = value
            maxIndex = index
        }
        if  min > value {
            min = value
        }
        
    }
    
    print(number)
    print(max)
    print(min)
    number.remove(at: maxIndex)
    for item in number {
        if max2 < item {
            max2 = item
        }
    }
    print("Số lớn thứ hai trong mảng là: \(max2)")
}

//Bài tập trên lớp:
//Bài 1
print("Hãy nhập vào số a: ")
var a: Int = Int(readLine()!)!
print("Hãy nhập vào số b: ")
var b: Int = Int(readLine()!)!
print("Hãy nhập vào số c: ")
var c: Int = Int(readLine()!)!
print("Số lớn nhất là \(max3so(a: a, b: b, c: c))")
print("Số nhỏ nhất là \(min3so(a: a, b: b, c: c))")
//Bài 2
print("Hãy nhập vào số a: ")
var a2: Int = Int(readLine()!)!
print("Hãy nhập vào số b: ")
var b2: Int = Int(readLine()!)!
print("Hãy nhập vào số c: ")
var c2: Int = Int(readLine()!)!
kiemtraTamgiac(a: a2, b: b2, c: c2)
//Bài 3
print("Hãy nhập vào năm: ")
var n: Int = Int(readLine()!)!
kiemtraNamNhuan(year: n)
//Bài 4
print("Hãy nhập vào giờ: ")
var h: Int = Int(readLine()!)!
print("Hãy nhập vào phút: ")
var m: Int = Int(readLine()!)!
print("Hãy nhập vào giây: ")
var s: Int = Int(readLine()!)!
print("Hãy nhập vào T giây: ")
var t: Int = Int(readLine()!)!
if t < 60 {
    if s + t >= 60  {
        s = s + t - 60
        m += 1
    }else{
     s += t
    }
}
if t >= 60 && t < 3600 {
    let soPhut = t/60
    m += soPhut
   let soGiay = t % 60
     s += soGiay
     if s >= 60 {
         s = s - 60
         m += 1
     }
}
if t >= 3600 {
   let soGio = t/3600
   h += soGio
   let soPhut = t % 3600/60
   m += soPhut
   if m >= 60 {
       m = m - 60
       h += 1
   }
    let soGiay = (t % 3600) % 60
    s += soGiay
    if s >= 60 {
        s = s - 60
        m += 1
    }
}

print("Giờ hiện tại là : \(h):\(m):\(s)")

//Bài 5
timMax2();

//Bài tập về nhà:

//Bài 1:
print("Nhập vào điểm trung bình của học sinh: ")
var d: Double = Double(readLine()!)!
while !kiemtradieukien(sonhap: d) {
    print("Làm ơn nhập lại điểm trung bình của học sinh: ")
    var d: Double = Double(readLine()!)!
}
    xeploai(sonhap: d)
//Bài 2:
timSoMin(m: <#T##Int#>)
//Bài 3:
mang3()
//Bài 4:
mang4(c: "hello")
//Bài 5:
mang5()
//Bài 6:
mang6()
//Bài 7:
inTamgiacCan(n: 4)
//Bài 8:
inX(n: 5)

