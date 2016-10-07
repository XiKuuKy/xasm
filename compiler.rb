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
    @arr.push x
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
        if x[1] == nil
          @sA.pop
        elsif x[1] == "001"
          @sA.pop
        elsif x[1] == "010"
          @sB.pop
        elsif x[1] == "011"
          @sC.pop
        elsif x[1] == "100"
          @sD.pop
        elsif x[1] == "101"
          @sE.pop
        elsif x[1] == "110"
          @sF.pop
        elsif x[1] == "111"
          @sG.pop
        end
      elsif x[0] == "00000001"
        if x[2] == nil
          @sA.push(x[1].to_i)
        elsif x[2] == "001"
          @sA.push(x[1].to_i)
        elsif x[2] == "010"
          @sB.push(x[1].to_i)
        elsif x[2] == "011"
          @sC.push(x[1].to_i)
        elsif x[2] == "100"
          @sD.push(x[1].to_i)
        elsif x[2] == "101"
          @sE.push(x[1].to_i)
        elsif x[2] == "110"
          @sF.push(x[1].to_i)
        elsif x[2] == "111"
          @sG.push(x[1].to_i)
        end
      elsif x[0] == "00000010"
        if x[1] == nil
          @sA.xprint
        elsif x[1] == "001"
          @sA.xprint
        elsif x[1] == "010"
          @sB.xprint
        elsif x[1] == "011"
          @sC.xprint
        elsif x[1] == "100"
          @sD.xprint
        elsif x[1] == "101"
          @sE.xprint
        elsif x[1] == "110"
          @sF.xprint
        elsif x[1] == "111"
          @sG.xprint
        end
      elsif x[0] == "00000011"
        if x[1] == nil
          @sA.xxprint
        elsif x[1] == "001"
          @sA.xxprint
        elsif x[1] == "010"
          @sB.xxprint
        elsif x[1] == "011"
          @sC.xxprint
        elsif x[1] == "100"
          @sD.xxprint
        elsif x[1] == "101"
          @sE.xxprint
        elsif x[1] == "110"
          @sF.xxprint
        elsif x[1] == "111"
          @sG.xxprint
        end
      elsif x[0] == "00000100"
        if x[2] == "001"
          one = @sA.top
        elsif x[2] == "010"
          one = @sB.top
        elsif x[2] == "011"
          one = @sC.top
        elsif x[2] == "100"
          one = @sD.top
        elsif x[2] == "101"
          one = @sE.top
        elsif x[2] == "110"
          one = @sF.top
        elsif x[2] == "111"
          one = @sG.top
        end
        if x[1] == "001"
          two = @sA.top
        elsif x[1] == "010"
          two = @sB.top
        elsif x[1] == "011"
          two = @sC.top
        elsif x[1] == "100"
          two = @sD.top
        elsif x[1] == "101"
          two = @sE.top
        elsif x[1] == "110"
          two = @sF.top
        elsif x[1] == "111"
          two = @sG.top
        end
        output = Op.new(one,two).addition()
        puts(output)
        if x[3] == "001"
          @sA.push(output)
        elsif x[3] == "010"
          @sB.push(output)
        elsif x[3] == "011"
          @sC.push(output)
        elsif x[3] == "100"
          @sD.push(output)
        elsif x[3] == "101"
          @sE.push(output)
        elsif x[3] == "110"
          @sF.push(output)
        elsif x[3] == "111"
          @sG.push(output)
        end
      elsif x[0] == "00000101"
        if x[2] == "001"
          one = @sA.top
        elsif x[2] == "010"
          one = @sB.top
        elsif x[2] == "011"
          one = @sC.top
        elsif x[2] == "100"
          one = @sD.top
        elsif x[2] == "101"
          one = @sE.top
        elsif x[2] == "110"
          one = @sF.top
        elsif x[2] == "111"
          one = @sG.top
        end
        if x[1] == "001"
          two = @sA.top
        elsif x[1] == "010"
          two = @sB.top
        elsif x[1] == "011"
          two = @sC.top
        elsif x[1] == "100"
          two = @sD.top
        elsif x[1] == "101"
          two = @sE.top
        elsif x[1] == "110"
          two = @sF.top
        elsif x[1] == "111"
          two = @sG.top
        end
        output = Op.new(one,two).subraction()
        puts(output)
        if x[3] == "001"
          @sA.push(output)
        elsif x[3] == "010"
          @sB.push(output)
        elsif x[3] == "011"
          @sC.push(output)
        elsif x[3] == "100"
          @sD.push(output)
        elsif x[3] == "101"
          @sE.push(output)
        elsif x[3] == "110"
          @sF.push(output)
        elsif x[3] == "111"
          @sG.push(output)
        end
      elsif x[0] == "00000110"
        if x[2] == "001"
          one = @sA.top
        elsif x[2] == "010"
          one = @sB.top
        elsif x[2] == "011"
          one = @sC.top
        elsif x[2] == "100"
          one = @sD.top
        elsif x[2] == "101"
          one = @sE.top
        elsif x[2] == "110"
          one = @sF.top
        elsif x[2] == "111"
          one = @sG.top
        end
        if x[1] == "001"
          two = @sA.top
        elsif x[1] == "010"
          two = @sB.top
        elsif x[1] == "011"
          two = @sC.top
        elsif x[1] == "100"
          two = @sD.top
        elsif x[1] == "101"
          two = @sE.top
        elsif x[1] == "110"
          two = @sF.top
        elsif x[1] == "111"
          two = @sG.top
        end
        output = Op.new(one,two).multiplication()
        puts(output)
        if x[3] == "001"
          @sA.push(output)
        elsif x[3] == "010"
          @sB.push(output)
        elsif x[3] == "011"
          @sC.push(output)
        elsif x[3] == "100"
          @sD.push(output)
        elsif x[3] == "101"
          @sE.push(output)
        elsif x[3] == "110"
          @sF.push(output)
        elsif x[3] == "111"
          @sG.push(output)
        end
      elsif x[0] == "00000111"
        if x[2] == "001"
          one = @sA.top
        elsif x[2] == "010"
          one = @sB.top
        elsif x[2] == "011"
          one = @sC.top
        elsif x[2] == "100"
          one = @sD.top
        elsif x[2] == "101"
          one = @sE.top
        elsif x[2] == "110"
          one = @sF.top
        elsif x[2] == "111"
          one = @sG.top
        end
        if x[1] == "001"
          two = @sA.top
        elsif x[1] == "010"
          two = @sB.top
        elsif x[1] == "011"
          two = @sC.top
        elsif x[1] == "100"
          two = @sD.top
        elsif x[1] == "101"
          two = @sE.top
        elsif x[1] == "110"
          two = @sF.top
        elsif x[1] == "111"
          two = @sG.top
        end
        output = Op.new(one,two).division()
        puts(output)
        if x[3] == "001"
          @sA.push(output)
        elsif x[3] == "010"
          @sB.push(output)
        elsif x[3] == "011"
          @sC.push(output)
        elsif x[3] == "100"
          @sD.push(output)
        elsif x[3] == "101"
          @sE.push(output)
        elsif x[3] == "110"
          @sF.push(output)
        elsif x[3] == "111"
          @sG.push(output)
        end
        elsif x[0] == "00001000"
        if x[2] == "001"
          one = @sA.top
        elsif x[2] == "010"
          one = @sB.top
        elsif x[2] == "011"
          one = @sC.top
        elsif x[2] == "100"
          one = @sD.top
        elsif x[2] == "101"
          one = @sE.top
        elsif x[2] == "110"
          one = @sF.top
        elsif x[2] == "111"
          one = @sG.top
        end
        if x[1] == "001"
          two = @sA.top
        elsif x[1] == "010"
          two = @sB.top
        elsif x[1] == "011"
          two = @sC.top
        elsif x[1] == "100"
          two = @sD.top
        elsif x[1] == "101"
          two = @sE.top
        elsif x[1] == "110"
          two = @sF.top
        elsif x[1] == "111"
          two = @sG.top
        end
        output = Op.new(one,two).xor()
        puts(output)
        if x[3] == "001"
          @sA.push(output)
        elsif x[3] == "010"
          @sB.push(output)
        elsif x[3] == "011"
          @sC.push(output)
        elsif x[3] == "100"
          @sD.push(output)
        elsif x[3] == "101"
          @sE.push(output)
        elsif x[3] == "110"
          @sF.push(output)
        elsif x[3] == "111"
          @sG.push(output)
        end
        elsif x[0] == "00001000"
        if x[2] == "001"
          one = @sA.top
        elsif x[2] == "010"
          one = @sB.top
        elsif x[2] == "011"
          one = @sC.top
        elsif x[2] == "100"
          one = @sD.top
        elsif x[2] == "101"
          one = @sE.top
        elsif x[2] == "110"
          one = @sF.top
        elsif x[2] == "111"
          one = @sG.top
        end
        if x[1] == "001"
          two = @sA.top
        elsif x[1] == "010"
          two = @sB.top
        elsif x[1] == "011"
          two = @sC.top
        elsif x[1] == "100"
          two = @sD.top
        elsif x[1] == "101"
          two = @sE.top
        elsif x[1] == "110"
          two = @sF.top
        elsif x[1] == "111"
          two = @sG.top
        end
        output = Op.new(one,two).modulo()
        puts(output)
        if x[3] == "001"
          @sA.push(output)
        elsif x[3] == "010"
          @sB.push(output)
        elsif x[3] == "011"
          @sC.push(output)
        elsif x[3] == "100"
          @sD.push(output)
        elsif x[3] == "101"
          @sE.push(output)
        elsif x[3] == "110"
          @sF.push(output)
        elsif x[3] == "111"
          @sG.push(output)
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
00000001 10
00000011
00000000
00000000
00000001 10
00000011
00000001 256 111
00000001 216 111
00000001 216 111
00000001 10084 111
00000001 127796 111
00000001 127761 111
00000001 127762 111
00000001 127763 111
00000001 127764 111
00000001 127765 111
00000001 127766 111
00000001 10 111
00000011 111
00000001 6 010
00000001 250 100
00000100 010 100 100
00000001 10 100
00000011 100
00000000 100
00000001 2 110
00000001 110 100 100
00000011 100")
x.run()
