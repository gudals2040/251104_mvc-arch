<%@ page import="org.example.mvc.model.entity.Pet" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>반려동물을 소개합니다</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h1, h3 {
            color: #5a5a5a;
        }
        form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            width: 300px;
        }
        form input[type="text"],
        form input[type="number"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
        form button {
            width: 100%;
            padding: 10px;
            border: none;
            background-color: #5c67f2;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        form button:hover {
            background-color: #5058e5;
        }
        .pet-list {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }
        .pet-card {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 200px;
        }
        .pet-card p {
            margin: 0;
            line-height: 1.6;
        }
    </style>
</head>
<body>
<h1>반려동물을 소개합니다</h1>

<form method="post">
    <h3>새로운 반려동물 등록</h3>
    이름 : <input type="text" name="name" required><br>
    나이 : <input type="number" name="age" required><br>
    종류 : <input type="text" name="category" required><br>
    <button>등록</button>
</form>

<div class="pet-list">
    <%
        List<Pet> petList = (List<Pet>) request.getAttribute("petList");
        if (petList != null) {
            for (Pet pet : petList) {
    %>
    <div class="pet-card">
        <p>
            <strong>이름:</strong> <%= pet.name() %><br>
            <strong>나이:</strong> <%= pet.age() %><br>
            <strong>종류:</strong> <%= pet.category() %>
        </p>
    </div>
    <%
            }
        }
    %>
</div>
</body>
</html>