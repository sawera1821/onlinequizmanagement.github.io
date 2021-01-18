<%@ Page Title="Intermediate Learning" Language="C#" MasterPageFile="~/mainmasterpage.Master" AutoEventWireup="true" CodeBehind="intermediatelearning.aspx.cs" Inherits="Wpltheoryfinalproject.intermediatelearning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
       <h3>Intermediate Level </h3>
        <p>&nbsp;</p>
       <asp:Menu  ID="Menu1" runat="server" CssClass="auto-style1" Font-Bold="False" Font-Names="Agency FB" ForeColor="Black" Orientation="Horizontal" style=" height:50px;">
                <Items>
                    <asp:MenuItem Text="Python If Statements" Value="Python If Statements"></asp:MenuItem>
                    <asp:MenuItem Text="Python For Loop" Value="Python For Loop"></asp:MenuItem>
                    <asp:MenuItem Text="Python while Loop" Value="Python while Loop"></asp:MenuItem>
                    <asp:MenuItem Text="Arrays In Python" Value="Arrays In Python"></asp:MenuItem>
                    <asp:MenuItem Text="Filing In Python" Value="Filing In Python"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#CAB21B" BorderColor="Black" />
                <StaticMenuItemStyle ForeColor="WhiteSmoke" Height="25px" HorizontalPadding="33px" />
                <StaticMenuStyle BackColor="#868BA1" BorderStyle="Inset" />
                <StaticItemTemplate>
                    <%# Eval("Text") %>
                </StaticItemTemplate>
           </asp:Menu>
       <h2>Python IF Statement</h2>
       <p>In a Python program, the if statement is how you perform this sort of decision-making. It allows for conditional execution of a statement or group of statements based on the value of an expression.</p>
In its simplest form, it looks like this:
           <br />
           <b><pre>if "expr:"
    "statement"
</pre></b>
         <br />  
If "expr" is true (evaluates to a value that is “truthy”), then "statement" is executed. If "expr" is false, then "statement" is skipped over and not executed.
Note that the colon (:) following "expr" is required. Some programming languages require If "expr" is true (evaluates to a value that is “truthy”), then "statement" is executed. If "expr" is false, then "statement" is skipped over and not executed.
 to be enclosed in parentheses, but Python does not.

           <br />
           <b><i>Code Example :</i></b>
           <br />
           <b><pre>         
>>> x = 0
>>> y = 5

>>> if x < y:                           
...     print('yes')
...
</pre>
       </b>
    
  <h2>The else and elif Clauses</h2>
<p>Now you know how to use an if statement to conditionally execute a single statement or a block of several statements. It’s time to find out what else you can do.
Sometimes, you want to evaluate a condition and take one path if it is true but specify an alternative path if it is not. This is accomplished with an else clause:
<br />
    <pre><b>
        if "expr":
    "statement(s)"
else:
    "statement(s)"</b></pre>
    There is also syntax for branching execution based on several alternatives. For this, use one or more elif (short for else if) clauses.
<br />
    <pre><b>
        if "expr:"
    "statement(s)"
elif "expr":
    "statement(s)"
elif expr:
    "statement(s)"
    ...
else:
    "statement(s)"

Another Example

>>> name = 'Sawera'
>>> if name == 'fatima':
...     print('Hii fatima')
... elif name == 'Ummat':
...     print('Hii Ummat')
... elif name == 'Sawera':
...     print('Hii Sawera')
... elif name == 'Salman':
...     print('Hii Salman')
... else:
...     print("I don't know who you are!")
...
Hello Sawera
</b></pre>

       <h2>Python for Loop</h2>

       <p>The for loop in Python is used to iterate over a sequence (list, tuple, string) or other iterable objects. Iterating over a sequence is called traversal.
<br />
           <b><i>Syntax of for Loop</i></b>
           <pre><b>
    for val in sequence:
	Body of for

    Another Example:

    # Program to find the sum of all numbers stored in a list

    # List of numbers
    numbers = [1,2,3,4,5,6,7,8,9]

    # variable to store the sum
    sum = 0

    # iterate over the list
    for val in numbers:
	   sum = sum+val

       print("The sum is", sum)
</b></pre>

<h2>Python while Loop</h2>
       <p>
           The while loop in Python is used to iterate over a block of code as long as the test expression (condition) is true.
We generally use this loop when we don't know the number of times to iterate beforehand.

           <br />
           <br />
           <b><i>Syntax of while Loop in Python</i></b>
           <br />
           <pre><b>
    while test_expression:
    Body of while

    An Example:

    counter = 0

    while counter < 3:
       print("Inside loop")
       counter = counter + 1
    else:
       print("Inside else")

</b></pre>

       </p>
    <h2>Arrays In Python</h2>
       <p>
           Array is created in Python by importing array module to the python program. Then the array is declared as shown below.
       <pre><b>
from array import *

arrayName = array(typecode, [Initializers])
</b></pre>
           Before lookign at various array operations lets create and print an array using python.
The below code creates an array named array1.

           <pre><b>

from array import *

arrayexample = array('i', [10,20,30,40,50])

for x in arrayexample:
 print(x)
</b></pre>
<h3>Accessing Array Element</h3>
       <p>
           We can access each element of an array using the index of the element. The below code shows how
     
           <b>

           <br />
           <br />
           from array import *<br />
           <br />
           arrayexample = array('i', [10,20,30,40,50])<br />
           <br />
           print (arrayexample[0])<br />
           <br />
           print (arrayexample[2])<br />
           <br />
           <br />


</b>
           </p>

       <h3>Insertion Operation</h3>
       <p>
         Insert operation is to insert one or more data elements into an array. Based on the requirement, a new element can be added at the beginning, end, or any given index of array.
Here, we add a data element at the middle of the array using the python in-built insert() method.
 The below code shows how
     
           <pre><b>

from array import *

arrayexample = array('i', [10,20,30,40,50])

arrayexample.insert(1,60)

for x in arrayexample:
 print(x)
</b></pre>
           </p>


       <h3>Deletion Operation</h3>
       <p>
         Deletion refers to removing an existing element from the array and re-organizing all elements of an array.
Here, we remove a data element at the middle of the array using the python in-built remove() method.

     
           <pre><b>

from array import *

arrayexample = array('i', [10,20,30,40,50])

arrayexample.remove(40)

for x in arrayexample:
 print(x)
</b></pre>

<h3>Update Operation</h3>
       <p>
         Update operation refers to updating an existing element from the array at a given index.
Here, we simply reassign a new value to the desired index we want to update.

     
           <pre><b>

from array import *

arrayexample = array('i', [10,20,30,40,50])

arrayexample[2] = 80

for x in arrayexample:
 print(x)


</b></pre>
           </p>

<h2>Filing In Python</h2>
<h3>Opening Files in Python</h3>
       <p>
          Python has a built-in open() function to open a file. This function returns a file object, also called a handle, as it is used to read or modify the file accordingly.
           <pre><b>

>>> f = open("file.txt")    # open file in current directory
>>> f = open("C:/Python.txt")  # specifying full path
</b></pre>
           </p>

<h3>Closing Files in Python</h3>
       <p>
         When we are done with performing operations on the file, we need to properly close the file.
           <pre><b>

f = open("file.txt", encoding = 'utf-8')
# perform file operations
f.close()
</b></pre>
           </p>

<h3>Writing to Files in Python</h3>
       <p>
        In order to write into a file in Python, we need to open it in write w, append a or exclusive creation x mode.
We need to be careful with the w mode, as it will overwrite into the file if it already exists. Due to this, all the previous data are erased.
Writing a string or sequence of bytes (for binary files) is done using the write() method. This method returns the number of characters written to the file.

           <pre><b>

with open("file.txt",'w',encoding = 'utf-8') as f:
   f.write("This is my file\n")
   f.write("I own It")
</b></pre>

<h3>Reading Files in Python</h3>
       <p>
        To read a file in Python, we must open the file in reading r mode.
There are various methods available for this purpose. We can use the read(size) method to read in the size number of data. If the size parameter is not specified, it reads and returns up to the end of the file.

           <pre><b>

>>> f = open("file.txt",'r',encoding = 'utf-8')
>>> f.read(2)    # read the first 2 data
>>> f.read(2)    # read the next 2 data
>>> f.read()     # read in the rest till end of file
>>> f.read()  # further reading returns empty stings
</b></pre>
   </div>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<p style="font-size:larger; color:white; background-color:#868BA1;">If You Are Ready For The Quiz Click On The Button Below
</p>
    <p style="font-size:larger; color:white; background-color:#868BA1;">You Will Have Maximum 10 Minutes To Finish Your Quiz After Attempting All The Questions
        The result will be shown below.There is No Negative Marking
    </p>
    <p style="font-size:larger; color:white; background-color:#868BA1;">GOOD LUCK !!!</p>
    <asp:Button ID="Button1" runat="server" ForeColor="#868BA1" Text="Start Quiz" class="btn btn-warning" OnClick="Button1_Click"/>
</asp:Content>
