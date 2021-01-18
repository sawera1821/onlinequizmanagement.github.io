<%@ Page Title="Home" Language="C#" MasterPageFile="~/mainmasterpage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Wpltheoryfinalproject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">

        li{
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size:larger;
           
        }

         #video{
             height:100px;
             width:70px;
    }
        .auto-style2 {
            width: 655px;
        }
        .auto-style3 {
            width: 709px;
            height: 330px;
        }
    </style>
    
   
 
    <h1>Lets Learn About Python</h1>
   <h3><a href="beginnerlearning.aspx">Beginner Level</a></h3>
    <ol>
        <li>
            String
        </li>
        <li>
           Formate
        </li>
        <li>
          Methods
        </li>
         <li>
           Operations
        </li>
         <li>
          Number
        </li>
         <li>
           Tuples
        </li>
         <li>
         Sets
        </li>
         <li>
         Dictionary
        </li>

        <li>
     Operators
        </li>
    </ol>


   <h3><a href="intermediatelearning.aspx">Intermediate Level</a></h3>
    <ul>
        <li>
           Python If Statements
        </li>
        <li>
           Python For Loop
        </li>
        <li>
   Python while Loop
        </li>

        <li>
           Arrays In Python
        </li>

        <li>
         Filing In Python
        </li>

    </ul>

    <h3><a href="advancelearning.aspx">Advance Level</a></h3>
    <ul>
       <li>Class In Python</li>
          <li>Object In Python</li>
          <li>Method In Python</li>
          <li>Inheritance In Python</li>
          <li>Polymorphism In Python</li>
          <li>Data Abstraction In Python</li>
          <li>Encapsulation In Python</li>
    </ul>

    <h2>Benefits Of Learning Python</h2>
<ol>
    <li>Because Python is built on an easy syntax, there are no hardships whatsoever in understanding it. Hence it can be used in the development of prototypes and at the same time speed up the process.</li>
    <li>Another thing is that Python is suitable for the general-purpose tasks as well such as data mining and big data facilitation.</li>
    <li>Python helps the developers irrespective of their skill level. They stay productive, systematic and organized in comparison to other languages.</li>
    <li>Because Python is easy to read, it is exemplary for being used amongst large development teams and people belonging to non-programming professions can grasp it, leading to an easier follow-up.</li>
    <li>Python is an open-source language with tremendous base support and numerous like-minded people work on it on an everyday basis. This breeds communication among developers possessing varying skill-sets.</li>
    <li>Python is regularly upgraded and updated. This ensures that there is no gap between the prosecution of new functions and meeting evolving developmental standards.</li>
</ol>

    <h2>About Us</h2>
    <p><pre>We Made This Website To Let People Learn Few Things About Python Language 
            and after learning they can test themselves by giving small quizzez.
            This is made as a group project while completing a course named 
         <b>Web Programming Language</b> From <b>Iqra University Karachi (Main Campus)</b>
       </pre>
</p>

    <h4>Contact Us At :</h4>
    <ul>
        <li>
            <a href = "sawerasamad1821@gmail.com">sawerasamad1821@gmail.com</a>
        </li>
        <li>
            <a href = "fatimaqazi299@gmail.com">fatimaqazi299@gmail.com</a>
        </li>
        <li>
            <a href = "ummatulqareem@gmailcom">ummatulqareem@gmailcom</a>
        </li>
        <li>
            <a href = "syedsalman.ali988@gmail.com">syedsalman.ali988@gmail.com</a>
        </li>
    </ul>

    <h2>Here Is A Short Tutorial Video</h2>
<div id="video">
    <video controls ; class="auto-style3">
        <source src="wpltheory Video.mp4" type="video/mp4""/>
    </video>
</div>


</asp:Content>
