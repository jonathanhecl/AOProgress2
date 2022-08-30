VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5085
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4620
   LinkTopic       =   "Form1"
   ScaleHeight     =   5085
   ScaleWidth      =   4620
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "+"
      Height          =   495
      Left            =   2400
      TabIndex        =   3
      Top             =   1440
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "-"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   1440
      Width           =   1935
   End
   Begin Proyecto1.uAOProgress uAOProgress 
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   960
      Width           =   3615
      _extentx        =   2143
      _extenty        =   661
      max             =   200
      mindanger       =   50
      value           =   100
      backgroundcolor =   65535
      backgrounddangercolor=   16777215
      backcolor       =   192
      backaddcolor    =   49152
      backdangercolor =   8421631
      backsubcolor    =   128
      bordercolor     =   16711935
      showtext        =   0   'False
      showshadow      =   0   'False
      backgroundimage =   "Form1.frx":0000
      font            =   "Form1.frx":24BE
   End
   Begin VB.CommandButton Command 
      Caption         =   "rnd"
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   2040
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub ProgressBar_GotFocus()

End Sub

Private Sub Command_Click()
    uAOProgress.Value = Val(Rnd(1) * 100)
End Sub

Private Sub Command1_Click()
    uAOProgress.Value = uAOProgress.Value / 2
End Sub

Private Sub Command2_Click()
    uAOProgress.Value = uAOProgress.Value + (uAOProgress.Value / 2)
End Sub

