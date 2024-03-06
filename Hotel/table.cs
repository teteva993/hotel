using System.ComponentModel.DataAnnotations;
using System.Data.Common;
using System.Security.Cryptography.X509Certificates;
namespace Hotel
{
    public class User
    {
        [Key]
        public int id_user { get; set; }
        public string? login { get; set; }
        public string? password { get; set; }
        public string? type_user { get; set; }
        public static User? currentUser { get; set; }
    }
    public class Hotel_room
    {
        [Key]
        public int id_room { get; set; }
        public int id_user { get; set; }
        public int? price { get; set; }
        public int? floor { get; set; }
        public string? description { get; set; }
        public string? type_room { get; set; }
        public static Hotel_room? currentRoom{ get; set; }
    }
}
