namespace CRM_Project.Models
{
    public class Orders
    {
        public int? CustomerId { get; set; }
        public string? Name { get; set; }
        public string? SurName { get; set; }
        public string? LastName { get; set; }
        public string? Email { get; set; }
        public string? PhoneNumber { get; set; }
        public string? OrderName { get; set; }
        public string? DispatchAdress { get; set; }
        public string? TargetAdress { get; set; }
        public string? Weight { get; set; }
        public string? SendingProduct { get; set; }
        public string? Status { get; set; }
        public string? Message { get; set; }

    }
}
