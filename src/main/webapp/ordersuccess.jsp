<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Your Title Here</title> 
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet"> 
     
    <style> 
        body { 
            text-align: center; 
            padding: 40px 0; 
            background: #EBF0F5; 
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif; 
        } 
        h1 { 
            color: #0D47A1; 
            font-weight: 900; 
            font-size: 40px; 
            margin-bottom: 10px; 
            opacity: 0; 
            animation: fadeInText 1s ease-in-out forwards; 
        } 
        p { 
            color: #1565C0; 
            font-size: 20px; 
            margin: 0; 
            opacity: 0; 
            animation: fadeInText 1s ease-in-out forwards; 
            animation-delay: 0.5s; 
        } 
        .success-icon { 
            width: 200px; 
            height: 200px; 
            fill: #64B5F6; 
            transform: scale(0); 
            animation: scaleIcon 2s ease-in-out forwards; 
        } 
        @keyframes scaleIcon { 
            0% { 
                transform: scale(0); 
            } 
            100% { 
                transform: scale(1); 
            } 
        } 
        .tick-icon { 
            width: 100px; 
            height: 100px; 
            fill: #64B5F6; 
            transform: scale(0); 
            animation: scaleTickIcon 1s ease-in-out forwards; 
            animation-delay: 1s; 
        } 
        @keyframes scaleTickIcon { 
            0% { 
                transform: scale(0); 
            } 
            100% { 
                transform: scale(1.2); 
            } 
        } 
        .card { 
            background: white; 
            padding: 60px; 
            border-radius: 4px; 
            box-shadow: 0 2px 3px #C8D0D8; 
            display: inline-block; 
            margin: 0 auto; 
            opacity: 0; 
            animation: fadeIn 1s ease-in-out forwards; 
            animation-delay: 1s; 
        } 
        @keyframes fadeIn { 
            0% { 
                opacity: 0; 
                transform: translateY(-20px); 
            } 
            100% { 
                opacity: 1; 
                transform: translateY(0); 
            } 
        } 
        @keyframes fadeInText { 
            0% { 
                opacity: 0; 
                transform: translateY(-20px); 
            } 
            100% { 
                opacity: 1; 
                transform: translateY(0); 
            } 
        } 
    </style> 
</head> 
<body> 
    <div class="card"> 
        <svg class="success-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"> 
            <path fill="#64B5F6" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 15l-5-5 1.41-1.41L11 14.17l6.59-6.59L19 9l-8 8z"/> 
        </svg> 
        <h1>Success</h1>  
        <p>We received your purchase request;<br/> we'll be in touch shortly!</p> 
    </div> 
    
    <div style="margin-left:35px; margin-top:20px;">
    <a href="index.jsp"><button type="button" class="btn btn-secondary" data-dismiss="modal">Continue Shopping</button></a>
    </div>
    
    
    
</body> 
</html>