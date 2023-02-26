import winreg
import ctypes
from sys import exit



key_path = r'SYSTEM\CurrentControlSet\Control\Keyboard Layout'
key_name = 'Scancode Map'
key_data = b'\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00d\x00:\x00\x00\x00\x00\x00'

# 管理者権限確認
def check_Administrator_authority():
    is_admin = ctypes.windll.shell32.IsUserAnAdmin()
    if is_admin == 1:
        print('管理者権限が確認できました')
    else:
        print('管理者権限が確認できませんでした')
        print('プログラムを終了します')
        input('press any key')
        exit()

# 読み
def reg_QueryValue():
    with winreg.OpenKeyEx(winreg.HKEY_LOCAL_MACHINE, key_path) as key:
        try:
            read_key_data, _ = winreg.QueryValueEx(key, key_name)
        except Exception as e:
            print('レジストリが存在しませんでした')
        else:
            print('レジストリが存在します')
            print(read_key_data)


# 書き
def reg_SetValue():
    with winreg.OpenKeyEx(winreg.HKEY_LOCAL_MACHINE, key_path, access=winreg.KEY_SET_VALUE) as key:
        try:
            winreg.SetValueEx(key, key_name, 0, winreg.REG_BINARY, key_data)
        except Exception as e:
            print('書き込みに失敗しました')
            print('pythonエラー:',e)
        else:
            print('書き込みに成功しました')

# 削除
def reg_DeleteValue():
    with winreg.OpenKeyEx(winreg.HKEY_LOCAL_MACHINE, key_path, access=winreg.KEY_SET_VALUE) as key:
        try:
            winreg.DeleteValue(key, key_name)
        except Exception as e:
            print('削除に失敗しました')
            print('pythonエラー:',e)
        else:
            print('削除に成功しました')



if __name__ == "__main__":
    print('本プログラムは管理者権限が必要です')
    print('権限がある確認します')
    check_Administrator_authority()

    print('以下のレジストリが設定されているか確認しますか? y/n(Enterでキャンセル)')
    print('key_path:',key_path)
    print('key_name:',key_name)
    control = input()
    if control == 'y':
        reg_QueryValue()

    print('以下の内容でレジストリに値を上書き書き込みしますか? y/n (Enterでキャンセル)')
    print('目的:CapsLockをF13キーに変換')
    print('key_path:',key_path)
    print('key_name:',key_name)
    print('key_data:',key_data)
    control = input()
    if control == 'y':
        reg_SetValue()

    print('以下のレジストリを削除しますか? y/n(Enterでキャンセル)')
    print('key_path:',key_path)
    print('key_name:',key_name)
    control = input()
    if control == 'y':
        reg_DeleteValue()

    print('終了')
    input('press any key')
    
    
    


# 実行ファイル化
# pyinstaller CapsLock_change.py --onefile 



