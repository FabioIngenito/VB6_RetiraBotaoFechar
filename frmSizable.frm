VERSION 5.00
Begin VB.Form frmSizable 
   Caption         =   "BorderStyle = 2 - Sizable"
   ClientHeight    =   2085
   ClientLeft      =   2325
   ClientTop       =   4080
   ClientWidth     =   5610
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   2085
   ScaleWidth      =   5610
   Begin VB.Label lblNone 
      Caption         =   $"frmSizable.frx":0000
      Height          =   855
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   5355
   End
   Begin VB.Label lblNone 
      Caption         =   $"frmSizable.frx":0089
      Height          =   855
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5355
   End
End
Attribute VB_Name = "frmSizable"
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
