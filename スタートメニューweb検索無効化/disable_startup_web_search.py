import winreg
import ctypes
from sys import exit

key_root = winreg.HKEY_CURRENT_USER
key_path = r'SOFTWARE\Policies\Microsoft\Windows\Explorer'
key_name = 'DisableSearchBoxSuggestions'
key_data = 1

def get_winreg_type(data):
    if type(int()) == type(data):
        return winreg.REG_DWORD
    if type(bytes()) == type(data):
        return winreg.REG_BINARY
    else:
        return None


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
    try:
        with winreg.OpenKeyEx(key_root, key_path) as key:
            read_key_data, _ = winreg.QueryValueEx(key, key_name)
    except Exception as e:
        print('レジストリが存在しませんでした。エラー:', e)
    else:
        print('レジストリが存在します')
        print(read_key_data)


# 書き
def reg_SetValue():
    try:
        with winreg.CreateKeyEx(key_root, key_path, access=winreg.KEY_SET_VALUE) as key:
            winreg.SetValueEx(key, key_name, 0, get_winreg_type(key_data), key_data)
    except Exception as e:
        print('書き込みに失敗しました')
        print('pythonエラー:', e)
    else:
        print('書き込みに成功しました')


# 削除
def reg_DeleteValue():
    try:
        with winreg.OpenKeyEx(key_root, key_path, access=winreg.KEY_SET_VALUE) as key:
            winreg.DeleteValue(key, key_name)
    except Exception as e:
        print('削除に失敗しました')
        print('pythonエラー:', e)
    else:
        print('削除に成功しました')


if __name__ == "__main__":
    print('本プログラムは管理者権限が必要です')
    print('権限がある確認します')
    check_Administrator_authority()

    print('以下のレジストリが設定されているか確認しますか? y/n(Enterでキャンセル)')
    print('key_path:', key_path)
    print('key_name:', key_name)
    control = input()
    if control == 'y':
        reg_QueryValue()

    print('以下の内容でレジストリに値を上書き書き込みしますか? y/n (Enterでキャンセル)')
    print('目的:スタートメニューでのbing検索を無効化')
    print('key_path:', key_path)
    print('key_name:', key_name)
    print('key_data:', key_data)
    control = input()
    if control == 'y':
        reg_SetValue()

    print('以下のレジストリを削除しますか? y/n(Enterでキャンセル)')
    print('key_path:', key_path)
    print('key_name:', key_name)
    control = input()
    if control == 'y':
        reg_DeleteValue()

    print('終了')
    input('press any key')

# 実行ファイル化
# pyinstaller disable_startup_web_search.py --onefile
