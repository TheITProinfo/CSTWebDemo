<%@ WebHandler Language="C#" Class="Show" %>

using System;
using System.Web;
using System.IO;

public class Show : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";
        //context.Response.Write("Hello World");
        // get file path
        string filePath = context.Request.MapPath("ShowInfo.html");
        // read content of the files

        string fileContent = File.ReadAllText(filePath);

        // replace the content

        fileContent = fileContent.Replace("$UserID", "123").Replace("$UserName","CstCollege");

        context.Response.Write(fileContent);







    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}