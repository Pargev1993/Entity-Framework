﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CodeFirstDBFirst
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class FIFAdbEntities : DbContext
    {
        public FIFAdbEntities()
            : base("name=FIFAdbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Footballist> Footballists { get; set; }
        public virtual DbSet<Game> Games { get; set; }
        public virtual DbSet<Trainer> Trainers { get; set; }
        public virtual DbSet<Referee> Referees { get; set; }
    }
}