VERSION 5.00
Begin VB.Form frmFixedDialog 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "BorderStyle = 3 - Fixed Dialog"
   ClientHeight    =   2085
   ClientLeft      =   2430
   ClientTop       =   4980
   ClientWidth     =   5610
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2085
   ScaleWidth      =   5610
   ShowInTaskbar   =   0   'False
   Begin VB.Label lblNone 
      Caption         =   "3 - Fixed Dialog - Form with border, title bar and Close button. Can not be resized. Your icon is not displayed on the taskbar."
      Height          =   855
      Index           =   2
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   5355
   End
   Begin VB.Label lblNone 
      Caption         =   $"frmFixedDialog.frx":0000
      Height          =   855
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5355
   End
End
Attribute VB_Name = "frmFixedDialog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Dim objRemoveMenu As New clsRemoveMenu
    '// Desabilita o botão fechar
    '// Disable close button
    If blnFechaGlobal Then _
        objRemoveMenu.RemoveMenus (Me.hWnd)
End Sub


