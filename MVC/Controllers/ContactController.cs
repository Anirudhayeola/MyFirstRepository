using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC.Models;
using System.Net.Http;

namespace MVC.Controllers
{
    public class ContactController : Controller
    {
        // GET: Contact
        [HttpGet]
       public ActionResult Contactlist()
        {
            IEnumerable<MvcEmployeeModel> prsnlist;
            HttpResponseMessage Response = GlobalVariables.WebApiClient.GetAsync("Employee").Result;
            prsnlist = Response.Content.ReadAsAsync<IEnumerable<MvcEmployeeModel>>().Result;
            return View(prsnlist);
        }

        [HttpGet]
        public ActionResult AddOrEdit(int id = 0)
        {
            if(id == 0)
                return View(new MvcEmployeeModel());
            else
            {
                HttpResponseMessage response = GlobalVariables.WebApiClient.GetAsync("Employee/" + id.ToString()).Result;
                return View(response.Content.ReadAsAsync<MvcEmployeeModel>().Result);
            }
        }

        [HttpPost]
        public ActionResult AddOrEdit(MvcEmployeeModel prn)
        {
            // Insert Functionality
            if (prn.Id == 0)
            {
                HttpResponseMessage Response = GlobalVariables.WebApiClient.PostAsJsonAsync("Employee", prn).Result;
                TempData["SuccessMessage"] = "Saved Successfully";
            }
            // Update Functionality
            else
            {
                HttpResponseMessage Response = GlobalVariables.WebApiClient.PutAsJsonAsync("Employee/" + prn.Id, prn).Result;
                TempData["SuccessMessage"] = "Updated Successfully";
            }
            return RedirectToAction("Contactlist");
        }

       
        public ActionResult Remove(int id)
        {
            HttpResponseMessage response = GlobalVariables.WebApiClient.DeleteAsync("Employee/" + id.ToString()).Result;
            TempData["SuccessMessage"] = "Deleted Successfully";
            return RedirectToAction("Contactlist");
        }   
    }
}
