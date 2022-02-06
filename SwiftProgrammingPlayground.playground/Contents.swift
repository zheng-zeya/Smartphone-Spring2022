import Cocoa

var greeting =  "Hello, playground" // * 如果不能改变greeting：let greeting =  "Hello, playground"
greeting = "Zeyao"

//Basic Data Type
let intValue = 5               //可以Specify也可以不
let doubleValue : Double = 5.0
let str : String = "I am a String"
let boolValue : Bool = true

//Multiple variables at same tine + optional
var x,y,z : Int? // * ?意思：this is an optional value
var optionalInt : Int?

//Fun stuff  : control + command + space
let 🍎 = "Apple"

let name = "Zeyao"
print("Hello \(name)" )

print("zeyao有semicolon");
print("zeyao Agian")

print("Int minimum value = \(Int.min)")
print("Int maximum value = \(Int.max)")
print("UInt64 maximum value = \(UInt.max)")

let binaryVal = 0b0111
print("binaryVal : \(binaryVal)")
let octalVal = 0o237
let hexaVal = 0xE
print("hexaVal : \(hexaVal)")

//Tuple Values (key value)
let tupleValue = (404, "Not Found")
print(tupleValue.0)
print(tupleValue.1)

let(id, status) = (200, "OK")
print(id)
print(status)

let tripleVal = (234, "ABCD", true)
print("trpleVal's first \(tripleVal.0)")

//Optionals
var strName : String?
strName = "ZEYAO"
print(strName)
print(strName!)   // * !表示：就是这个 不是Optional

var strName2 : String?
strName2 = "strName2"
//one way of handling Optionals
if strName2 != nil{
    print(strName2!)
}
// Another way : if let statement
if let name = strName2{
    print(name)
}

print(" ***** sampleFunctionForGuard ******** ")
/*
 private static void sampleFunc(String str){
 }
 */
func sampleFunctionForGuard(strVal : String?){
    //print the string
    guard let name = strName2 else {
        return
    }
    print(name)
}







