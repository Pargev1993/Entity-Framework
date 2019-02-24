

namespace CodeFirstDBFirst
{
    using System;
    using System.Collections.Generic;
    
    public partial class Referee
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Referee()
        {
            this.Games = new HashSet<Game>();
        }
    
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string Experiance { get; set; }
        public string Isfair { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Game> Games { get; set; }
    }
}
