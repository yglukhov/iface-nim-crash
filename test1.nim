import iface

iface Animal:
  proc test1()

type
  Dog = ref object
    testCalled: bool

proc test1(d: Dog) =
  d.testCalled = true

proc doSmth(a: Animal): string =
  a.test1()

block:
  let d = Dog.new()
  doAssert doSmth(d) == "bark"
