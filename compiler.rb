class Op
  def initialize(x,y)
    @x = x
    @y = y
  end

  def addition
    return @x+@y
  end

  def subraction
    return @x-@y
  end

  def multiplication
    return @x*@y
  end

  def division
    return @x/@y
  end

  def xor
    return @x || @y
  end

  def modulo
    return @x % @y
  end
end

class Stack
  def initialize
    @arr = []
  end

  def push(x)
    @arr << x
  end

  def pop
    @arr.pop
  end

  def top
    return @arr[-1]
  end

  def get
    return @arr
  end

  def xprint
    print "#{@arr.join}"
  end

  def xxprint
    print @arr.pack('U*')
  end
end

class XASM
  def initialize(code)
    @code = code
    @sA = Stack.new
    @sB = Stack.new
    @sC = Stack.new
    @sD = Stack.new
    @sE = Stack.new
    @sF = Stack.new
    @sG = Stack.new
  end

  def run
    @code.split("\n").each do |i|
      x = i.split(" ")
      if x[0] == "00000000"
        @sA.pop
      elsif x[0] == "00000001"
        @sA.push(x[1].to_i)
      elsif x[0] == "00000010"
        @sA.xprint
      elsif x[0] == "00000011"
        @sA.xxprint
      end
    end
  end
end

#puts(Op.new(false,false).xor)
#puts(Op.new(false,true).xor)

#puts("Performing Stack tests...")
#the_stack = Stack.new
#thop = Op.new(10,1)
#the_stack.push(thop.addition)
#the_stack.push(thop.subraction)
#the_stack.push(thop.multiplication)
#the_stack.push(thop.modulo)

#puts(the_stack.top)
#the_stack.pop
#puts(the_stack.top)
#the_stack.pop
#puts(the_stack.top)
#the_stack.pop
#puts(the_stack.top)
#the_stack.pop
#puts(the_stack.top)

#puts("Performing Built_Ins tests")
#the_stack.push(116)
#the_stack.push(252)
#the_stack.push(114)
#the_stack.push(32)
#the_stack.push(9786)

#the_stack.xprint
#puts
#the_stack.xxprint

x = XASM.new("
00000001 116
00000001 252
00000001 114
00000001 32
00000001 9786
00000001 9786
00000001 13
00000011")
x.run()
