<%@ page language="java" pageEncoding="UTF-8"%>
<table height="108" background="./static/img/banner.jpg" border="0"
	cellspacing="0" cellpadding="0" width="100%">

	<tr>
		<td></td>
		<td align="center"><h2>
				<font color="#FF0000">当前用户：<%=session.getAttribute("SESSION_USER")%></font></h2></td>
	</tr>
</table>