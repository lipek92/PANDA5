# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do
  Gist.create(snippet: '
#include <stdio.h>
int bit_liczby(int numer, int liczba)
{
return ((liczba >> numer) & 1);
}
   
int main(){    
  int numer, liczba;    
  printf("Podaj liczbe: ");   
  scanf("%i", &liczba);   
  printf("Podaj ktory bit tej liczby wydrukowac: ");    
  scanf("%i", &numer);    
  printf("\n%i\n", bit_liczby(numer, liczba)); 

  return 0;  
} 
', lang:"c" , description: "drukowanie bitow liczby")
end

Gist.create(
snippet:
'
//Hello World in C#
class HelloWorld
{
    static void Main()
    {
        System.Console.WriteLine("Hello, World!");
    }
}
',
lang: 'c#',
description: 'Hello World w C#'
)

Gist.create(
snippet:
'
#include <iostream.h>

main()
{
    cout << "Hello World!" << endl;
    return 0;
}
',
lang: 'c++',
description: 'Hello World w C++'
)

Gist.create(
snippet:
'
body:before {
    content: "Hello World";
}
',
lang: 'css',
description: 'Hello World w CSS'
)

Gist.create(
snippet:
"
Program Hello_World;

{$APPTYPE CONSOLE}

Begin
  WriteLn('Hello World');
End.
",
lang: 'delphi',
description: 'Hello World w Delphi'
)

Gist.create(
snippet:
'
<HTML>
<!-- Hello World in HTML -->
<HEAD>
<TITLE>Hello World!</TITLE>
</HEAD>
<BODY>
Hello World!
</BODY>
</HTML>
',
lang: 'html',
description: 'Hello World w HTMLu'
)

Gist.create(
snippet:
'
class HelloWorld {
  static public void main( String args[] ) {
    System.out.println( "Hello World!" );
  }
}
',
lang: 'java',
description: 'Hello World w Javie'
)

Gist.create(
snippet:
"
{Hello World in Pascal}

program HelloWorld(output);
begin
  WriteLn('Hello World!');
end.
",
lang: 'pascal',
description: 'Hello World w Pascalu'
)

Gist.create(
snippet:
'
# Hello world in perl

print "Hello World!\n";
',
lang: 'perl',
description: 'Hello World w Perlu'
)

Gist.create(
snippet:
"
<?php
  // Hello World in PHP
  echo 'Hello World!';
?>
",
lang: 'php',
description: 'Hello World w PHP'
)

Gist.create(
snippet:
"
# Hello World in Microsoft Powershell

'Hello World!'
",
lang: 'powershell',
description: 'Hello World w Microsoft Powershell'
)

Gist.create(
snippet:
'
# Hello World in Python
print "Hello World"
',
lang: 'python',
description: 'Hello World w Pythonie'
)

Gist.create(
snippet:
'
# Hello World in Ruby
puts "Hello World!"
',
lang: 'ruby',
description: 'Hello World w Ruby'
)

Gist.create(
snippet:
"
# Hello World in SQL

SELECT 'Hello World';
",
lang: 'sql',
description: 'Hello World w SQL'
)

Gist.create(
snippet:
'
// Hello World in Scala

object HelloWorld with Application {
     Console.println("Hello world!");
   }
',
lang: 'scala',
description: 'Hello World w Scala'
)

Gist.create(
snippet:
'
% Hello World in plain \TeX
\immediate\write16{Hello World!}
\end
',
lang: 'tex',
description: 'Hello World w TeX'
)

Gist.create(
snippet:
'
#include <stdio.h>
 
int main(void)
{
    printf("Hello, world!\n");
    return 0;
}
',
lang: 'c',
description: 'Hello World w C'
)

Gist.create(
snippet:
'
#include <stdio.h>
#include <stdlib.h>
 
int main()
{
    int i=0;
 
    while(i<255) 
    {
        printf("\n \a %d = %c ",i,i);
        i=i+1; 
    }
    getchar();
    return 0;
}
',
lang: 'c',
description: 'ASCII Generator'
)

Gist.create(
snippet:
"
program silnia_rek;

function silnia(n : integer) : extended;
begin
  if n < 2 then silnia := 1 else silnia := n * silnia(n - 1);
end;

var
  n : cardinal;

begin
  writeln('Program oblicza rekurencyjnie silnie z liczby n');
  writeln('------------------------------------------------------');
  writeln('(C)2005 mgr Jerzy Walaszek I LO w Tarnowie');
  writeln;
  write('Podaj n = '); readln(n);
  writeln;
  writeln(n,'! = ',silnia(n):0:0);
  writeln;
  write('Nacisnij Enter...'); readln;
end.

// Rekurencyjne obliczanie silni
//------------------------------
// (C)2012 I LO w Tarnowie
// I LO w Tarnowie
//------------------------------ 
",
lang: 'pascal',
description: 'Silnia rekurencyjnie'
)
