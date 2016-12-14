package br.cesjf.lpwsd.trab1.controller;

import br.cesjf.lpwsd.trab1.Aluno;
import br.cesjf.lpwsd.trab1.Ocorrencia;
import br.cesjf.lpwsd.trab1.dao.AlunoJpaController;
import br.cesjf.lpwsd.trab1.dao.OcorrenciaJpaController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;
import org.apache.jasper.tagplugins.jstl.ForEach;

@WebServlet(name = "AlunoController", urlPatterns = {"/AlunoController", "/novo.html", "/listar-alunos.html","/lista-tudo.html", "/aluno.html"})
public class AlunoController extends HttpServlet {

    @PersistenceUnit(unitName = "Trab1PU")
    EntityManagerFactory emf;
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getRequestURI().contains("novo.html")) {
            request.getRequestDispatcher("/WEB-INF/novo.jsp").forward(request, response);
        }
        if (request.getRequestURI().contains("listar-alunos.html")) {
            AlunoJpaController dao = new AlunoJpaController(ut, emf);
            List<Aluno> aluno = dao.findAlunoEntities();
            
            OcorrenciaJpaController dao3 = new OcorrenciaJpaController(ut, emf);
            List<Ocorrencia> ocorrencia = dao3.findOcorrenciaEntities();


            request.setAttribute("ocorrencia", ocorrencia);
            request.setAttribute("aluno", aluno);
            request.getRequestDispatcher("/WEB-INF/listar-alunos.jsp").forward(request, response);   
        }
        if (request.getRequestURI().contains("aluno.html")) {
              Long id = Long.parseLong(request.getParameter("id"));
              request.setAttribute("idAluno", id);
              // AlunoJpaController dao = new AlunoJpaController(ut, emf);
              // dao.findAluno(id);
              // response.sendRedirect("listar-alunos.html");
              
            OcorrenciaJpaController dao3 = new OcorrenciaJpaController(ut, emf);
            List<Ocorrencia> ocorrencia = dao3.findOcorrenciaEntities();
            request.setAttribute("ocorrencia", ocorrencia);
              
            request.getRequestDispatcher("/WEB-INF/aluno.jsp").forward(request, response);              
        }
        if(request.getRequestURI().contains("lista-tudo.html")) {
            OcorrenciaJpaController daoOcorrecia = new OcorrenciaJpaController(ut, emf);
            List<Object[]> somanotas = daoOcorrecia.getListaTudo();
            
            request.setAttribute("somanotas", somanotas);
            request.getRequestDispatcher("/WEB-INF/lista-tudo.jsp").forward(request, response);              
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getRequestURI().contains("novo.html")) {
            Aluno aluno = new Aluno();
            String nome = request.getParameter("nome");
            int grupo =  Integer.parseInt(request.getParameter("grupo"));
            aluno.setNome(nome);
            aluno.setGrupo(grupo);
            AlunoJpaController dao = new AlunoJpaController(ut, emf);
            
            try {
                dao.create(aluno);
                response.sendRedirect("listar-alunos.html");
            } catch (Exception ex) {
                response.sendRedirect("listar-alunos.html");
                Logger.getLogger(AlunoController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (request.getRequestURI().contains("aluno.html")) {
            Ocorrencia ocorrencia = new Ocorrencia();
            int id_aluno =  Integer.parseInt(request.getParameter("id_aluno"));
            int id_professor =  Integer.parseInt(request.getParameter("id_professor"));
            float nota = Float.parseFloat(request.getParameter("nota"));
            
            ocorrencia.setId_aluno(id_aluno);
            ocorrencia.setId_professor(id_professor);
            ocorrencia.setNota(nota);
            
            OcorrenciaJpaController dao2 = new OcorrenciaJpaController(ut, emf);
            try {
               dao2.create(ocorrencia);
                response.sendRedirect("listar-alunos.html");
            } catch (Exception ex) {
                response.sendRedirect("listar-alunos.html");
                Logger.getLogger(AlunoController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    }

}
