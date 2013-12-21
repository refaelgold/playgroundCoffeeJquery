# well,lets make it intersting! i use coffeescript on this Tuts!




#basic javascript with integration to coffeejs
# Assignment:
number   = 42
opposite = true

# Conditions:
number = -42
if opposite
  console.log number




#define a var with exspression
two=2
result=two+two
console.log "2+2 is : "+result





# Arrays:
listNumber = [1..10]
console.log listNumber


#create a new array
doubleListNumber=[]




###+++Loop definition with condition in coffeescript+++###

#1.the word "for" is for running the current element-num in this case
#2.the word "in" is for running on define array of new array
#3.check if the number is devided by 2
#4.make a push for every element in the array(insert to the array)
#5.each element who crate get a method with pow of the number by double only 2
for num in listNumber
  if num%2==0
    doubleListNumber.push Math.pow num,2

console.log doubleListNumber


#testing array creation from other array
newArrayMagic=[]
for num in listNumber
  newArrayMagic.push(num)
console.log newArrayMagic



#define new object
car = {
  'wheelCount': 4,
  'color': 'red',
  'seatCount':5,
  'carMaximumSpeed':99
}


console.log "the color of this car is : " + car.color
console.log "the number of seats is : " + car.seatCount
console.log "the wheels number are : " + car.wheelCount
console.log "car maximum speed: " + car.carMaximumSpeed

#function
consoleMe = (expression) ->
  console.log expression

consoleMe('this is for running basic function')


#ar1 = [1,2,3,4]
#ar2 = [5,6,7,8]

#console.log "*****************"
#console.log "stackoverflowarea"
#for num1 in ar1
#  for num2 in ar2
#    console.log num1 + ' : ' + num2
#    if num2 == 6
#      breakLoop1 = true; break
#  break if breakLoop1

# Will print:
# 1 : 5
# 1 : 6



#function
#convert = (num1, num2, num3) ->
#  num1 + num2 * num3
#window.convert = convert
#
#
#
#interateWhileLoop = 0
#while interateWhileLoop <6
#  interateWhileLoop + " Brave Sir Robin ran away"
#  interateWhileLoop++
