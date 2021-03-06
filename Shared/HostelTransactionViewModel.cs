﻿using System;
using System.ComponentModel.DataAnnotations;

namespace HostelManagement.Areas.HostelMessManagement.Models
{
    /// <summary>
    /// View model for hostel transactions
    /// </summary>
    public class HostelTransactionViewModel : DisplayStudentViewModel
    {

        public int id { get; set; }

        /// <summary>
        /// The border ID of the student
        /// </summary>
        [Required]
        [Display(Name ="Border ID")]
        public string bid { get; set; }

        /// <summary>
        /// The date of payment
        /// </summary>
        [Required]
        [Display(Name ="Date of Payment")]
        public DateTime dateOfPayment { get; set; } 

        /// <summary>
        /// The payment type that is, challan, NEFT and so on
        /// </summary>
        [Required]
        [Display(Name ="Payment Type")]
        public int paymentType { get; set; }

        /// <summary>
        /// The refrence number
        /// </summary>
        [Required]
        [Display(Name ="Reference Number")]
        public string referenceNumber { get; set; }

        /// <summary>
        /// The account head, that is, rent, fixed charges and so on
        /// </summary>
        [Required]
        [Display(Name ="Account Head")]
        public int acHead { get; set; }

        /// <summary>
        /// The name of the bank
        /// </summary>
        [Required]
        [Display(Name ="Bank Name")]
        public string bankName { get; set; }

        /// <summary>
        /// Academic year
        /// </summary>
        [Required]
        [Range(1000,9999)]
        [Display(Name ="Academic Year")]
        public int academicYear { get; set; }

        /// <summary>
        /// The amount being transacted
        /// </summary>
        [Required]
        [Range(1.0, Double.MaxValue)]
        [Display(Name ="Amount")]
        public decimal amount { get; set; }
    }
}