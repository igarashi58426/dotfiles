import shutil
import os

# ユーザーファイル名取得
userprofile = os.environ['USERPROFILE']
vscode_config_dir = '/AppData/Roaming/Code/User/'

src_settings_file_path = '../config/settings.json'
dst_settings_file_path = userprofile + vscode_config_dir + 'settings.json'
dst_settings_old_file_path = userprofile + vscode_config_dir + 'settings_old.json'

src_keybindings_file_path = '../config/keybindings.json'
dst_keybindings_file_path = userprofile + vscode_config_dir + 'keybindings.json'
dst_keybindings_old_file_path = userprofile + vscode_config_dir + 'keybindings_old.json'

src_snippets_folder_path = '../config/snippets/.'
dst_snippets_folder_path = userprofile + vscode_config_dir + 'snippets/.'
dst_snippets_old_folder_path = userprofile + vscode_config_dir + 'snippets_old/.'

def copy_file(src_file_path, dst_file_path, dst_old_file_path,type='file', **kwargs):
    if type =='file':
        is_exist = os.path.isfile(src_file_path)
        # 既存ファイルをコピーでバックアップを行う
        shutil.copy(dst_file_path, dst_old_file_path)
        if is_exist:
            shutil.copy(src_file_path, dst_file_path)
    elif type =='dir':
        is_exist = os.path.isdir(src_file_path)
        # 既存ファイルをコピーでバックアップを行う
        shutil.copytree(dst_file_path , dst_old_file_path, dirs_exist_ok=True)
        if is_exist:
            shutil.copytree(src_file_path, dst_file_path, dirs_exist_ok=True)
    else:
        print('not support')
        return
    print('OK')


def interactive_tool():
    # カレントディレクトリを現在のファイルのディレクトリにする
    os.chdir(os.path.dirname(__file__))

    print('VScodeの設定を書き込む。 y/n(Enterでキャンセル)')
    print('対象ディレクトリ:', userprofile + vscode_config_dir)
    control = input('>')
    if control not in ['y']:
        print('exit')
        return

    print('settings.jsonを書き込む')
    copy_file(src_settings_file_path,
              dst_settings_file_path,
              dst_settings_old_file_path)

    print('keybindings.jsonを書き込む')
    copy_file(src_keybindings_file_path,
              dst_keybindings_file_path,
              dst_keybindings_old_file_path)

    print('snippetsフォルダを書き込む')
    copy_file(src_snippets_folder_path,
              dst_snippets_folder_path,
              dst_snippets_old_folder_path,
              type='dir')

    print('complete!')
    input()

if __name__ == "__main__":
    interactive_tool()
