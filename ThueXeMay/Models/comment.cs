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
    
    public partial class comment
    {
        public int id_cmt { get; set; }
        public Nullable<int> id { get; set; }
        public string name { get; set; }
        public string content { get; set; }
        public Nullable<System.DateTime> date { get; set; }
    
        public virtual blog blogs { get; set; }
    }
}
