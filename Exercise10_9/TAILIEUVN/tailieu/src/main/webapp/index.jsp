<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.*, models.Item" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaiLieu.vn</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>
<div class="container">
    <div class="header">
        <div class="logo">
            <img src="images/logo_tailieu.vn2.png" alt="logo">
        </div>
        <div class="category">&#9776; Danh Mục</div>
        <div class="search">
            <input type="text" placeholder="Tìm tài liệu">
        </div>
        <div class="two-button">
            <i class="fa-solid fa-upload"></i> Upload
            <i class="fa-solid fa-user"></i> Đăng Nhập
        </div>
        <div class="vip">
            <button>&#9733; Nâng cấp vip</button>
        </div>
    </div>
    <div class="under-header">
        <ul>
            <li>Giáo dục phổ thông</li>
            <li>Tài liệu chuyên môn</li>
            <li>Bộ tài liệu cao cấp</li>
            <li>Văn bản - biểu mẫu</li>
            <li>Luận văn - báo cáo</li>
            <li>Trắc nghiệm Online</li>
        </ul>
    </div>
    <div class="banner">
        <div class="picture-banner">
            <img src="images/1.png" alt="banner" width="1200px" height="421.875px">
        </div>
        <h1>HƠN 1.500.000 TÀI LIỆU - ĐỀ THI - LUẬN VĂN - BIỂU MẪU</h1>

        <%
            String[] titles = {
                "Quản trị doanh nghiệp",
                "Luận văn báo cáo",
                "Đề thi kiểm tra",
                "Quy trình biểu mẫu",
                "Giáo án Word và PPT"
            };
            String[] images = {
                "images/1.png",
                "images/2.png",
                "images/3.png",
                "images/4.png",
                "images/5.png"
            };
            request.setAttribute("titles", titles);
            request.setAttribute("images", images);
        %>

        <div class="five-buttons">
            <ul>
                <c:forEach var="t" items="${titles}" varStatus="s">
                    <li>
                        <img src="${images[s.index]}" alt="Image ${s.index+1}">
                        <p>${t}</p>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="highlight">
        <%
            List<Item> items = new ArrayList<>();
            items.add(new Item("images/1.png", "Tài liệu Toán", "500 trang", "PDF"));
            items.add(new Item("images/2.png", "Tài liệu Văn", "200 trang", "DOCX"));
            items.add(new Item("images/3.png", "Đề thi Anh", "50 câu", "Online"));
            items.add(new Item("images/4.png", "Giáo án Hóa", "10 chương", "PPT"));
            request.setAttribute("items", items);
        %>

        <div class="four-buttons">
            <ul>
                <c:forEach var="it" items="${items}">
                    <li>
                        <img src="${it.img}" alt="Image">
                        <p>${it.text}</p>
                        <div class="under-button">
                            <div>
                                <p>${it.line1}</p>
                                <p>${it.line2}</p>
                            </div>
                            <div>&#128190;</div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>

        <div class="four-buttons">
            <ul>
                <c:forEach var="it" items="${items}">
                    <li>
                        <img src="${it.img}" alt="Image">
                        <p>${it.text}</p>
                        <div class="under-button">
                            <div>
                                <p>${it.line1}</p>
                                <p>${it.line2}</p>
                            </div>
                            <div>&#128190;</div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

</div>
</body>
</html>
