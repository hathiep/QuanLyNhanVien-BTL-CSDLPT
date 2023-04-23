<%-- 
    Document   : information
    Created on : Apr 22, 2023, 7:50:40 PM
    Author     : havanthiep
--%>
<%@page import="java.util.List"%>
<%@page import="model.NV"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý nhân viên</title>
<!--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css">-->
<!--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">-->
    <link rel="stylesheet" href="css/information.css">
</head>
    <body>
        <div class="home-heading">
            <h1>Quản lý nhân viên</h1>
        </div>
        <div class="home-body">
            <div class="home-menu">
                <li><a href="home.jsp">Trang chủ</a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </div>
            <div class="home-main">
                <div class="main-top">
                    
                </div>
                    
                <div class="main-block">
                    <div style="margin-right:-2px;background:darkkhaki;">
                        <table id="header" cellpadding="3" cellspacing="0" border="0">
                            <tr>
                                <th class="col1">ID</th>
                                <th class="col3">Họ và tên</th>
                                <th class="col2">Ngày sinh</th>
                                <th class="col2">Giới tính</th>
                                <th class="col4">Địa chỉ</th>
                                <th class="col2">SĐT</th>
                                <th class="col3">Chức vụ</th>
                                <th class="col2">Mức Lương</th>
                                <th class="col3">Chú thích</th>
                            </tr>
                        </table>
                    </div>
                    <div id="box">
                        <table id="tbl-content" cellpadding="3" cellspacing="0" border="0">
                        <%
                            List<NV> list = (List<NV>)request.getAttribute("listNV");
                            for(NV i:list){
                        %>
                                <tr>
                                    <td class="col1"><%=i.getId()%></td>
                                    <td class="col3"><%=i.getHoten()%></td>
                                    <td class="col2"><%=i.getNgaysinh()%></td>
                                    <td class="col2"><%=i.getGioitinh()%></td>
                                    <td class="col4"><%=i.getDiachi()%></td>
                                    <td class="col2"><%=i.getSdt()%></td>
                                    <td class="col3"><%=i.getChucvu()%></td>
                                    <td class="right" class="col2"><%=i.getMucluong()%></td>
                                    <td class="col3"></td>
                                </tr>
                         <%
                            }
                        %>
                        </table>
                    </div>
                </div>
                
                <div class="main-block" id="crud">
                    
                </div>
            </div>
        </div>
    </body>
</html>