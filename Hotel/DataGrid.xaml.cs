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
using System.Windows.Shapes;
namespace Hotel
{
    public partial class DataGrid : Window
    {
        public DataGrid()
        {
            InitializeComponent();
            using (ApplicationContext context = new ApplicationContext())
            {
                DGridRoom.ItemsSource = context.Hotel_room.ToList();
            }
        }

        private void DGridTable_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                AddEditPage taskWindow = new AddEditPage((sender as Button).DataContext as Hotel_room);
                taskWindow.Show();
                this.Close();
            }
        }


        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddEditPage taskWindow = new AddEditPage(null);
            taskWindow.Show();
            this.Close();
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                var TableDel = DGridRoom.SelectedItems.Cast<Hotel_room>().ToList();
                {
                    if (MessageBox.Show("удалить?", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        db.Hotel_room.RemoveRange(TableDel);
                        db.SaveChanges();
                        DGridRoom.ItemsSource = db.Hotel_room.ToList();
                    }
                }
            }
        }
    }
}
