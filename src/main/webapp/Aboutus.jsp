<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Your Online Grocery Shop</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }
        .container {
            max-width: 800px;
            margin-top: 120px;
            padding: 20px;
        }
         p {
            text-align: center;
          
            text:bold;
            
        }
    </style>
</head>
<body style="background-color: white ">
    <div class="container  "  >
    
    <%@include file="All_component/all_css.jsp"%>


	<%@include file="All_component/navbar.jsp"%>
    
    
    
     <h2 
     class="text-center text-4xl text-black-900  pt-2 font-display font-semibold lg:text-left xl:text-5xl 
                    xl:text-bold">About US</h2>
        <p>Welcome to Online Grocery Shop! We are your one-stop destination for all your grocery needs, offering convenience, quality, and affordability right at your fingertips.</p>
        <p>At  Online Grocery Shop, we understand the importance of providing fresh, nutritious, and diverse products to our customers. Our mission is to simplify your shopping experience while ensuring that you have access to a wide range of high-quality products that cater to your dietary preferences and lifestyle choices.</p>
        <p>With years of experience in the grocery industry, we have curated a selection of products from trusted suppliers and brands, guaranteeing freshness and reliability with every order. Whether you're looking for organic produce, gluten-free options, or international delicacies, we have you covered.</p>
        <p>What sets us apart is our commitment to exceptional customer service. Our dedicated team is here to assist you every step of the way, from navigating our user-friendly platform to providing personalized recommendations tailored to your preferences.</p>
        <p>At Online Grocery Shop, we believe in sustainability and community engagement. That's why we strive to minimize our environmental footprint by promoting eco-friendly practices and supporting local producers and farmers.</p>
        <p>Thank you for choosing  Online Grocery Shop as your preferred grocery partner. We look forward to serving you and exceeding your expectations with every order.</p>
        <p>Happy shopping!</p>
        <p>Online Grocery Shop Team</p>
    </div>
</body>

<%@include file="All_component/index_footer.jsp"%>
</html>