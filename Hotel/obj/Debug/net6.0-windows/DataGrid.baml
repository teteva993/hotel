   M S B A M L   `   `   `  ����@  <Hotel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:HotelHotel  5   	       Hotel.DataGrid   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Hotel     5   	     � Title$  DataGrid��5      $	��530��6   $	��820��6!    � WindowStartupLocation$ CenterScreen=�6-    � 	Resources 5	         FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground �� 
TargetType	 �� 
TargetType
 ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	        &	 �     &	 �     &	 �     &	     &	 ?    &	 b    &	 �    &	 �    &		 �    '�� �    7   7  7  7  7  7  7  7  7  7 	 �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E   $
 true��6�   $��1��6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2E5C7F��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 1q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      "	 ��6&   .R�5(      �� $
 border��6!   #��z��61   $ 20��6[   #��z��6m   #��z��6�   $
 true��6�   ._�5)      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5*       5+      P� 5,       �@��IsDefaulted$
 true��6=   . �5-   "   �� $ border��6@   # � ��6T    � ��5.      P� 5/       �@J�IsMouseOver$
 true��6=   . �50   "   �� $ border��6?   8   � ��6S   �� 51   "   $ border��6@   8   � ��6T   52      P� 53       � ��$
 true��6;   . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {�$ false��6;   . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8 	  � ��6i   5;      5=      5?      5@      5A      .��5B      N� $��0,0,0,-6q�6   .��5C   
   � $	��520��6   $��Center=�6   ���	#FFBF91F1 � RowDefinitions 5D      �� 5E      $
��380* �6    �� 5F      $	��90* �6    .+�5H      &   System.Windows.Controls.DataGrid  -   5          Name$ 	DGridRoom��5H         AutoGenerateColumns$ False��6*      
IsReadOnly$
 True��6F   
�������$��0,5,0,95q�6�   $��2��6�      Columns 5I      0  *System.Windows.Controls.DataGridTextColumn  5J      ,  &System.Windows.Controls.DataGridColumn   Header$ idRoom��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ 60 6U   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *	id_room+6b     5K      $ idUser��6)   $ 60 6U    69   �� *	id_user+6b     5L      $ price��6)   $	 200 6R    68   �� *price+6`     5M      $ floor��6)   $	 200 6R    68   �� *floor+6`     5N      $ description��6)   $	 200 6^    6>   �� *description+6l     5O      $ TypeRoom��6)   $	 200 6Y    6;   �� *	type_room+6g   4  .System.Windows.Controls.DataGridTemplateColumn  5P      $
 auto 6-      CellTemplate 5Q      �� 5R      .R�5S   "   �� $��BtnEdit��6Y   -   5        $ ��Редактировать��5S   )   $	��100��6A   $��30��6M   6�   5T      5V      5X      �� 5Y      -   5         ��Name$ 	BtnDelete��5Y   P   $��Удалить��6   $
��Left=�6'   $��1��6B   $	��192��6c   $��37��6o   $��588,23,0,38q�6{   
���   ����	#FF171313$��18(�6�   $��Dubai Medium)�6�   
�������6�   �� 5Z      -   5        $ BtnAdd��5Z   Q   $��Добавить��6   $
��Left=�6(   $��1��6C   $	��192��6b   $��37��6n   $��
30,22,0,39q�6z   
�������
�������$��18(�6�   $��Dubai Medium)�6�   
���   �6�   5[      5\      5]      