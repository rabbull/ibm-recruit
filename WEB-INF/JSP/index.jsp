<%@ page language="java" contentType="text/HTML; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<HTML>
    <head>
        <meta charset="utf-8">
        <title>
            IBM 俱乐部招新报名表
        </title>
        <style>
            table, td, th {
                font-family: 'Times New Roman', Times, serif;
                color: black;
                border: 1px solid black;
                border-collapse: collapse;
            }

            .title {
                width: 100px;
            }

            .subtitle {
                width: 60px;
            }

            button {
                width: 100px;
                margin-right: 59px;
                margin-top: 10px;
            }

            .header {
                font-family: 'Times New Roman', Times, serif;
                font-size: 20px;
                color: black;
            }
        </style>
    </head>

    <body>
        <div class="header">
            IBM俱乐部2018年度报名表
        </div>
        <form method="POST" action="signup.action">   <!-- <===================================== need to be completed -->
            <table>
                <th rowspan="7" class="title">基本信息</th>
                <tr>
                    <th class="subtitle">姓名</th>
                    <td class="basic_info">
                        <input type="text" name="username" required/>
                    </td>
                </tr>
                <tr>
                    <th class="subtitle">学号</th>
                    <td class="basic_info">
                            <input type="text" name="stuid" required/>
                    </td>
                </tr>
                <tr>
                    <th class="subtitle">年级</th>
                    <td class="basic_info">
                            <input type="text" name="session" required/>
                    </td>
                </tr>
                <tr>
                    <th class="subtitle">学院</th>
                    <td class="basic_info">
                            <input type="text" name="college" required/>
                    </td>
                </tr>
                <tr>
                    <th class="subtitle">专业</th>
                    <td class="basic_info">
                            <input type="text" name="profession" required/>
                    </td>
                </tr>
                <tr>
                    <th class="subtitle">手机</th>
                    <td class="basic_info">
                            <input type="text" name="tel" required/>
                    </td>
                </tr>
                <tr>
                    <th class="title">自我介绍</th>
                    <td colspan="2">
                        <textarea type="text"
                            name="selfintro"
                            maxlength="4096"
                            cols="30"
                            rows="6"
                            placeholder="内容要求：包括但不仅限于加入社团的目的、与社团活动方向相关的个人长短期目标&#10;长度要求：200字以内"
                            style="overflow:scroll; overflow-y:hidden; overflow-x:hidden"
                            <%--onfocus="--%>
                                <%--window.activeobj=this;--%>
                                <%--this.clock=setInterval(() => {--%>
                                    <%--activeobj.style.height=activeobj.scrollHeight+'px'--%>
                                <%--}, 200);"--%
                                  required ></textarea>
                    </td>
                </tr>
                <tr>
                    <th class="title">期望职位</th>
                    <td colspan="2">
                        <input type="checkbox" name="publicity"> 宣传部<br />
                        <input type="checkbox" name="office"> 办公室<br />
                        <input type="checkbox" name="technology"> 技术部<br />
                    </td>
                </tr>
            </table>
            <button type="submit" name="submit" value="submit">提交</button>
        </form>
    </body>
</HTML>

<%-- <script>
    setInterval(() => {
        window.location.reload();
    }, 500);
</script> --%
--%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Sign Up Form</title>
	
	<!-- on debug -->
	<!-- <meta http-equiv="refresh" content="5"> -->

	<style>
	*, *:before, *:after {
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
	}

	body {
		font-family: 'Nunito', sans-serif;
		color: #384047;
	}

	form {
		max-width: 300px;
		margin: 10px auto;
		padding: 10px 20px;
		background: #f4f7f8;
		border-radius: 8px;
	}

	h1 {
		margin: 0 0 30px 0;
		text-align: center;
	}

	input[type="text"],
	input[type="password"],
	input[type="date"],
	input[type="datetime"],
	input[type="email"],
	input[type="number"],
	input[type="search"],
	input[type="tel"],
	input[type="time"],
	input[type="url"],
	textarea,
	select {
		background: rgba(255,255,255,0.1);
		border: none;
		font-size: 16px;
		height: auto;
		margin: 0;
