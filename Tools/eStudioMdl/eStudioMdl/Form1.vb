
Public Class Form1
    Public xbox As Boolean
    Public sfmpath As String
    Public hl2path As String
    Public qcpath As String
    Public gamepath As String
    Public appath As String
    Dim tempconsole As String


    Function compileQC(ByVal studiomdlversion As String)
        Dim studiomdlpath As String
        Dim argumentst As String
        Dim xboxtarget As String
        'if studiomdl target (specified by arguments) is sfm then we set studiomdl path to sfm
        If studiomdlversion = "sfm" Then
            studiomdlpath = sfmpath

        End If
        'if hl2 is target then use it
        If studiomdlversion = "Hl2" Then
            studiomdlpath = hl2path
        End If
        'if xbox is checked then we decide wether to include xbox parameter or not
        If xbox = True Then
            'no need to run any special argument, since studiomdl compiles xbox by default
            xboxtarget = ""
        End If
        'same for noxbox
        If xbox = False Then
            xboxtarget = "-noxbox"
        End If

        'build the path
        argumentst = xboxtarget & " " & "-game" & " " & gamepath & " " & qcpath

        'run the process
        Dim runprocess As New Process()
        Try

            runprocess.StartInfo.FileName = studiomdlpath
            runprocess.StartInfo.UseShellExecute = False
            runprocess.StartInfo.Arguments = argumentst
            runprocess.StartInfo.CreateNoWindow = False
            runprocess.StartInfo.RedirectStandardOutput = True
            runprocess.Start()
            runprocess.WaitForExit()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        ConsoleOut.Text = runprocess.StandardOutput.ReadToEnd

        Dim FileEx As String = runprocess.StandardOutput.ReadToEnd



        If FileEx.Contains("ERROR") Or FileEx.Contains("Error") Then
            MsgBox("Error Happened")
        Else
            MsgBox("Non errors hapenned")
        End If


    End Function
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles Me.Load
        '??????
        appath = Application.StartupPath
        tempconsole = appath & "/temp.txt"
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Some tests before running studiomdl running function in sfm mode
        Dim sfmtest As Boolean
        Dim qctest As Boolean
        'Check if all the paths are OK, we don't want to launch a broken command
        If Not qcpath = "" Then
            qctest = True
        Else
            MsgBox("Oops! Qc Path is empty")
            Exit Sub
        End If
        If Not sfmpath = "" Then
            sfmtest = True
        Else
            MsgBox("Oops! Sfm studiomdl path is empty")
            Exit Sub
        End If
        If sfmtest And qctest = True Then
            MsgBox("Both tests passed!")
            compileQC("sfm")
        End If





    End Sub


    Private Sub SetSFMStudiomdlPathToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SetSFMStudiomdlPathToolStripMenuItem.Click
        'Studiomdl selection
        OpenFileDialog1.Filter = "exe files (*.exe)|*.exe"
        OpenFileDialog1.ShowDialog()
        sfmpath = Chr(34) & OpenFileDialog1.FileName & Chr(34)
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        'Xbox check
        If CheckBox1.CheckState = CheckState.Indeterminate Then
            xbox = True
        End If
        If CheckBox1.CheckState = CheckState.Unchecked Then
            xbox = False
        End If
    End Sub

    Private Sub ChooseQCToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ChooseQCToolStripMenuItem.Click
        'Build Qc path based on user input and add quotation marks
        Dim opendialogqc As New OpenFileDialog
        opendialogqc.Filter = "Valve QC Files (*.qc)|*.qc"
        opendialogqc.ShowDialog()
        Try
            qcpath = Chr(34) & opendialogqc.FileName & Chr(34)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub SetGamepathToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SetGamepathToolStripMenuItem.Click
        ' here we build the gamefolder path
        Dim openfoldergame As New FolderBrowserDialog

        openfoldergame.ShowDialog()

        gamepath = Chr(34) & openfoldergame.SelectedPath & Chr(34)

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'Some tests before running studiomdl running function in sfm mode
        Dim sfmtest As Boolean
        Dim qctest As Boolean
        'Check if all the paths are OK, we don't want to launch a broken command
        If Not qcpath = "" Then
            qctest = True
        Else
            MsgBox("Oops! Qc Path is empty")
            Exit Sub
        End If
        If Not hl2path = "" Then
            sfmtest = True
        Else
            MsgBox("Oops! Sfm studiomdl path is empty")
            Exit Sub
        End If
        If sfmtest And qctest = True Then
            MsgBox("Both tests passed!")
            compileQC("Hl2")
        End If

    End Sub

    Private Sub SetSteamPipeSourceSDKStudiomdlPathToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SetSteamPipeSourceSDKStudiomdlPathToolStripMenuItem.Click
        Dim opensteampipe As New OpenFileDialog
        opensteampipe.Filter = "exe files (*.exe)|*.exe"
        opensteampipe.ShowDialog()
        hl2path = opensteampipe.FileName
    End Sub
End Class
