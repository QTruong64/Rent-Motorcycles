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
    
    public partial class rent
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public rent()
        {
            this.bills = new HashSet<bill>();
            this.rentDetails = new HashSet<rentDetail>();
        }
    
        public int id_rent { get; set; }
        public string note { get; set; }
        public string name { get; set; }
        public string phone { get; set; }
        public string mail { get; set; }
        public Nullable<System.DateTime> date { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<bill> bills { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<rentDetail> rentDetails { get; set; }
    }
}
