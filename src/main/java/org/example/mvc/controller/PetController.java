package org.example.mvc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/pet") // pet이라는 경로에 대응
public class PetController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // forward -> 주소를 유지시키면서 실제 접속하는 경로를 바꾸는 기술
        req.getRequestDispatcher("/WEB-INF/views/pet.jsp").forward(req, resp);
        // MVC1 -> Controller -> 접속 역할
    }
}