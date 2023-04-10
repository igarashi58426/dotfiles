import shutil
import os

# ユーザーファイル名取得
userprofile = os.environ['USERPROFILE']

src_settings_file_path = '../VScode/settings.json'
dst_settings_file_path     = userprofile + '/AppData/Roaming/Code/User/settings.json'
dst_settings_old_file_path = userprofile + '/AppData/Roaming/Code/User/settings_old.json'

src_keybindings_file_path = '../VScode/keybindings.json'
dst_keybindings_file_path = userprofile + '/AppData/Roaming/Code/User/keybindings.json'
dst_keybindings_old_file_path = userprofile + '/AppData/Roaming/Code/User/keybindings_old.json'

src_snippets_folder_path = '../VScode/snippets/.'
dst_snippets_folder_path = userprofile + '/AppData/Roaming/Code/User/snippets/.'
dst_snippets_old_folder_path = userprofile + '/AppData/Roaming/Code/User/snippets__old/.'


# カレントディレクトリを現在のファイルのディレクトリにする
os.chdir(os.path.dirname(__file__))

# settings.jsonを書き込む
if (os.path.isfile(dst_settings_file_path)):
    # 既存ファイルをコピーでバックアップを行う
    shutil.copy(dst_settings_file_path, dst_settings_old_file_path)
    # 上書き書き込みを行う
    shutil.copy(src_settings_file_path, dst_settings_file_path)
    print('OK')

# keybindings.jsonを書き込む
if (os.path.isfile(dst_keybindings_file_path)):
    # 既存ファイルをコピーでバックアップを行う
    shutil.copy(dst_keybindings_file_path, dst_keybindings_old_file_path)
    # 上書き書き込みを行う
    shutil.copy(src_keybindings_file_path, dst_keybindings_file_path)
    print('OK')

# snippetsフォルダを書き込む
if (os.path.isdir(dst_snippets_folder_path)):
    # 既存ファイルをコピーでバックアップを行う
    shutil.copytree(dst_snippets_folder_path , dst_snippets_old_folder_path, dirs_exist_ok=True)
    # 上書き書き込みを行う
    shutil.copytree(src_snippets_folder_path , dst_snippets_folder_path, dirs_exist_ok=True)
    print('OK')

