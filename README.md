# xasm
`xasm` is a simple assembly.

## Tutorial
`xasm` currently has 4 commands:

    00000000
    00000001
    00000010
    00000011

The first command is pop, then push, then xprint, xxprint.

### Pop

pops `x`'s top data peice.

### Push

Push the first argument to `x` stack.

Ex.

    00000001 165 111
    ;;Push 165 to stack 111

### xprint

Takes every number in stack `x` and strings them together and puts it to the screen.

Ex.

     00000001 127796
     00000010

Push `127796` to stack `001` and print the number `127796`

### xxprint

Takes every number in stack `x` and converts it to Unicode and prints it.

Ex.

     00000001 127796
     00000011

Push `127796` to stack `001` and print `🌴`

## Syntax

`xasm`'s syntax works like this

      command argument argument ... stack

## Stacks

The default stack is `001`.
There are 7 stacks `001` - `111`
