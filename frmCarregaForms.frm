VERSION 5.00
Begin VB.Form frmCarregaForms 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Carrega e Fecha Forms"
   ClientHeight    =   1410
   ClientLeft      =   1140
   ClientTop       =   2250
   ClientWidth     =   4005
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1410
   ScaleWidth      =   4005
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "N�O funciona - Does not work"
      Height          =   495
      Left            =   2640
      TabIndex        =   4
      Top             =   780
      Width           =   1215
   End
   Begin VB.CheckBox chkRetiraBotaofechar 
      Caption         =   "Retirar Bot�o Fechar 'X' - Remove Close Button 'X'"
      Height          =   435
      Left            =   180
      TabIndex        =   3
      Top             =   840
      Value           =   1  'Checked
      Width           =   2115
   End
   Begin VB.CommandButton cmdSaida 
      Cancel          =   -1  'True
      Caption         =   "&Sa�da - Exit"
      Height          =   495
      Left            =   2640
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton cmdCarregaTudo 
      Caption         =   "&Carrega Tudo - Load All"
      Default         =   -1  'True
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton cmdFechaTudo 
      Caption         =   "&Fecha Tudo - Close All"
      Height          =   495
      Left            =   1380
      TabIndex        =   1
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "frmCarregaForms"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'VEJA MAIS EM: - SEE MORE AT: _
    "http://www.macoratti.net/vb_forms.htm"

Private Sub chkRetiraBotaofechar_Click()
    '// Desabilita o bot�o fechar
    '// Disable close button
    blnFechaGlobal = chkRetiraBotaofechar
    cmdFechaTudo_Click
End Sub

'ESTE BOT�O N�O FUNCIONA!
'THIS BUTTON DOES NOT WORK!
Private Sub Command1_Click()
    frmSizable.BorderStyle = 0
    DoEvents
End Sub

Private Sub cmdCarregaTudo_Click()
    'O "Load" carrega na mem�ria, mas n�o mostra.
    'The "Load" loads into memory, but does not show.
    Load frmNone
    Load frmFixedSigle
    Load frmSizable
    Load frmFixedDialog
    Load frmFixedToolWindow
    Load frmSizableToolWindow
    'O "Show" carrega da mem�ria e mostra na tela.
    'The "Show" loads from memory and shows on the screen.
    frmNone.Show
    frmFixedSigle.Show
    frmSizable.Show
    frmFixedDialog.Show
    frmFixedToolWindow.Show
    frmSizableToolWindow.Show
End Sub

Private Sub cmdFechaTudo_Click()

    'O "Hide" esconde, mas n�o descarrega da mem�ria.
    'The "Hide" hides, but does not unload from memory.
    'Object.Hide - Quando um formul�rio � escondido ( Hide ) ele � removido da tela e sua propriedade Visible � definida como False. Os controles de um formul�rio escondido n�o est�o acess�veis ao usu�rio , mas, est�o dispon�veis para a aplica��o que esta sendo executada.
    'Object.Hide - When a form is hidden (Hide) it is removed from the screen and its Visible property is set to False. The controls on a hidden form are not accessible to the user, but are available to the application that is running.
    frmNone.Hide
    frmFixedSigle.Hide
    frmSizable.Hide
    frmFixedDialog.Hide
    frmFixedToolWindow.Hide
    frmSizableToolWindow.Hide
    'O "Unload" descarrega na mem�ria, e retira da tela.
    Unload frmNone
    Unload frmFixedSigle
    Unload frmSizable
    Unload frmFixedDialog
    Unload frmFixedToolWindow
    Unload frmSizableToolWindow
End Sub

Private Sub Form_Load()
Dim objRemoveMenu As New clsRemoveMenu
    '// Desabilita o bot�o fechar
    '// Disable close button
    objRemoveMenu.RemoveMenus Me.hWnd
    'Atualiza vari�vel global
    'Refresh global variable
    chkRetiraBotaofechar_Click
End Sub

Private Sub cmdSaida_Click()
    cmdFechaTudo_Click
    Unload Me
End Sub
