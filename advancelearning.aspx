<%@ Page Title="Advance Learning" Language="C#" MasterPageFile="~/mainmasterpage.Master" AutoEventWireup="true" CodeBehind="advancelearning.aspx.cs" Inherits="Wpltheoryfinalproject.advancelearning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 491px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Advance Level </h3>
       <asp:Menu ID="Menu1" runat="server" CssClass="auto-style1" Font-Bold="False" Font-Names="Agency FB" ForeColor="Black" Orientation="Horizontal" style=" height:50px;">
                <Items>
                    <asp:MenuItem Text="Classes In Python" Value="Class In Python"></asp:MenuItem>
                    <asp:MenuItem Text="Object In Python" Value="Object In Python"></asp:MenuItem>
                    <asp:MenuItem Text="Method In Python" Value="Method In Python"></asp:MenuItem>
                    <asp:MenuItem Text="Inheritance In Python" Value="Inheritance In Python"></asp:MenuItem>
                    <asp:MenuItem Text="Polymorphism In Python" Value="Polymorphism In Python"></asp:MenuItem>
                    <asp:MenuItem Text="Data Abstraction In Python" Value="Data Abstraction In Python"></asp:MenuItem>
                    <asp:MenuItem Text="Encapsulation In Python" Value="Encapsulation In Python"></asp:MenuItem>
                 
                </Items>
                <StaticHoverStyle BackColor="#CAB21B" BorderColor="Black" />
                <StaticMenuItemStyle ForeColor="WhiteSmoke" Height="25px" HorizontalPadding="33px" />
                <StaticMenuStyle BackColor="#868BA1" BorderStyle="Inset" />
                <StaticItemTemplate>
                    <%# Eval("Text") %>
                </StaticItemTemplate>
           </asp:Menu>
   
    <h2>Python OOPs Concepts</h2>
      <hr class="auto-style3" />
    
    <p>
        Object-oriented programming is a programming paradigm that provides a means of structuring programs so that properties and behaviors are bundled into individual objects.

For instance, an object could represent a person with properties like a name, age, and address and behaviors such as walking, talking, breathing, and running. 
    <br />
      Major principles of object-oriented programming system are given below:
    </p>
      <ol>
          <li>Class</li>
          <li>Object</li>
          <li>Method</li>
          <li>Inheritance</li>
          <li>Polymorphism</li>
          <li>Data Abstraction</li>
          <li>Encapsulation</li>
      </ol>

    <h4>How To Define A Class In Python</h4>
    <p>All class definitions start with the class keyword, which is followed by the name of the class and a colon. Any code that is indented below the class definition is considered part of the class’s body.</p>
    <pre><b>
    class Carss:
    pass</b></pre>
    <p>The properties that all Cars objects must have are defined in a method called .__init__(). Every time a new Car object is created, .__init__() sets the initial state of the object by assigning the values of the object’s properties. That is, .__init__() initializes each new instance of the class.

You can give .__init__() any number of parameters, but the first parameter will always be a variable called self. When a new class instance is created, the instance is automatically passed to the self parameter in .__init__() so that new attributes can be defined on the object.<br />

Let’s update the Cars class with an .__init__() method that creates .name and .age attributes:</p>
    
<pre><b>
    class Carss:
        def __init__(self, name, age):
        self.name = name
        self.age = age
     </b></pre>
<h5>Instantiate an Object Of This Class</h5>
    <pre><b>Carss(corolla,20)</b></pre>
    <h2>Instance Method In Python</h2>
    <p>The method is a function that is associated with an object. In Python, a method is not unique to class instances. Any object type can have methods.
        <br />
        Instance methods are functions that are defined inside a class and can only be called from an instance of that class. 
    </p>
   <pre><b>
class car:  
def __init__(self,modelname, year):  
        self.modelname = modelname  
        self.year = year  
def display(self):  
        print(self.modelname,self.year)  
  
c1 = car("Toyota", 2016)  
c1.display()  
        </b></pre>

<h2>Inheritance</h2>
      <hr class="auto-style3" />
    
    <p>Inheritance is the most important aspect of object-oriented programming, which simulates the real-world concept of inheritance. It specifies that the child object acquires all the properties and behaviors of the parent object.

By using inheritance, we can create a class which uses all the properties and behavior of another class. The new class is known as a derived class or child class, and the one whose properties are acquired is known as a base class or parent class.

It provides the re-usability of the code.</p>

    <h4>Python Inheritance Syntax</h4>
    <pre><b>
class BaseClass:
  Body of base class
class DerivedClass(BaseClass):
  Body of derived class
         </b></pre>

<pre><b>
class Polygon:
    def __init__(self, no_of_sides):
        self.n = no_of_sides
        self.sides = [0 for i in range(no_of_sides)]

    def inputSides(self):
        self.sides = [float(input("Enter side "+str(i+1)+" : ")) for i in range(self.n)]

    def dispSides(self):
        for i in range(self.n):
            print("Side",i+1,"is",self.sides[i])
     </b></pre>

    <pre><b>
class Triangle(Polygon):
    def __init__(self):
        Polygon.__init__(self,3)

    def findArea(self):
        a, b, c = self.sides
        # calculate the semi-perimeter
        s = (a + b + c) / 2
        area = (s*(s-a)*(s-b)*(s-c)) ** 0.5
        print('The area of the triangle is %0.2f' %area)
         </b></pre>

<pre><b>
>>> t = Triangle()

>>> t.inputSides()
Enter side 1 : 3
Enter side 2 : 5
Enter side 3 : 4

>>> t.dispSides()
Side 1 is 3.0
Side 2 is 5.0
Side 3 is 4.0

>>> t.findArea()
The area of the triangle is 6.00
     </b></pre>

<h2>Polymorphism In Python</h2>
  <hr class="auto-style3" />
    <p>Polymorphism contains two words "poly" and "morphs". Poly means many, and morph means shape. By polymorphism, we understand that one task can be performed in different ways. For example - you have a class animal, and all animals speak. But they speak differently. Here, the "speak" behavior is polymorphic in a sense and depends on the animal. So, the abstract "animal" concept does not actually "speak", but specific animals (like dogs and cats) have a concrete implementation of the action "speak".</p>

    <pre><b>
class Rabbit(): 
    def age(self): 
        print("This function determines the age of Rabbit.") 
   
    def color(self): 
        print("This function determines the color of Rabbit.") 
   
class Horse(): 
    def age(self): 
        print("This function determines the age of Horse.") 
   
    def color(self): 
        print("This function determines the color of Horse.") 
   
obj1 = Rabbit() 
obj2 = Horse() 
for type in (obj1, obj2): # creating a loop to iterate through the obj1, obj2
    type.age() 
    type.color() 
    
         </b></pre>

<h2>Encapsulation In Python</h2>
    <hr />
    <p>When working with classes and dealing with sensitive data, providing global access to all the variables used within the program is not a good choice. Encapsulation offers a way for us to access the required variables without providing the program full-fledged access to any of those variables.

Updating, modifying, or deleting data from variables can be done through the use of methods that are defined specifically for the purpose. The benefit of using this approach to programming is improved control over the input data and better security.

Primis Player Placeholder
</p>
   <p>Since we do not have access modifiers in Python, we will use a few different methods to control the access of variables within a Python program.</p>
   <h4>Using Single Underscore</h4>
  <p>it tells other programmers that the variables or methods have to be used only within the scope of the class.</p>
    <pre><b>
class Person:
    def __init__(self, name, age=0):
        self.name = name
        self._age = age
 
    def display(self):
        print(self.name)
        print(self._age)
 </b></pre>

<h4>Using Double Underscores</h4>
    <p>If you want to make class members i.e. methods and variables private, then you should prefix them with double underscores.</p>
    <pre><b>
class Person:
    def __init__(self, name, age=0):
        self.name = name
        self.__age = age
 
    def display(self):
        print(self.name)
        print(self.__age)</b></pre>

<h4>Using Getter and Setter methods to access private variables</h4>
    <p>If you want to access and change the private variables, accessor (getter) methods and mutators(setter methods) should be used, as they are part of Class.</p>
<pre><b>
class Person:
    def __init__(self, name, age=0):
        self.name = name
        self.__age = age
 
    def display(self):
        print(self.name)
        print(self.__age)
 
    def getAge(self):
        print(self.__age)
 
    def setAge(self, age):
        self.__age = age</b></pre>

<br />

    <h2>
        Abstraction In Python

    </h2>
    <hr />
    <p>Abstraction in Python is achieved by using abstract classes and interfaces.

An abstract class is a class that generally provides incomplete functionality and contains one or more abstract methods. Abstract methods are the methods that generally don’t have any implementation, it is left to the sub classes to provide implementation for the abstract methods.</p>
   <pre><b>from abc import ABC, abstractmethod
class Payment(ABC):
  def print_slip(self, amount):
    print('Purchase of amount- ', amount)
  @abstractmethod
  def payment(self, amount):
    pass

class CreditCardPayment(Payment):
  def payment(self, amount):
    print('Credit card payment of- ', amount)

class MobileWalletPayment(Payment):
  def payment(self, amount):
    print('Mobile wallet payment of- ', amount)
</b></pre>
    
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
