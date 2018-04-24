<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<link rel="stylesheet" type="text/css"
	href="${APP_PATH}/static/css/icon_menu.css">
<title>主菜单选择</title>
</head>
<body>

	<div class="wrapper" id="skills">
		<ul>
			<li>
				<div class="image">
					<div class="row">
						<svg version="1.1" id="web-skill"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							width="160px" height="108px" viewBox="0 0 160 108"
							enable-background="new 0 0 160 108" xml:space="preserve">
						<g id="mobile" style="transform: matrix(1, 0, 0, 1, 0, 0);">
						<path fill="#FFFFFF"
							d="M49.1,102.4c0,1.2-1,2.1-2.1,2.1H20.6c-1.2,0-2.1-1-2.1-2.1v-56c0-1.2,1-2.1,2.1-2.1h26.3
					        c1.2,0,2.1,1,2.1,2.1v56H49.1z"></path>
						<path fill="#00D9B3"
							d="M46.9,106H20.6c-2,0-3.6-1.6-3.6-3.6v-56c0-2,1.6-3.6,3.6-3.6h26.3c2,0,3.6,1.6,3.6,3.6v56
					        C50.6,104.4,48.9,106,46.9,106z M20.6,45.7c-0.3,0-0.6,0.3-0.6,0.6v56c0,0.4,0.3,0.6,0.6,0.6h26.3c0.4,0,0.6-0.3,0.6-0.6v-56
					        c0-0.4-0.3-0.6-0.6-0.6H20.6z"></path>
						<path fill="#00D9B3"
							d="M35.9,97.2c0,1.2-1,2.1-2.1,2.1c-1.2,0-2.1-1-2.1-2.1c0-1.2,1-2.1,2.1-2.1C35,95,35.9,96,35.9,97.2"></path>
						<path fill="#00D9B3"
							d="M35.4,76.5c2.3-0.8,3.9-2.9,3.9-5.4c0-3.2-2.6-5.7-5.7-5.7c-3.2,0-5.7,2.6-5.7,5.7v10.1
					        c0,0.5,0.4,0.9,0.9,0.9h10.1c0.4,0,0.7-0.2,0.8-0.5c0.1-0.3,0.1-0.7-0.2-1L35.4,76.5z M33.6,67.1c2.2,0,4,1.8,4,4
					        c0,2.1-1.6,3.8-3.6,4l-4.3-4.3C29.8,68.7,31.5,67.1,33.6,67.1 M29.6,80.3v-7.1l7.1,7.1H29.6z"></path></g>
						<g id="desktop" style="transform: matrix(1, 0, 0, 1, 0, 0);">
						<path fill="#FFFFFF"
							d="M128.6,77.6c0,1.7-1.3,3-3,3H46.5c-1.7,0-3-1.3-3-3V21.1c0-1.7,1.3-3,3-3h79.1c1.7,0,3,1.3,3,3V77.6z"></path>
						<path fill="#00D9B3"
							d="M125.6,82.1H46.5c-2.5,0-4.5-2-4.5-4.5V21.1c0-2.5,2-4.5,4.5-4.5h79.1c2.5,0,4.5,2,4.5,4.5v56.5
					        C130.1,80.1,128.1,82.1,125.6,82.1z M46.5,19.6c-0.8,0-1.5,0.7-1.5,1.5v56.5c0,0.8,0.7,1.5,1.5,1.5h79.1c0.8,0,1.5-0.7,1.5-1.5
					        V21.1c0-0.8-0.7-1.5-1.5-1.5H46.5z"></path>
						<path fill="#00D9B3"
							d="M101.8,106c-7.3,0-13.2-5.9-13.2-13.2V80.6c0-0.8,0.7-1.5,1.5-1.5c0.8,0,1.5,0.7,1.5,1.5v12.2
					        c0,5.6,4.6,10.2,10.2,10.2c0.8,0,1.5,0.7,1.5,1.5S102.7,106,101.8,106z"></path>
						<path fill="#00D9B3"
							d="M70.2,106c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5c5.6,0,10.2-4.6,10.2-10.2V80.6c0-0.8,0.7-1.5,1.5-1.5
					        c0.8,0,1.5,0.7,1.5,1.5v12.2C83.4,100.1,77.5,106,70.2,106z"></path>
						<path fill="#00D9B3"
							d="M88.6,53.8c3.6-1.2,6.2-4.6,6.2-8.6c0-5-4.1-9-9-9c-4.9,0-9,4.1-9,9v15.9c0,0.8,0.6,1.4,1.4,1.4H94
					        c0.6,0,1.1-0.3,1.3-0.8s0.1-1.1-0.3-1.5L88.6,53.8z M85.7,38.9c3.5,0,6.3,2.8,6.3,6.3c0,3.3-2.5,6-5.7,6.3l-6.8-6.8
					        C79.8,41.5,82.5,38.9,85.7,38.9 M79.5,59.7V48.5l11.2,11.2H79.5z"></path></g>
						<g id="mobile2" opacity="0"
							style="transform: matrix(1, 0, 0, 1, 0, 0); opacity: 0;">
						<path fill="#FFFFFF"
							d="M49.1,102.4c0,1.2-1,2.1-2.1,2.1H20.6c-1.2,0-2.1-1-2.1-2.1v-56c0-1.2,1-2.1,2.1-2.1h26.3
					        c1.2,0,2.1,1,2.1,2.1L49.1,102.4L49.1,102.4z"></path>
						<path fill="#00D9B3"
							d="M46.9,106H20.6c-2,0-3.6-1.6-3.6-3.6v-56c0-2,1.6-3.6,3.6-3.6h26.3c2,0,3.6,1.6,3.6,3.6v56
					        C50.6,104.4,48.9,106,46.9,106z M20.6,45.7c-0.3,0-0.6,0.3-0.6,0.6v56c0,0.4,0.3,0.6,0.6,0.6h26.3c0.4,0,0.6-0.3,0.6-0.6v-56
					        c0-0.4-0.3-0.6-0.6-0.6H20.6z"></path>
						<path fill="#00D9B3"
							d="M35.9,97.2c0,1.2-1,2.1-2.1,2.1c-1.2,0-2.1-1-2.1-2.1c0-1.2,1-2.1,2.1-2.1C35,95,35.9,96,35.9,97.2"></path>
						<path fill="#00D9B3"
							d="M35.4,76.5c2.3-0.8,3.9-2.9,3.9-5.4c0-3.2-2.6-5.7-5.7-5.7c-3.2,0-5.7,2.6-5.7,5.7v10.1
					        c0,0.5,0.4,0.9,0.9,0.9h10.1c0.4,0,0.7-0.2,0.8-0.5c0.1-0.3,0.1-0.7-0.2-1L35.4,76.5z M33.6,67.1c2.2,0,4,1.8,4,4
					        c0,2.1-1.6,3.8-3.6,4l-4.3-4.3C29.8,68.7,31.5,67.1,33.6,67.1 M29.6,80.3v-7.1l7.1,7.1H29.6z"></path></g></svg>
					</div>
				</div>

				<p><a href="${APP_PATH}/views/equip_index.jsp">系统维护操作</a></p>
			</li>

			<li>
				<div class="image">
					<div class="row">
						<svg version="1.1" id="ux-skill"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							width="160px" height="108px" viewBox="0 0 160 108"
							enable-background="new 0 0 160 108" xml:space="preserve">
						<line fill="#FFFFFF" x1="17.1" y1="30.8" x2="78.2" y2="91.9"></line>
						<path fill="#00D9B3"
							d="M78.2,93.4c-0.4,0-0.8-0.1-1.1-0.4L16.1,31.9c-0.6-0.6-0.6-1.5,0-2.1c0.6-0.6,1.5-0.6,2.1,0l61.1,61.1
                			c0.6,0.6,0.6,1.5,0,2.1C78.9,93.2,78.6,93.4,78.2,93.4z"></path>
						<line fill="#FFFFFF" x1="78.2" y1="30.8" x2="17.1" y2="91.9"></line>
						<path fill="#00D9B3"
							d="M17.1,93.4c-0.4,0-0.8-0.1-1.1-0.4c-0.6-0.6-0.6-1.5,0-2.1l61.1-61.1c0.6-0.6,1.5-0.6,2.1,0
                			c0.6,0.6,0.6,1.5,0,2.1L18.2,92.9C17.9,93.2,17.5,93.4,17.1,93.4z"></path>
						<line fill="#FFFFFF" x1="47.7" y1="18.2" x2="47.7" y2="104.5"></line>
						<path fill="#00D9B3"
							d="M47.7,106c-0.8,0-1.5-0.7-1.5-1.5V18.2c0-0.8,0.7-1.5,1.5-1.5s1.5,0.7,1.5,1.5v86.3
                			C49.1,105.3,48.5,106,47.7,106z"></path>
						<line fill="#FFFFFF" x1="90.8" y1="61.3" x2="4.5" y2="61.3"></line>
						<path fill="#00D9B3"
							d="M90.8,62.8H4.5c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h86.3c0.8,0,1.5,0.7,1.5,1.5S91.7,62.8,90.8,62.8z"></path>
						<line fill="#FFFFFF" x1="7.8" y1="44.8" x2="87.5" y2="77.9"></line>
						<path fill="#00D9B3"
							d="M87.5,79.4c-0.2,0-0.4,0-0.6-0.1l-79.8-33c-0.8-0.3-1.1-1.2-0.8-1.9c0.3-0.8,1.2-1.1,1.9-0.8l79.8,33
                			c0.8,0.3,1.1,1.2,0.8,1.9C88.7,79,88.1,79.4,87.5,79.4z"></path>
						<line fill="#FFFFFF" x1="64.2" y1="21.5" x2="31.1" y2="101.2"></line>
						<path fill="#00D9B3"
							d="M31.1,102.7c-0.2,0-0.4,0-0.6-0.1c-0.8-0.3-1.1-1.2-0.8-1.9l33-79.8c0.3-0.8,1.2-1.1,1.9-0.8
                			c0.8,0.3,1.1,1.2,0.8,1.9l-33,79.8C32.3,102.4,31.7,102.7,31.1,102.7z"></path>
						<line fill="#FFFFFF" x1="31.1" y1="21.5" x2="64.2" y2="101.2"></line>
						<path fill="#00D9B3"
							d="M64.2,102.7c-0.6,0-1.1-0.3-1.4-0.9L29.8,22c-0.3-0.8,0-1.6,0.8-1.9c0.8-0.3,1.6,0,1.9,0.8l33,79.8
                			c0.3,0.8,0,1.6-0.8,1.9C64.6,102.7,64.4,102.7,64.2,102.7z"></path>
						<line fill="#FFFFFF" x1="87.5" y1="44.8" x2="7.8" y2="77.9"></line>
						<path fill="#00D9B3"
							d="M7.8,79.4c-0.6,0-1.1-0.3-1.4-0.9c-0.3-0.8,0-1.6,0.8-1.9l79.8-33c0.8-0.3,1.6,0,1.9,0.8
                			c0.3,0.8,0,1.6-0.8,1.9l-79.8,33C8.2,79.3,8,79.4,7.8,79.4z"></path>
						<path fill="#FFFFFF"
							d="M80.6,61.3c0,18.2-14.8,33-33,33c-18.2,0-33-14.8-33-33c0-18.2,14.8-33,33-33
                			C65.9,28.4,80.6,43.1,80.6,61.3"></path>
						<path fill="#FFFFFF"
							d="M75.2,61.3c0,15.2-12.3,27.5-27.5,27.5S20.1,76.5,20.1,61.3c0-15.2,12.3-27.5,27.5-27.5
                			S75.2,46.1,75.2,61.3"></path>
						<path fill="#00D9B3"
							d="M47.7,90.3c-16,0-29-13-29-29s13-29,29-29s29,13,29,29S63.7,90.3,47.7,90.3z M47.7,35.3
                			c-14.4,0-26,11.7-26,26s11.7,26,26,26s26-11.7,26-26S62,35.3,47.7,35.3z"></path>
						<g id="pupil"
							style="transform-origin: 27px -40px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">
						<path fill="#00D9B3"
							d="M63.4,61.3c0,8.7-7,15.7-15.7,15.7c-8.7,0-15.7-7-15.7-15.7c0-8.7,7-15.7,15.7-15.7
                				C56.3,45.6,63.4,52.7,63.4,61.3"></path>
						<path fill="#FFFFFF"
							d="M61.2,48c0,3.3-2.7,6-6,6c-3.3,0-6-2.7-6-6s2.7-6,6-6C58.5,42,61.2,44.6,61.2,48"></path></g>
						<g opacity="0" id="blink" style="opacity: 0;">
						<path fill="#FFFFFF"
							d="M75.2,61.3c0,15.2-12.3,27.5-27.5,27.5c-15.2,0-27.5-12.3-27.5-27.5c0-15.2,12.3-27.5,27.5-27.5
                				C62.9,33.8,75.2,46.1,75.2,61.3"></path>
						<path fill="#00D9B3"
							d="M75.2,62.8h-55c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h55c0.8,0,1.5,0.7,1.5,1.5S76,62.8,75.2,62.8z"></path></g>
						<path fill="#00D9B3"
							d="M47.7,90.3c-16,0-29-13-29-29s13-29,29-29s29,13,29,29S63.7,90.3,47.7,90.3z M47.7,35.3
                			c-14.4,0-26,11.7-26,26s11.7,26,26,26s26-11.7,26-26S62,35.3,47.7,35.3z"></path></svg>
					</div>
				</div>

				<p>UX/UI</p>
			</li>

			<li>
				<div class="image">
					<div class="row">
						<svg version="1.1" id="social-skill"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							width="160px" height="108px" viewBox="0 0 160 108"
							enable-background="new 0 0 160 108" xml:space="preserve">
						<g id="person_a"
							style="transform-origin: center bottom 0px; transform: matrix(1, 0, 0, 1, 0, 0);">
						<path fill="#00D9B3"
							d="M36.7,106c-3.9,0-7.9-0.8-11.6-2.4c-7.1-3.1-12.6-8.8-15.4-16C3.8,72.7,11.2,55.9,26,50
                				c14.9-5.9,31.8,1.5,37.6,16.4c3.5,9,2.4,19.1-3.1,27.1c-0.5,0.7-1.4,0.9-2.1,0.4c-0.7-0.5-0.9-1.4-0.4-2.1
                				c4.9-7.1,5.9-16.2,2.8-24.3c-5.3-13.4-20.4-19.9-33.8-14.7C13.8,58,7.2,73.2,12.4,86.5c2.5,6.5,7.5,11.6,13.8,14.3
                				s13.4,2.9,19.9,0.4c1-0.4,2-0.9,3-1.4c0.7-0.4,1.6-0.1,2,0.6c0.4,0.7,0.1,1.6-0.6,2c-1.1,0.6-2.2,1.1-3.3,1.6
                				C43.8,105.3,40.3,106,36.7,106z"></path>
						<path fill="#00D9B3"
							d="M49.9,102.6c-0.1,0-0.2,0-0.3,0c-7.9-1.8-13.2-9.5-12-17.6c0.1-0.6,0.6-1.1,1.2-1.2
                				c0.6-0.1,1.2,0.1,1.6,0.6c0.3,0.4,6.9,10.2,18.6,6.8c0.8-0.2,1.6,0.2,1.9,1c0.2,0.8-0.2,1.6-1,1.9c-9.2,2.7-15.8-1.6-19.2-4.9
                				c0.7,5.1,4.5,9.4,9.7,10.6c0.8,0.2,1.3,1,1.1,1.8C51.2,102.1,50.6,102.6,49.9,102.6z"></path>
						<path fill="#00D9B3"
							d="M48.6,73.4c-0.7,0-1.4-0.3-1.9-0.8S46,71.4,46,70.7c0-0.7,0.3-1.4,0.8-1.9c1-1,2.8-1,3.8,0
                				c0.5,0.5,0.8,1.2,0.8,1.9c0,0.7-0.3,1.4-0.8,1.9S49.4,73.4,48.6,73.4z"></path></g>
						<g id="person_b"
							style="transform-origin: center bottom 0px; transform: matrix(1, 0, 0, 1, 0, 0);">
						<path fill="#00D9B3"
							d="M101.3,106c-3.6,0-7.2-0.7-10.6-2c-1.1-0.5-2.3-1-3.3-1.6c-0.7-0.4-1-1.3-0.6-2c0.4-0.7,1.3-1,2-0.6
                				c1,0.5,2,1,3,1.4c6.5,2.5,13.5,2.4,19.9-0.4c6.4-2.8,11.3-7.9,13.8-14.3c5.3-13.4-1.3-28.5-14.7-33.7
                				c-13.4-5.3-28.5,1.3-33.8,14.7c-3.2,8.1-2.1,17.1,2.8,24.3c0.5,0.7,0.3,1.6-0.4,2.1c-0.7,0.5-1.6,0.3-2.1-0.4
                				c-5.5-8-6.6-18.1-3.1-27.1C80.2,51.5,97.1,44.1,112,50c14.9,5.9,22.2,22.7,16.4,37.6c-2.8,7.2-8.3,12.9-15.4,16
                				C109.2,105.2,105.3,106,101.3,106z"></path>
						<path fill="#00D9B3"
							d="M88.1,102.6c-0.7,0-1.3-0.5-1.5-1.2c-0.2-0.8,0.3-1.6,1.1-1.8c5.2-1.2,9-5.5,9.7-10.6
                				c-3.4,3.3-10,7.6-19.2,4.9c-0.8-0.2-1.2-1.1-1-1.9c0.2-0.8,1.1-1.2,1.9-1c11.7,3.5,18.3-6.3,18.6-6.8c0.3-0.5,1-0.8,1.6-0.6
                				c0.6,0.1,1.1,0.6,1.2,1.2c1.2,8.1-4.1,15.8-12,17.6C88.3,102.6,88.2,102.6,88.1,102.6z"></path>
						<path fill="#00D9B3"
							d="M89.4,73.4c-0.7,0-1.4-0.3-1.9-0.8c-0.5-0.5-0.8-1.2-0.8-1.9c0-0.7,0.3-1.4,0.8-1.9c1-1,2.8-1,3.8,0
                				c0.5,0.5,0.8,1.2,0.8,1.9c0,0.7-0.3,1.4-0.8,1.9S90.1,73.4,89.4,73.4z"></path></g></svg>
					</div>
				</div>

				<p>
					<a href="${APP_PATH}/views/usercontacts.jsp">厂家联系人维护</a>
				</p>

			</li>

			<li>
				<div class="image">
					<div class="row">
						<svg version="1.1" id="sdk-skill"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							width="160px" height="108px" viewBox="0 0 160 108"
							enable-background="new 0 0 160 108" xml:space="preserve">
						<g id="key"
							style="transform-origin: 43px 70px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">
						<path fill="#00D9B3"
							d="M47.2,93c-2.1,0-4.2-0.2-6.3-0.7c-0.5-0.1-1-0.5-1.1-1c-0.2-0.5,0-1.1,0.4-1.5l14.4-14.4V64.3l-7.8-7.8
                			H35.6L21.2,70.9c-0.4,0.4-1,0.5-1.5,0.4c-0.5-0.2-0.9-0.6-1-1.1c-2.1-9.8,0.8-19.8,7.9-26.8c6.3-6.3,15-9.4,23.9-8.3L80.2,5.2
                			c0.6-0.6,1.5-0.6,2.1,0c0.6,0.6,0.6,1.5,0,2.1L52,37.6c-0.3,0.3-0.8,0.5-1.3,0.4c-8.2-1.1-16.3,1.5-22.1,7.4
                			C23,51,20.3,58.8,21.2,66.7l12.7-12.7c0.3-0.3,0.7-0.4,1.1-0.4h12.3c0.4,0,0.8,0.2,1.1,0.4l8.7,8.7c0.3,0.3,0.4,0.7,0.4,1.1V76
                			c0,0.4-0.2,0.8-0.4,1.1L44.3,89.8c7.8,0.9,15.6-1.8,21.3-7.5c6.3-6.3,9-15.3,7-24.1c-0.1-0.5,0-1,0.4-1.4l29.4-29.4
                			c0.6-0.6,1.5-0.6,2.1,0c0.6,0.6,0.6,1.5,0,2.1L75.7,58.4c1.8,9.5-1.1,19.2-8,26.1C62.2,90,54.8,93,47.2,93z"></path></g>
						<g id="bolt"
							style="transform-origin: 33px 82px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">
						<path fill="#00D9B3"
							d="M35.9,97.6H23.6c-0.4,0-0.8-0.2-1.1-0.4l-8.7-8.7c-0.3-0.3-0.4-0.7-0.4-1.1V75.1c0-0.4,0.2-0.8,0.4-1.1
                				l8.7-8.7c0.3-0.3,0.7-0.4,1.1-0.4h12.3c0.4,0,0.8,0.2,1.1,0.4l8.7,8.7c0.3,0.3,0.4,0.7,0.4,1.1v12.3c0,0.4-0.2,0.8-0.4,1.1L37,97.2
                				C36.7,97.5,36.3,97.6,35.9,97.6z M24.2,94.6h11.1l7.8-7.8V75.7l-7.8-7.8H24.2l-7.8,7.8v11.1L24.2,94.6z"></path>
						<path fill="#00D9B3"
							d="M31.1,83.6c1.9-0.6,3.2-2.4,3.2-4.5c0-2.6-2.1-4.7-4.7-4.7c-2.6,0-4.7,2.1-4.7,4.7v8.4
                				c0,0.4,0.3,0.7,0.7,0.7h8.4c0.3,0,0.6-0.2,0.7-0.4c0.1-0.3,0-0.6-0.2-0.8L31.1,83.6z M29.6,75.8c1.8,0,3.3,1.5,3.3,3.3
                				c0,1.7-1.3,3.1-3,3.3l-3.6-3.6C26.5,77.1,27.9,75.8,29.6,75.8 M26.3,86.7v-5.9l5.9,5.9H26.3z"></path></g></svg>
					</div>
				</div>

				<p><a href="#">机房设备维护</a></p>

			</li>

			<li>
				<div class="image">
					<div class="row">
						<svg version="1.1" id="interactive-skill"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							width="89px" height="90px" viewBox="0 0 89 90"
							enable-background="new 0 0 89 90" xml:space="preserve">
						<g id="button_bg" opacity="0" style="opacity: 0;">
						<path fill="#00D9B3"
							d="M25.7,41.7c-12.4,0-22.6,10.1-22.6,22.6s10.1,22.6,22.6,22.6c12.4,0,22.6-10.1,22.6-22.6
                			S38.2,41.7,25.7,41.7z"></path></g>
						<g id="infobutton">
						<path fill="#00D9B3"
							d="M25.7,89.9c-14.1,0-25.6-11.5-25.6-25.6c0-14.1,11.5-25.6,25.6-25.6c14.1,0,25.6,11.5,25.6,25.6
                			C51.3,78.4,39.8,89.9,25.7,89.9z M25.7,41.7c-12.4,0-22.6,10.1-22.6,22.6s10.1,22.6,22.6,22.6c12.4,0,22.6-10.1,22.6-22.6
                			S38.2,41.7,25.7,41.7z"></path>
						<path fill="#00D9B3"
							d="M42.5,64.3c0,9.3-7.5,16.8-16.8,16.8C16.4,81.1,9,73.6,9,64.3s7.5-16.8,16.8-16.8
                			C35.1,47.5,42.5,55,42.5,64.3"></path>
						<path fill="#00D9B3"
							d="M25.7,82.6c-10.1,0-18.3-8.2-18.3-18.3C7.5,54.2,15.7,46,25.7,46S44,54.2,44,64.3
                			C44,74.4,35.8,82.6,25.7,82.6z M25.7,49.1c-8.4,0-15.3,6.8-15.3,15.3s6.8,15.3,15.3,15.3S41,72.7,41,64.3
                			C41,55.9,34.1,49.1,25.7,49.1z"></path>
						<path fill="#FFFFFF"
							d="M25.7,74.7c-1.2,0-2.2-1-2.2-2.2V62c0-1.2,1-2.2,2.2-2.2c1.2,0,2.2,1,2.2,2.2v10.4
                			C28,73.7,27,74.7,25.7,74.7z"></path>
						<path fill="#FFFFFF"
							d="M25.7,57.7c-0.6,0-1.2-0.2-1.6-0.7c-0.4-0.4-0.7-1-0.7-1.6c0-0.6,0.2-1.2,0.7-1.6c0.8-0.8,2.3-0.8,3.1,0
                			c0.4,0.4,0.7,1,0.7,1.6c0,0.6-0.2,1.2-0.7,1.6C26.9,57.5,26.3,57.7,25.7,57.7z"></path></g>
						<g id="finger" style="transform: matrix(1, 0, 0, 1, 0, 0);">
						<path fill="#FFFFFF"
							d="M59,1.6L35.4,25.2c-8.1,8.1-8.1,21.3,0,29.4c8.1,8.1,21.3,8.1,29.4,0l22.5-22.5"></path>
						<path fill="#00D9B3"
							d="M50.1,62.2c-5.7,0-11.4-2.2-15.8-6.5c-8.7-8.7-8.7-22.8,0-31.5L57.9,0.6C58.5,0,59.5,0,60,0.6
                			c0.6,0.6,0.6,1.5,0,2.1L36.5,26.3C29,33.8,29,46,36.5,53.5s19.8,7.5,27.3,0L86.3,31c0.6-0.6,1.5-0.6,2.1,0c0.6,0.6,0.6,1.5,0,2.1
                			L65.9,55.7C61.6,60,55.8,62.2,50.1,62.2z"></path>
						<path fill="#00D9B3"
							d="M50.2,56.3c-4.4,0-8.5-1.7-11.6-4.8s-4.8-7.2-4.8-11.6s1.7-8.5,4.8-11.6c3.1-3.1,7.2-4.8,11.6-4.8
                			c4.4,0,8.5,1.7,11.6,4.8c6.4,6.4,6.4,16.8,0,23.2C58.7,54.6,54.6,56.3,50.2,56.3z M50.2,26.4c-3.6,0-7,1.4-9.5,3.9
                			s-3.9,5.9-3.9,9.5c0,3.6,1.4,7,3.9,9.5s5.9,3.9,9.5,3.9c3.6,0,7-1.4,9.5-3.9c5.2-5.2,5.2-13.7,0-19C57.1,27.8,53.8,26.4,50.2,26.4z
                			"></path>
						<path fill="#00D9B3"
							d="M78.2,24.1c-0.4,0-0.8-0.1-1.1-0.4L65.9,12.5c-0.6-0.6-0.6-1.5,0-2.1c0.6-0.6,1.5-0.6,2.1,0l11.2,11.2
                			c0.6,0.6,0.6,1.5,0,2.1C78.9,23.9,78.6,24.1,78.2,24.1z"></path>
						<path fill="#00D9B3"
							d="M83.8,18.5c-0.4,0-0.8-0.1-1.1-0.4L71.5,6.9c-0.6-0.6-0.6-1.5,0-2.1c0.6-0.6,1.5-0.6,2.1,0L84.8,16
                			c0.6,0.6,0.6,1.5,0,2.1C84.5,18.4,84.2,18.5,83.8,18.5z"></path></g></svg>
					</div>
				</div>

				<p><a href="ftp://112.132.231.16:6689" target="_blank">软件下载</a></p>
			</li>

			<li>
				<div class="image">
					<div class="row">
						<svg version="1.1" id="event-skill"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							width="160px" height="108px" viewBox="0 0 160 108"
							enable-background="new 0 0 160 108" xml:space="preserve">
						<path fill="#00D9B3"
							d="M34.1,108c-0.5,0-0.9-0.2-1.2-0.6c-0.5-0.7-0.3-1.6,0.3-2.1c0.4-0.3,41.7-31,41.7-77.1
                				c0-0.8,0.7-1.5,1.5-1.5s1.5,0.7,1.5,1.5c0,47.7-42.5,79.2-42.9,79.5C34.8,107.9,34.5,108,34.1,108z"></path>
						<path fill="#00D9B3"
							d="M125.9,108c-0.3,0-0.6-0.1-0.9-0.3c-0.4-0.3-42.9-31.8-42.9-79.5c0-0.8,0.7-1.5,1.5-1.5s1.5,0.7,1.5,1.5
                				c0,46.2,41.3,76.8,41.7,77.1c0.7,0.5,0.8,1.4,0.3,2.1C126.8,107.8,126.3,108,125.9,108z"></path>
						<g id="flag"
							style="transform-origin: 80px 0px 0px; transform: matrix3d(0, 0, -1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1);">
						<path fill="#00D9B3"
							d="M92.8,14.6h-8.3c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h5.9l-1.6-3.2c-0.2-0.4-0.2-0.9,0-1.3l1.6-3.2H80
                					c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h12.8c0.5,0,1,0.3,1.3,0.7c0.3,0.4,0.3,1,0.1,1.4l-2.3,4.7l2.3,4.7c0.2,0.5,0.2,1-0.1,1.4
                					C93.8,14.3,93.3,14.6,92.8,14.6z"></path>
						<g opacity="0">
						<path fill="#00D9B3"
							d="M80,23.2c-0.8,0-1.5-0.7-1.5-1.5V2.4c0-0.8,0.7-1.5,1.5-1.5s1.5,0.7,1.5,1.5v19.3
                						C81.5,22.5,80.8,23.2,80,23.2z"></path></g></g>
						<g id="stick"
							style="transform: matrix(1, 0, 0, 1, 0, 0.248642857142215);">
						<path fill="#00D9B3"
							d="M80,23.2c-0.8,0-1.5-0.7-1.5-1.5V2.4c0-0.8,0.7-1.5,1.5-1.5s1.5,0.7,1.5,1.5v19.3
                				C81.5,22.5,80.8,23.2,80,23.2z"
							style="fill-opacity: 0.992895918367365;"></path></g>
						<polygon fill="#00D9B3" points="71,106.5 80.1,84.4 89,106.5 		"></polygon>
						<path fill="#00D9B3"
							d="M89.1,108C89.1,108,89.1,108,89.1,108H71c-0.5,0-1-0.2-1.2-0.7c-0.3-0.4-0.3-0.9-0.1-1.4l9.1-22.1
                				c0.2-0.6,0.8-0.9,1.4-0.9c0,0,0,0,0,0c0.6,0,1.1,0.4,1.4,0.9l8.8,21.9c0.1,0.2,0.2,0.5,0.2,0.8C90.6,107.3,89.9,108,89.1,108z
                				 M73.2,105h13.6l-6.7-16.7L73.2,105z"></path>
						<rect x="78.3" y="27.8" fill="#FFFFFF" width="4" height="31.3"></rect></svg>
					</div>
				</div>

				<p>Events</p>
			</li>
		</ul>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.13.2/TweenMax.min.js'></script>



	<script src="${APP_PATH}/static/js/icon_menu.js"></script>

	<div style="text-align: center; clear: both">
		<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
	</div>


</body>

</html>
