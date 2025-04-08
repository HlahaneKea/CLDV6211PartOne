using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EventEase1.Models;

public class Event
{
    public int EventId { get; set; }

    [Required]
    public string EventName { get; set; }

    [Required]
    [DataType(DataType.DateTime)]
    public DateTime EventDate { get; set; }

    public string Description { get; set; }

    public string ImageUrl { get; set; }

    [Required]
    public int VenueId { get; set; }

    public Venue Venue { get; set; }

    public virtual ICollection<Booking> Bookings { get; set; } = new List<Booking>();

}
