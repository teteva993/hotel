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
    public partial class AddEditPage : Window


    {
        private Hotel_room table = new Hotel_room();
        public AddEditPage(Hotel_room selectedTable)
        {
            InitializeComponent();

            if (selectedTable != null)
            {
                table = selectedTable;
            }
            DataContext = table;
        }


        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                Hotel_room table = DataContext as Hotel_room;
                if (table != null)
                {
                    db.Hotel_room.Update(table);
                    db.SaveChanges();
                    MessageBox.Show("Сохранено");
                    DataGrid win = new DataGrid();
                    win.Show();
                    this.Close();
                }
            }
        }
        private void BtnCancel2_Click(object sender, RoutedEventArgs e)
        {
            DataGrid task = new DataGrid();
            task.Show();
            this.Close();
        }
    }
}
