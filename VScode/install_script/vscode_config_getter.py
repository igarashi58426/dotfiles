import shutil
import os

# ユーザーファイル名取得
userprofile = os.environ['USERPROFILE']
vscode_config_dir = '/AppData/Roaming/Code/User/'
src_settings_file_path = userprofile + vscode_config_dir +'settings.json'
dst_settings_file_path = '../config/settings.json'

src_keybindings_file_path = userprofile + vscode_config_dir +'keybindings.json'
dst_keybindings_file_path = '../config/keybindings.json'

src_snippets_folder_path = userprofile + vscode_config_dir +'snippets/.'
dst_snippets_folder_path = '../config/snippets/.'


def copy_file(src_file_path, dst_file_path, type='file'):
    if type =='file':
        is_exist = os.path.isfile(src_file_path)
    elif type =='dir':
        is_exist = os.path.isdir(src_file_path)
    else:
        print('not support')
        return

    if is_exist:
        if type =='file':
            shutil.copy(src_file_path, dst_file_path)
        elif type =='dir':
            shutil.copytree(src_file_path, dst_file_path, dirs_exist_ok=True)
        print('OK')

def interactive_tool():
    # カレントディレクトリを現在のファイルのディレクトリにする
    os.chdir(os.path.dirname(__file__))

    print('VScodeの設定を取り出す。 y/n(Enterで続行)')
    print('対象ディレクトリ:', userprofile + vscode_config_dir)
    control = input('>')
    if control not in ['y','']:
        print('exit')
        return

    print('settings.jsonを取り出す')
    copy_file(src_settings_file_path,
              dst_settings_file_path)

    print('keybindings.jsonを取り出す')
    copy_file(src_keybindings_file_path,
              dst_keybindings_file_path)

    print('snippetsフォルダを取り出す')
    copy_file(src_snippets_folder_path,
              dst_snippets_folder_path,
              type='dir')

    print('complete!')
    input()

if __name__ == "__main__":
    interactive_tool()
