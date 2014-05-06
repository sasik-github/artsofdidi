<%-- 
    Document   : addingarts
    Created on : May 6, 2014, 2:00:02 PM
    Author     : sasik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>
 
<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Загрузка картинок</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="<%= BlobstoreServiceFactory.getBlobstoreService().createUploadUrl("/add") %>" method="post" enctype="multipart/form-data">
            <input type="file" name="myFile"/>
            <br />
            <input type="submit" value="Загрузить..."/>
        </form>
    </body>
</html>
