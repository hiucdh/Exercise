<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Gmail</title>
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>
  <div class="header">
    <div class="header-left">
      <i class="fa-solid fa-bars"></i>
      <img src="https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_2x_r2.png" alt="Gmail Logo">
    </div>
    <div class="header-center">
      <input type="text" placeholder="Tìm kiếm trong thư">
    </div>
    <div class="header-right">
      <i class="fa-solid fa-circle-question"></i>
      <i class="fa-solid fa-gear"></i>
      <i class="fa-solid fa-user-circle"></i>
    </div>
  </div>
  <div class="main">
    <div class="sidebar">
      <button><i class="fa-solid fa-pen"></i> Soạn thư</button>
      <ul>
        <li><i class="fa-solid fa-inbox"></i> Hộp thư đến</li>
        <li><i class="fa-regular fa-star"></i> Đã gắn dấu sao</li>
        <li><i class="fa-regular fa-paper-plane"></i> Đã gửi</li>
        <li><i class="fa-regular fa-trash-can"></i> Thùng rác</li>
      </ul>
    </div>
    <div class="inbox">
      <h2>Hộp thư đến</h2>
      <% for (int i=1; i<=15; i++) { %>
        <div class="mail-item">
          <div class="mail-sender">Người gửi <%= i %></div>
          <div class="mail-subject">Mail số <%= i %></div>
          <div class="mail-time">10:<%= (i<10?"0"+i:i) %></div>
        </div>
      <% } %>
    </div>
  </div>
</body>
</html>
