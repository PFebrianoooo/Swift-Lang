// Arrays 
// arrays is list of data

var employee1salary = 45000.0
var employee2salary = 50000.0
var employee3salary = 100000.0
var employee4salary = 20000.0
var employee5salary = 25000.0

var EmployeeSalary : [Double] = [45000.0 , 50000.0 , 100000.0 , 20000.0 , 25000.0]
print ("Isi dari array EmployeeSalary adalah : \(EmployeeSalary.count)")
EmployeeSalary.append (125000.0)
print ("Isi dari array EmployeeSalary adalah : \(EmployeeSalary.count)")
EmployeeSalary.remove(at :1)
print ("Isi dari array EmployeeSalary adalah : \(EmployeeSalary.count)")


var students = [String] ()
students.append("jimmy")
students.append("kim")
students.append("kardashian")
students.append("Putra")
students.append("Fajri")
print ("Isi dari array students adalah : \(students.count)")

students.remove(at: 2)

print ("Isi dari array students adalah : \(students.count)")

print (students)
EmployeeSalary.remove (at : 2)
print (EmployeeSalary)

let result = students[2]
let result2 = EmployeeSalary[3]
print ("Hello \(result) Your salary for a month is \(result2)")