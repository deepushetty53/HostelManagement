//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HostelManagement.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class HostelBill
    {
        public string bid { get; set; }
        public Nullable<decimal> amount { get; set; }
        public Nullable<int> year { get; set; }
        public string descr { get; set; }
        public int id { get; set; }
    
        public virtual Student Student { get; set; }
    }
}
