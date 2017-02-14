VERSION 5.00
Begin VB.Form frmSizableToolWindow 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "BorderStyle = 5 - Sizable ToolWindow"
   ClientHeight    =   2085
   ClientLeft      =   2385
   ClientTop       =   6930
   ClientWidth     =   5610
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2085
   ScaleWidth      =   5610
   ShowInTaskbar   =   0   'False
   Begin VB.Label lblNone 
      Caption         =   "5 - Sizable ToolWindow - The Form has the title bar and the button close with a smaller X. Can be resized."
      Height          =   855
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   5355
   End
   Begin VB.Label lblNone 
      Caption         =   "5 - Sizable ToolWindow - O Formulário possui a barra de titulo e o botão fechar com um X menor. Pode ser redimensionado."
      Height          =   855
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5355
   End
End
Attribute VB_Name = "frmSizableToolWindow"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Dim objRemoveMenu As New clsRemoveMenu
    '// desabilita o botão fechar
    If blnFechaGlobal Then _
        objRemoveMenu.RemoveMenus (Me.hWnd)
End Sub


