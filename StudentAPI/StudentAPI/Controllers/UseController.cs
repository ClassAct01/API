using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StudentAPI.Models;
using System.Dynamic;
using System.Data.Entity;
using System.Web.Http;

namespace StudentAPI.Controllers
{
    public class UseController : ApiController
    {
        StudentEntities db = new StudentEntities();
        // GET: Use
        [System.Web.Http.Route("api/Use/getStudent")]
        [System.Web.Http.HttpGet]
        public List<dynamic> getStudent()
        {
            List<dynamic> student = new List<dynamic>();

            foreach (Student stu in db.Students)
            {
                dynamic obj = new ExpandoObject();
                obj.ID = stu.StudentID;
                obj.Name = stu.StudentName;
                obj.Surname = stu.StudentSurname;
                student.Add(obj);
            }

            return student;

        }
    }
}