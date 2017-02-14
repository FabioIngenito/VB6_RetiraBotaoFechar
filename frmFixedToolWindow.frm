VERSION 5.00
Begin VB.Form frmFixedToolWindow 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "BorderStyle = 4 - Fixed ToolWindow"
   ClientHeight    =   2085
   ClientLeft      =   2280
   ClientTop       =   6000
   ClientWidth     =   5610
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2085
   ScaleWidth      =   5610
   ShowInTaskbar   =   0   'False
   Begin VB.Label lblNone 
      Caption         =   "4 - Fixed ToolWindow - The Form has the title bar and the button close with a smaller X. Can not be resized."
      Height          =   855
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   5355
   End
   Begin VB.Label lblNone 
      Caption         =   "4 - Fixed ToolWindow - O Formulário possui a barra de titulo e o botão fechar com um X menor. Não pode ser redimensionado. "
      Height          =   855
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5355
   End
End
Attribute VB_Name = "frmFixedToolWindow"
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


