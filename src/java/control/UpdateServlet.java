/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import context.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.NV;

/**
 *
 * @author havanthiep
 */
@WebServlet(name="UpdateServlet", urlPatterns={"/update"})
public class UpdateServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String hoten = request.getParameter("hoten");
        String ngaysinh = request.getParameter("ngaysinh");
        String gioitinh = request.getParameter("gioitinh");
        String sdt = request.getParameter("sdt");
        String diachi = request.getParameter("diachi");
        String chinhanh = request.getParameter("chinhanh");
        String chucvu = request.getParameter("chucvu");
        int mucluong = Integer.parseInt(request.getParameter("mucluong"));
        String chuthich = request.getParameter("chuthich");
        
        DAO dao = new DAO();
        List<NV> list = dao.getAllNV();
        if(hoten.split("\\s+").length<2){
            request.setAttribute("error", "Vui lòng điền đầy đủ họ và tên!");
            request.getRequestDispatcher("information").forward(request, response);
        }
        else{
            int ok = 0;
            for(NV i:list){
                if(id == i.getId()){
                    dao.updateNV(id, hoten, ngaysinh, gioitinh, sdt, diachi, chinhanh, chucvu, mucluong, chuthich);
                    ok = 1;
                    response.sendRedirect("information");
                }
            }
            if(ok==0){
                request.setAttribute("error", "Id không đúng!");
                request.getRequestDispatcher("information.jsp").forward(request, response);
            }
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
