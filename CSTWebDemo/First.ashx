<%@ WebHandler Language="C#" Class="First" %>

using System;
using System.Web;
using System.Text;

public class First : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";
        //context.Response.Write("Hello World, this is my first web page");

        StringBuilder sb = new StringBuilder();

            sb.Append("<table border=1> <tr><td>CST College</td> <td>student Name </td></tr> ");
            sb.Append("<tr><td>No.1</td><td>Tom</td></tr>");
            sb.Append("<tr><td>No.2</td><td>Tom2</td></tr>");
            sb.Append("<tr><td>No.3</td><td>Jerry</td></tr></table>");
            context.Response.Write(sb.ToString());



    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}