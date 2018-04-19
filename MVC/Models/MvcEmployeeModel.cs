using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MVC.Models
{
    public class MvcEmployeeModel
    {
        public int Id { get; set; }
        [Display(Name = "First Name")]
        [Required(ErrorMessage = "Please Enter First Name")]
        public string First_Name { get; set; }
        [Display(Name = "Last Name")]
        [Required(ErrorMessage = "Please Enter Last Name")]
        public string Last_Name { get; set; }
        [Required(ErrorMessage = "Please Enter Email")]
        [RegularExpression(@"[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}",ErrorMessage = "Please Enter Valid Email")]
        public string Email { get; set; }
        [Display(Name = "Phone Number")]
        [Required(ErrorMessage = "Please Enter Phone Number")]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$",ErrorMessage = "Please Enter Valid Phone Number")]
        public string Phone_Number { get; set; }
        [Required(ErrorMessage = "Please Select Status")]
        public string Status { get; set; }
    }
}