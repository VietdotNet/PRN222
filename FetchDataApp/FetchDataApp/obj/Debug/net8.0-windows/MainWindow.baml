   M S B A M L   `   `   `  ����G  CFetchDataApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:FetchDataAppFetchDataApp  5   	       FetchDataApp.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:FetchDataApp     5   	     � Title$  Fetch Data App��5	   	   $	��350��6    $	��600��6-   .��5
      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� -   5         ��Name$ 
UrlTextBox��5      $��0��6&   $��0,0,0,10q�63   $��30��6E    � ToolTip$ Enter URL here...��6Q   �� 5   
   -   5        $ ContentTextBox��5      $��1��6*   $��0,0,0,10q�67    �� TextWrapping$
 Wrap=�6I   " �� VerticalScrollBarVisibility$
 Auto=�6]    �� 
IsReadOnly$
 True��6�   �� 5   
   $��2��6    �� Orientation$ 
Horizontal=�6"   $��Right=�6;   .+�5      �� -   5        $��
Fetch Data��5      $	��100��6*   $��0,0,10,0q�6T   �� 5      -   5        $��Clear��5      $	��100��6%   $��0,0,10,0q�6K   �� 5      -   5        $��Close��5      $	��100��6%   61   5      5      5      