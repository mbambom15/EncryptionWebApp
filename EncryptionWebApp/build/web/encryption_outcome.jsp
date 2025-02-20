<%-- 
    Document   : encryption_outcome
    Created on : 19 Feb 2025, 11:34:34 PM
    Author     : nhlak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome page.</title>
    </head>
    <body>
        <h1>Find your encrypted message below here: </h1>
        <%
            String message = request.getParameter("message");
            String lowercase_mes = message.toLowerCase();
            String cipher_text = "";
            int ascii_value = 0;
            int new_ascii_value = 0;
            for (int x = 0; x < lowercase_mes.length(); x++) {
                char ch = lowercase_mes.charAt(x);
                if (Character.isLetter(ch)) {
                    ascii_value = (int) ch;
                    new_ascii_value = ascii_value + 3;
                    
                    if(new_ascii_value > 122){
                        new_ascii_value = 96 + (new_ascii_value - 122);
                    }
                    char ch_encrypt = (char)new_ascii_value;
                    cipher_text += ch_encrypt;

                } else {
                    cipher_text += ch;
                }

            }
        %>

        <p>
            The encrypted message is : <%=cipher_text%>
        </p>

        <p>
            To go back home. Click <a href="index.html">here</a>
        </p>
    </body>
</html>
