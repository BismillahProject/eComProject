//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CompanyProjectModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class T_SOSMED
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_SOSMED()
        {
            this.T_TEAM_SOSMED = new HashSet<T_TEAM_SOSMED>();
        }
    
        public int id { get; set; }
        public string sosmed_nm { get; set; }
        public string sosmed_desc { get; set; }
        public byte[] img { get; set; }
        public string class_prop { get; set; }
        public string created_by { get; set; }
        public System.DateTime created_dt { get; set; }
        public string last_modified_by { get; set; }
        public Nullable<System.DateTime> last_modified_dt { get; set; }
        public bool row_status { get; set; }
        public System.TimeSpan time_span { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_TEAM_SOSMED> T_TEAM_SOSMED { get; set; }
    }
}