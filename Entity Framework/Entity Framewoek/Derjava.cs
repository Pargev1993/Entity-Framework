//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Entity_Framewoek
{
    using System;
    using System.Collections.Generic;
    
    public partial class Derjava
    {
        public int Id { get; set; }
        public string ExecutiveDirector { get; set; }
        public string ACCOUNTANT { get; set; }
        public int YerevanMallKFCId { get; set; }
        public int DalmaMallKFCId { get; set; }
        public int KomitasKFCId { get; set; }
        public int MoskovyanKFCId { get; set; }
        public int RIOKFCId { get; set; }
    
        public virtual YerevanMallKFC YerevanMallKFC { get; set; }
        public virtual DalmaMallKFC DalmaMallKFC { get; set; }
        public virtual MoskovyanKFC MoskovyanKFC { get; set; }
        public virtual RIOKFC RIOKFC { get; set; }
        public virtual KomitasKFC KomitasKFC { get; set; }
    }
}
