VERSION 5.00
Begin VB.Form frmFixedSigle 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BorderStyle = 1 - Fixed Single"
   ClientHeight    =   2085
   ClientLeft      =   2310
   ClientTop       =   3090
   ClientWidth     =   5610
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2085
   ScaleWidth      =   5610
   Begin VB.Label lblNone 
      Caption         =   $"frmFixedSigle.frx":0000
      Height          =   855
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   5355
   End
   Begin VB.Label lblNone 
      Caption         =   $"frmFixedSigle.frx":00BE
      Height          =   855
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5355
   End
End
Attribute VB_Name = "frmFixedSigle"
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



