<%@ Page Title="Beginner Learning" Language="C#" MasterPageFile="~/mainmasterpage.Master" AutoEventWireup="true" CodeBehind="beginnerlearning.aspx.cs" Inherits="Wpltheoryfinalproject.beginnerlearning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
           
        }
      
        .auto-style3 {
            
            font-size: x-large;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            font-size: xx-large;
            
        }
        .auto-style6 {
            font-size: xx-large;
           
            /*background-color: #00FF00;*/
        }
        .auto-style7 {
            font-size: x-large;
           
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            font-size: xx-large;
           
        }
        .auto-style10 {
            font-size:medium;
        }
    p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
  <div>
            <span class="auto-style5">Lets Start With Beginner Level<br />
            </span><br />
            <strong>
            <asp:Menu ID="Menu1" runat="server" CssClass="auto-style1" Font-Bold="False" Font-Names="Agency FB" ForeColor="Black" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick"  style=" height:50px;">
                <Items>
  
                    <asp:MenuItem Text="Data Types" Value="Data Types">
                    </asp:MenuItem>
                    <asp:MenuItem Text="Strings" Value="Strings"></asp:MenuItem>
                    <asp:MenuItem Text="Formate" Value="Formate"></asp:MenuItem>
                    <asp:MenuItem Text="Methods" Value="Methods"></asp:MenuItem>
                    <asp:MenuItem Text="Operations" Value="Operations"></asp:MenuItem>
                    <asp:MenuItem Text="Number" Value="Number"></asp:MenuItem>
                    <asp:MenuItem Text="Tuples" Value="Tuples"></asp:MenuItem>
                    <asp:MenuItem Text="Sets" Value="Sets"></asp:MenuItem>
                    <asp:MenuItem Text="Dictionary" Value="Dictionary"></asp:MenuItem>
                    <asp:MenuItem Text="Operators" Value="Operators"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#CAB21B" BorderColor="Black" />
                <StaticMenuItemStyle ForeColor="WhiteSmoke" Height="25px" HorizontalPadding="33px" />
                <StaticMenuStyle BackColor="#868BA1" BorderStyle="Inset" />
                <StaticItemTemplate>
                    <%# Eval("Text") %>
                </StaticItemTemplate>

            </asp:Menu>
            </strong>
            <br />

        </div>
        <div>
            <span class="auto-style6">Beginners</span><hr />
            <br />
            <span class="auto-style5">Built-in Data Types</span><br class="auto-style4" />
            <br />
            <br />
            <span class="auto-style10">In programming, data type is an important concept.Variables can store data of different types, and different types can do different things.Python has the following data types built-in by default, in these categories:
            </span>
            <hr />
            <br />
            <span class="auto-style4">Text Type:	</span><span class="auto-style3">str<br />
            Example:<br />
            <br />
            x =&quot;Hello World&quot;<br />
            </span><br class="auto-style4" />
            <br />
            <span class="auto-style4">Numeric Types:	</span><span class="auto-style3">int, float, complex<br />
            Example:<br />
            <br />
            
                x =50<span >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            </span>x = <span>50.1 </span>float<br />
            <span >x = 50j<span >&nbsp;&nbsp;&nbsp;&nbsp; </span>complex<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </span></span><br class="auto-style4" />
            <br />
            <span class="auto-style4">Sequence Types:	</span><span class="auto-style3">list, tuple, range<br />
            Example:<br />
            
                x = [&quot;apple&quot;, &quot;banana&quot;]<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>list<span>&nbsp;<br />
            </span>x = (&quot;apple&quot;, &quot;banana&quot;)<span >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>tuple<span><br />
            </span>x = range(50)<span >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>range<span>&nbsp;&nbsp;&nbsp;<br />
&nbsp;</span></span><br />
            <span class="auto-style4">Mapping Type:	</span><span class="auto-style3">dict</span><br class="auto-style4" />
            <span class="auto-style3">Example:<br />
            <br />
            <span>x = {&quot;name&quot; : &quot;Fatima&quot; , &quot;age&quot; : 21}</span></span><br />
            <span class="auto-style4"><br />
            Set Types:	</span><span class="auto-style3">set, frozenset<br />
            Example:<br />
            <br />
            <span>x = {&quot;apple&quot;, &quot;banana&quot;}</span><br />
            </span>
            <br />
            <span class="auto-style4">Boolean Type:	</span><span class="auto-style3">bool<br />
            Example:<br />
            <br />
            <span>x = True<span >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><br class="auto-style4" />
            <br />
            <span class="auto-style4">Binary Types:	</span><span class="auto-style3">bytes, bytearray, memoryview<br />
            Example:<br />
            <br />
          
                x = b&quot;Hello&quot;<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>bytes<span >&nbsp;&nbsp;&nbsp;<br />
            </span>x = bytearray(5)<span>&nbsp;&nbsp;&nbsp;</span>bytearray<span>&nbsp;<br />
            </span>x = memoryview(bytes(5))
            </span><br class="auto-style2" /><br />
            <br />
            <hr />
            <span class="auto-style7">Getting the Data Type</span><br />
            <br />
            <span class="auto-style8">You can get the data type of any object by using the type() function:</span><br class="auto-style8" />
            <br />
            <br />
            <span class="auto-style8">Example: Print the data type of the variable </span> <br class="auto-style8" />
            <br />
            <span class="auto-style8">x:x = 5</span><br class="auto-style8" />
            
            <br /><span class="auto-style8">print(type(x))</span><br />

        </div><br />
        <div>
            <span class="auto-style7">String Formate</span><br class="auto-style7" />
            <hr />
            <br />
            <span class="auto-style8">The format() method formats the specified value(s) and insert them inside the string's placeholder.

The placeholder is defined using curly brackets: {}. Read more about the placeholders in the Placeholder section below.

The format() method returns the formatted string.Formate are divided into two types of parameters .Positional parameters and Keyword parameters<br />


        </span>
        </div>
        <div>
            <span class="auto-style9" >Python String Methods</span><br />
          
            <hr />
            <span class="auto-style8">Python has a set of built-in methods that you can use on strings.</span><br class="auto-style8" />
          
            <span class="auto-style8">Method	       Description</span><br class="auto-style8" />
           
            <span class="auto-style8">capitalize() :	Converts the first character to upper case</span><br class="auto-style8" />
         
            <span class="auto-style8">casefold() :  Converts string into lower case</span><br class="auto-style8" />
         
            <span class="auto-style8">center()	:    Returns a centered string</span><br class="auto-style8" />
          
            <span class="auto-style8">count()	     :   Returns the number of times a specified value occurs in a string</span><br class="auto-style8" />
        
            <span class="auto-style8">encode()	  :  Returns an encoded version of the string</span><br class="auto-style8" />
             <span class="auto-style8">endswith()	   : Returns true if the string ends with the specified value</span><br class="auto-style8" />
         
            <span class="auto-style8">expandtabs()	:Sets the tab size of the string</span><br class="auto-style8" />
           
            <span class="auto-style8">find()	        :Searches the string for a specified value and returns the position of where it was found</span><br class="auto-style8" />
          
            <span class="auto-style8">format()	    :Formats specified values in a string</span><br class="auto-style8" />
            
           <span class="auto-style8">format_map()	:Formats specified values in a string</span><br class="auto-style8" />
            <span class="auto-style8">index()	        :Searches the string for a specified value and returns the position of where it was found<br class="auto-style8" /></span>
       <span class="auto-style8">isalnum()	    :Returns True if all characters in the string are alphanumeric</span><br class="auto-style8" />
           <span class="auto-style8">isalpha()	    :Returns True if all characters in the string are in the alphabet</span><br class="auto-style8" />
            <span class="auto-style8">isdecimal()	    :Returns True if all characters in the string are decimals</span><br class="auto-style8" />
        <span class="auto-style8">isdigit()	    :Returns True if all characters in the string are digits</span><br class="auto-style8" />
          <span class="auto-style8">isidentifier()	:Returns True if the string is an identifier</span><br class="auto-style8" />
          <span class="auto-style8">islower()	    :Returns True if all characters in the string are lower case</span><br class="auto-style8" />
         <span class="auto-style8">isnumeric()	    :Returns True if all characters in the string are numeric</span><br class="auto-style8" />
           <span class="auto-style8">isprintable()	:Returns True if all characters in the string are printable</span><br class="auto-style8" />
        <span class="auto-style8">isspace()	    :Returns True if all characters in the string are whitespaces</span><br class="auto-style8" />
          <span class="auto-style8">istitle()	    :Returns True if the string follows the rules of a title</span><br class="auto-style8" />
         <span class="auto-style8">isupper()	    :Returns True if all characters in the string are upper case</span><br class="auto-style8" />
        <span class="auto-style8">join()	        :Joins the elements of an iterable to the end of the string</span><br class="auto-style8" />
           <span class="auto-style8">ljust()	        :Returns a left justified version of the string</span><br class="auto-style8" />
           <span class="auto-style8">lower()	        :Converts a string into lower case</span><br class="auto-style8" />
        <span class="auto-style8">lstrip()	    :Returns a left trim version of the string</span><br class="auto-style8" />
            <span class="auto-style8">maketrans()	    :Returns a translation table to be used in translations</span><br class="auto-style8" />
          <span class="auto-style8">partition()	    :Returns a tuple where the string is parted into three parts</span><br class="auto-style8" />
       <span class="auto-style8">replace()	    :Returns a string where a specified value is replaced with a specified value</span><br class="auto-style8" />
            <span class="auto-style8">rfind()	        :Searches the string for a specified value and returns the last position of where it was found</span><br class="auto-style8" />
           <span class="auto-style8">rindex()	    :Searches the string for a specified value and returns the last position of where it was found</span><br class="auto-style8" />
           <span class="auto-style8">rjust()	        :Returns a right justified version of the string</span><br class="auto-style8" />
           <span class="auto-style8">rpartition()	:Returns a tuple where the string is parted into three parts</span><br class="auto-style8" />
         <span class="auto-style8">rsplit()	    :Splits the string at the specified separator, and returns a list</span><br class="auto-style8" />
          <span class="auto-style8">rstrip()	    :Returns a right trim version of the string</span><br class="auto-style8" />
        <span class="auto-style8">split()	        :Splits the string at the specified separator, and returns a list</span><br class="auto-style8" />
    <span class="auto-style8">splitlines()	:Splits the string at line breaks and returns a list</span><br class="auto-style8" />
            <span class="auto-style8">startswith()	:Returns true if the string starts with the specified value</span><br class="auto-style8" />
          <span class="auto-style8">strip()	        :Returns a trimmed version of the string</span><br class="auto-style8" />
         <span class="auto-style8">swapcase()	    :Swaps cases, lower case becomes upper case and vice versa</span><br class="auto-style8" />
     <span class="auto-style8">title()	        :Converts the first character of each word to upper case</span><br class="auto-style8" />
          <span class="auto-style8">translate()	    :Returns a translated string</span><br class="auto-style8" />
            <span class="auto-style8">upper()	        :Converts a string into upper case</span><br class="auto-style8" />
           <span class="auto-style8">zfill()	        :Fills the string with a specified number of 0 values at the beginning</span><br />
            <div>
                <h2 class="auto-style10">Python Operators: Arithmetic, Logical, Comparison, Assignment, Bitwise & Precedence</h2>
                <%--<h3 class="auto-style10">Python Operators: Arithmetic, Logical, Comparison, Assignment, Bitwise & Precedence<h3/>--%>
                    
<b>What are Logical Operators in Python?</b>
               
                 <br />
                <hr />
                <br />
                    <span class="auto-style10">Logical Operators </span>in Python are used to perform logical operations on the values of variables. 
                    The value is either true or false. We can figure out the conditions by the result of the truth values. 
                    There are mainly three types of logical operators in python : logical AND, logical OR and logical NOT.
                    Operators are represented by keywords or special <br /><br />
               <span class="auto-style10"> <b>Arithmetic Operators</b></span><br /><br />
Arithmetic Operators perform various arithmetic calculations like addition, subtraction, multiplication, division, %modulus, exponent, etc. 
                    There are various methods for arithmetic calculation in Python like you can use the eval function, 
                    declare variable & calculate, or call functions.
                <br />
                    Example: For arithmetic operators we will take simple example of addition where we will add two-digit 4+5=9
                    
                <br /><br /><span class="auto-style10"><b>Comparison Operators</b></span><br /><br />
Comparison Operators In Python compares the values on either side of the operand and determines the relation between them. It is also referred to as relational operators. Various comparison operators in python are ( ==, != , <>, >,<=, etc.)
                <br />
Example: For comparison operators we will compare the value of x to the value of y and print the result in true or false. Here in example, our value of x = 4 which is smaller than y = 5, so when we print the value as x>y, 
                    it actually compares the value of x to y and since it is not correct, it returns false.
              <br />    <br /> <span class="auto-style10"><b>Python Assignment</b> </span> <br />
                <br />
Assignment Operators in Python are used for assigning the value of the right operand to the left operand. Various assignment operators used in Python are (+=, - = , *=, /= , etc.).
                <br />
<br />
Example: Python assignment operators is simply to assign the value,<br />
                <br />
                for example

num1 = 4
num2 = 5<br />
                <br />
&nbsp;print(("Line 1 - Value of num1 : ", num1))
                <br />
                print(("Line 2 - Value of num2 : ", num2))<br />
&nbsp;<br /> <span class="auto-style10">Logical Operators<br />
                </span><br />
Logical operators in Python are used for conditional statements are true or false. Logical operators in Python are AND, OR and NOT. For logical operators following condition are applied.

                <br />
                <br />
                For AND operator – It returns TRUE if both the operands (right side and left side) are true<br />
                <br />
For OR operator- It returns TRUE if either of the operand (right side or left side) is true
                <br />
                <br />
                For NOT operator- returns TRUE if operand is false
Example: 
                <br />
                <br />
                Here in example we get true or false based on the value of a and b

a = True
b = False
                <br />
                <br />
                print(('a and b is',a and b))<br />
print(('a or b is',a or b))
                <br />
                print(('not a is',not a))
                <br />
                  <br />  <span class="auto-style10">Membership Operators:<br />
                </span><br />
These operators test for membership in a sequence such as lists, strings or tuples. There are two membership operators that are used in Python. (in, not in). It gives the result based on the variable present in specified sequence or string

Example:<br />
                For example here we check whether the value of x=4 and value of y=8 is available in list or not, by using in and not in operators.<br />

x = 4
                <br />
                y = 8
                <br />
                list = [1, 2, 3, 4, 5 ];
                <br />
                if ( x in list ):
                <br />
&nbsp;&nbsp; print("Line 1 - x is available in the given list")
                <br />
                else:
                <br />
&nbsp;&nbsp; print("Line 1 - x is not available in the given list")<br />
if ( y not in list ):
                <br />
&nbsp;&nbsp; print("Line 2 - y is not available in the given list")
                <br />
                else:<br />
&nbsp;&nbsp;
   print("Line 2 - y is available in the given list")
                <br />
                <br />    <span class="auto-style10">Identity Operators:<br />
                </span><br />
Identity Operators in Python are used to compare the memory location of two objects. The two identity operators used in Python are (is, is not).<br />
                <br />

Operator is: It returns true if two variables point the same object and false otherwise.<br />
                <br />
Operator is not: It returns false if two variables point the same object and true otherwise .</div>
        </div>
&nbsp;
<br />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<p style="font-size:larger; color:white; background-color:#868BA1;">If You Are Ready For The Quiz Click On The Button Below
</p>
    <p style="font-size:larger; color:white; background-color:#868BA1;">You Will Have Maximum 10 Minutes To Finish Your Quiz After Attempting All The Questions
        The result will be shown below.There is No Negative Marking
    </p>
    <p style="font-size:larger; color:white; background-color:#868BA1;">GOOD LUCK !!!</p>
    <asp:Button ID="Button1" runat="server" ForeColor="#868BA1" Text="Start Quiz" class="btn btn-warning" OnClick="Button1_Click1"/>
    
</asp:Content>
