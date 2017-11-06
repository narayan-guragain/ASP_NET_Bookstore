namespace Term_Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Member
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MemberID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(30)]
        public string LastName { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(30)]
        public string FirstName { get; set; }

        [Key]
        [Column(Order = 3, TypeName = "date")]
        public DateTime MembershipDate { get; set; }
    }
}
