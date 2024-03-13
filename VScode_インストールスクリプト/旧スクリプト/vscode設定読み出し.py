import shutil
import os

# ユーザーファイル名取得
userprofile = os.environ['USERPROFILE']

src_settings_file_path = userprofile + '/AppData/Roaming/Code/User/settings.json'
dst_settings_file_path = '../VScode/settings.json'

src_keybindings_file_path = userprofile + '/AppData/Roaming/Code/User/keybindings.json'
dst_keybindings_file_path = '../VScode/keybindings.json'

src_snippets_folder_path = userprofile + '/AppData/Roaming/Code/User/snippets/.'
dst_snippets_folder_path = '../VScode/snippets/.'


# カレントディレクトリを現在のファイルのディレクトリにする
os.chdir(os.path.dirname(__file__))

# settings.jsonを取り出す
if (os.path.isfile(src_settings_file_path)):
    shutil.copy(src_settings_file_path, dst_settings_file_path)
    print('OK')

# keybindings.jsonを取り出す
if (os.path.isfile(src_keybindings_file_path)):
    shutil.copy(src_keybindings_file_path, dst_keybindings_file_path)
    print('OK')

# snippetsフォルダを取り出す
if (os.path.isdir(dst_snippets_folder_path)):
    shutil.copytree(src_snippets_folder_path , dst_snippets_folder_path, dirs_exist_ok=True)
    print('OK')
