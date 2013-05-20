object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FaceDetect and LockWorkstation'
  ClientHeight = 256
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LWFrameOutput: TPaintBox
    Left = 8
    Top = 8
    Width = 320
    Height = 240
  end
  object LWGBFaceDetectSettings: TGroupBox
    Left = 334
    Top = 8
    Width = 244
    Height = 209
    Caption = ' Face detect settings '
    TabOrder = 0
    object LTotalFaceDetect: TLabel
      Left = 11
      Top = 145
      Width = 86
      Height = 13
      Caption = 'Total face detect:'
    end
    object LTotalFace: TLabel
      Left = 101
      Top = 145
      Width = 6
      Height = 13
      Caption = '0'
    end
    object LWLTimerMS: TLabel
      Left = 190
      Top = 59
      Width = 13
      Height = 13
      Caption = 'ms'
      Enabled = False
    end
    object LWLWaitTime: TLabel
      Left = 11
      Top = 97
      Width = 52
      Height = 13
      Caption = 'Lock timer:'
    end
    object LWLWaitTimeMS: TLabel
      Left = 136
      Top = 97
      Width = 16
      Height = 13
      Caption = 'sec'
    end
    object LWLTotalPCLock: TLabel
      Left = 11
      Top = 168
      Width = 162
      Height = 13
      Caption = 'The computer was locked 0 times.'
    end
    object LWTimerRadioGroup: TRadioGroup
      Left = 11
      Top = 16
      Width = 209
      Height = 68
      Caption = ' Face detect '
      ItemIndex = 0
      Items.Strings = (
        'On application idle'
        'On timer')
      TabOrder = 0
      OnClick = LWTimerRadioGroupClick
    end
    object LWSpinEdit: TSpinEdit
      Left = 123
      Top = 56
      Width = 61
      Height = 22
      Enabled = False
      Increment = 100
      MaxValue = 10000
      MinValue = 1
      TabOrder = 1
      Value = 100
      OnChange = LWSpinEditChange
    end
    object LWSpinEditWaitTime: TSpinEdit
      Left = 69
      Top = 94
      Width = 61
      Height = 22
      MaxValue = 1200
      MinValue = 20
      TabOrder = 2
      Value = 120
      OnChange = LWSpinEditWaitTimeChange
    end
    object LWStopLockTimer: TCheckBox
      Left = 11
      Top = 122
      Width = 222
      Height = 17
      Caption = 'Stop the lock timer when the face detect'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object LWButtonStartStop: TButton
    Left = 334
    Top = 223
    Width = 123
    Height = 25
    Caption = 'Start face detect'
    TabOrder = 1
    OnClick = LWButtonStartStopClick
  end
  object LWButtonAbout: TButton
    Left = 463
    Top = 223
    Width = 115
    Height = 25
    Caption = 'About'
    TabOrder = 2
    OnClick = LWButtonAboutClick
  end
  object LWTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = LWTimerTimer
    Left = 160
    Top = 32
  end
  object LWPopupMenu: TPopupMenu
    Left = 104
    Top = 32
    object LWShow: TMenuItem
      Caption = 'Show'
      OnClick = LWCoolTrayIconDblClick
    end
    object LWExit: TMenuItem
      Caption = 'Exit'
      OnClick = LWExitClick
    end
  end
  object LWImageList: TImageList
    Left = 184
    Top = 112
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FEFEFE01F8F8F807EEEEEE11DDE4
      E526D0DBDE2FC8D2D537C2CBCD3DBDC5C842BDC6C942C1CACD3EC8D3D537D2DC
      DE2FDFE4E526EEEEEE11F8F8F807FEFEFE01FEFEFE01F8F8F807EFEFEF11DEE6
      E726D3DEE02FCCD6D937C7D0D33DC3CCCF42C3CDD042C6D0D33ECCD7D937D4DF
      E12FE1E6E626EEEFEF11F8F8F807FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F6F8FA0D61D6
      ECE41BCAF2F30CB5E3F30BA1D1F40B9ACBF40BA1D2F40BA8DBF40CBFEAF332E1
      FAF388DBE3E6F3F6F80FFFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F8FA0D61D6
      ECE41BCAF2F30CB6E4F30BA1D1F40B9BCBF40BA2D2F40BA9DBF40CBFEAF332E1
      FBF388DBE3E6F3F6F80FFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF011C9F3FF00B3E4FF019ED0FF0198CAFF019ED1FF01A5DAFF01BCEAFF29E1
      FBFF83DBE3F1F4F8F90EFFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF011C9F3FF00B3E4FF019ED0FF0198CAFF019ED1FF01A5DAFF01BCEAFF29E1
      FBFF83DBE3F1F4F8F90EFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF013C8F2FF03B2E1FF049DCDFF0497C7FF059ECEFF05A6D8FF03BBE8FF2ADF
      FAFF83DBE3F1F4F8F90EFFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF013C8F2FF03B2E1FF049DCDFF0497C7FF059ECEFF05A6D8FF03BBE8FF2ADF
      FAFF83DBE3F1F4F8F90EFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF012C8F2FF02B3E3FF029ECFFF0397C9FF039ED0FF03A7D8FF03BCE8FF2ADF
      F9FF83DAE2F1F4F8F90EFFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF012C8F2FF02B3E3FF029ECFFF0397C9FF039ED0FF03A7D8FF03BCE8FF2ADF
      F9FF83DAE2F1F4F8F90EFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF014C7F1FF04B3E2FF049ECEFF0597C9FF059FD0FF04A6D8FF04BBE8FF2BDF
      F9FF83DAE3F1F4F8F90EFFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF014C7F1FF04B3E2FF049ECEFF0597C9FF059FD0FF04A6D8FF04BBE8FF2BDF
      F9FF83DAE3F1F4F8F90EFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF013C7F1FF03B2E2FF039DCEFF0497C8FF049ECFFF04A6D7FF04BBE6FF2BDE
      F8FF83DAE2F1F4F8F90EFFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF013C7F1FF03B2E2FF039DCEFF0497C8FF049ECFFF04A6D7FF04BBE6FF2BDE
      F8FF83DAE2F1F4F8F90EFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF014C7F1FF04B3E1FF059ECEFF0697C8FF069ECFFF06A6D7FF05BBE7FF2BDF
      F9FF83DAE2F1F4F8F90EFFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F9FB0D5AD5
      ECF014C7F1FF04B3E1FF059ECEFF0697C8FF069ECFFF06A6D7FF05BBE7FF2BDF
      F9FF83DAE2F1F4F8F90EFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F7F9FB0C68D4
      EAE13CBCE1FE39A8CFF73796BDF02F89AFF02E8AB1F03496BFF037AACFF64BC9
      E4FF88D6E1E3F4F8F90EFFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F9FB0C68D4
      EAE13CBCE1FE39A8CFF73796BDF02F89AFF02E8AB1F03496BFF039ACD1F04FCD
      E8F088D6E1E3F4F8F90EFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7FB
      FD0CB1B4B6FDD6D9DA80F5F8FA0DF4F7F90DF4F7F90DF5F8FA0DCFD2D47DAEB1
      B3FFF7FBFC0EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FB
      FD0CB1B4B6FDD6D9DA80F5F8FA0DF4F7F90DF4F7F90DF5F8FA0DF6F9FB0DF7FA
      FC0DF8FBFC0CFFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B1B1B1FDD4D4D479FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFCFCF76B1B1
      B1FEFEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B1B1B1FDD4D4D479FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AFAFAFFCCBCBCB7BFFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9C978B1B1
      B1FEFEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AFAFAFFCCBCBCB7BFFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDCDC3EC6C6
      C680FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBDDCB7B7B7B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0B0B0B5C7C7
      C7DEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBDDCB8B8B8B6FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0B0B0B5C7C7
      C7DEFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DFDFDF72ABABABFED1D1D187F7F7F715F6F6F614CACACA85A0A0A0FDE8E8
      E874FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DFDFDF72ABABABFED1D1D187F7F7F715F6F6F614CACACA86A0A0A0FDE8E8
      E874FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD04D7D7D798B3B3B3FCAAAAAAFEA9A9A9FEB1B1B1FCDBDBDB99FEFE
      FE04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD04D7D7D798B4B4B4FCAAAAAAFEA8A8A8FEB0B0B0FCDBDBDB99FEFE
      FE04FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF35E2E2E272E2E2E272EDEDED35FEFEFE01FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F0F035E2E2E272E2E2E272EDEDED35FEFEFE01FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object LWThreadTimer: TJvThreadTimer
    Interval = 5000
    OnTimer = LWThreadTimerTimer
    Left = 48
    Top = 112
  end
  object LWJVTrayIcon: TJvTrayIcon
    Active = True
    IconIndex = 0
    Icons = LWImageList
    PopupMenu = LWPopupMenu
    Left = 116
    Top = 112
  end
end
