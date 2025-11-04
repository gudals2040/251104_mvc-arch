<%@ page import="org.example.mvc.model.repository.PetRepository" %>
<%@ page import="org.example.mvc.model.entity.Pet" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- JSP가 만들어질 때 1번만 선언되게 된다 -> 내부에 있는 petList는 유지 --%>
<%! PetRepository repository = new PetRepository(); %>
<html>
<head>
    <title>반려동물을 소개합니다</title>
</head>
<body>
<%-- view -> model -> pet -> view --%>
<% List<Pet> petList = repository.findAll(); %>
<div style="display: flex; flex-wrap: wrap; gap: 16px">
    <% for (Pet pet : petList) { %>
    <p>
        이름 : <%= pet.name() %><br>
        나이 : <%= pet.age() %><br>
        종류 : <%= pet.category() %>
    </p>
    <% } %>
</div>
</body>
</html>