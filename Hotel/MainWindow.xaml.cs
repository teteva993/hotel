using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace Hotel
{

    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                var currentUser = db.User.FirstOrDefault(p => p.login == Login.Text && p.password == Password.Password);

                if (currentUser != null)
                {
                    if (currentUser.type_user == "Admin" || currentUser.type_user == "admin" || currentUser.type_user == "Administrator" || currentUser.type_user == "administrator"
                        || currentUser.type_user == "Админ" || currentUser.type_user == "Администратор" || currentUser.type_user == "админ" || currentUser.type_user == "администратор")
                    {
                        DataGrid task = new DataGrid();
                        task.Show();
                        this.Close();
                    }
                                                                                                    
                    else
                    {
                        ListView task = new ListView();
                        task.Show();
                        this.Close();
                    }
                }
            }
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Registration registration = new Registration();
            registration.Show();
            this.Close();
        }

    }
}

    