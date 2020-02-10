<%-- 
    Document   : DAO_votePoll
    Author     : Kunal & Pratik
    Created on : 23 Jun, 2017, 9:06:39 PM
--%>

<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="bean.Person"%>
<%@page import="angle_group.AngleUtility"%>
<%
    try 
    {
        String userId=request.getParameter("userId");
        String optionId=request.getParameter("optionid");
        String pollId=request.getParameter("pid");
        
        AngleUtility utility = new AngleUtility();
        int result=utility.votePoll(Integer.parseInt(pollId), Integer.parseInt(optionId), Integer.parseInt(userId));
        Gson gson = new Gson();
        out.println(gson.toJson(result));
    } catch (Exception c) {
        c.printStackTrace();
    }

%>