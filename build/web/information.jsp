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
                
<!--                <div class="main-block" id="crud">
                    
                </div>-->
                <form method="post" action="algorithmcontrol" class="main-block">

                        <h2 id="heading">Chỉnh sửa thông tin nhân viên</h1>

<!--                        <div id="form-top" class="form-block">

                            <div class="form-item2" class="form-item1">
                                <label class="form-label" for="type_algorithm">Thuật toán</label>
                                <div id="radio1" class="form-radio">
                                    <input type="radio" name="type_algorithm" value="1" checked> BFS<br>
                                    <input type="radio" name="type_algorithm" value="0" > DFS</br>
                                </div>
                            </div>

                            <div class="form-item2" class="form-item1">
                                <label class="form-label" id="form-label-top" for="direction">Chiều</label>
                                <div id="radio2" class="form-radio">
                                    <input type="radio" name="direction" value="1" checked> Có hướng<br>
                                    <input type="radio" name="direction" value="0" > Vô hướng</br>
                                </div>
                            </div>

                        </div>-->

                        <div id="form-left" class="form-block">

                            <div class="form-item1">
                                <label class="form-label" for="id" required>ID</label>
                                <input class="form-input" id="id" name="id" type="number" placeholder="0"/>
                            </div>

                            <div class="form-item1">
                                <label class="form-label" for="hoten">Họ và tên</label>
                                <input class="form-input" id="hoten" name="hoten" type="text" placeholder="Nhập đầy đủ họ và tên"/>
                            </div>

                            <div class="form-item1">
                                <label class="form-label" for="ngaysinh">Ngày sinh</label>
                                <input class="form-input" type="date" name="ngaysinh" id="ngaysinh" value="1980-01-01">
                            </div>

                            <div class="form-item1" class="form-item2">
                                <label class="form-label" for="finish_node">Giới tính</label>
                                <div id="radio2" class="form-radio">
                                    <input type="radio" name="direction" value="1" checked> Nam<br>
                                    <input type="radio" name="direction" value="0" > Nữ</br>
                                </div>
                            </div>


                        </div>

                        <div id="form-right" class="form-block">


                            <div class="form-item1">
                                <label class="form-label" for="first_node">Địa chỉ</label>
                                <select class="form-option" name="first_node" id="first_node">
                                    
                                </select>
                            </div>

                            <div class="form-item1">
                                <label class="form-label" for="last_node">SĐT</label>
                                <select class="form-option" name="last_node" id="last_node">
                                    
                                </select>
                            </div>

                            <button class="form-button" id="button-add" type="submit" onclick="add_edge()">Thêm cạnh</button>
                            <button class="form-button" id="button-delete" type="submit" onclick="delete_edge()">Xoá cạnh</button>
                        </div>

                        <div id="form-bottom" class="form-block">

                            <div class="form-label" id="label-bottom" >Danh sách cạnh:</div><br>
                            <div id="list_edge"></div>
                            <input class="form-input" id="list_input_edge" name="list_input_edge" hidden="true" type="text"/>

                        </div>

                        <button class="form-button" id="button-search" type="submit">Tìm kiếm đường đi</button>

                    </form>
            </div>
        </div>
    </body>
</html>