//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ThueXeMay.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;

    public partial class employee
    {
        
        public int id_employee { get; set; }
        [DisplayName("Tài khoản")]
        public string account { get; set; }
        [DisplayName("Mật khẩu")]
        public string pass { get; set; }
        [DisplayName("Tên")]
        public string name { get; set; }
        [DisplayName("Toàn quyền")]
        public Nullable<bool> fulControl { get; set; }
    }
}
