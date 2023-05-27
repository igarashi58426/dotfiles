import re
import os
import tkinter as tk
import tkinter.ttk as ttk
import csv


class Csvterrview:
    def __init__(self, frame, data):

        #カラーバーのバグ対策の関数実行
        self.style = ttk.Style()  
        self.style.map('Treeview',
                    foreground=self.fixed_map('foreground'),
                    background=self.fixed_map('background'))
        
        self.csvdata = data#表示データの2重リスト
        
        self.tree = ttk.Treeview(frame) #Treeviewオブジェクト作成
        self.tree["columns"] = tuple(range(len(self.csvdata[0])))# 列インデックスを設定(0,1,2,...)
        self.tree["show"] = "headings"# 表スタイルの設定(通常の表形式)

        for index, title in enumerate(self.csvdata[0]):
            # 各列の設定(列インデックス,オプション:幅を指定)
            self.tree.column(index,width=75,)
            # 最上段のヘッダー設定(列インデックス,表示タイトル)
            self.tree.heading(index,text = title, )


        for i in range(1,len(self.csvdata)): #先頭の項目名を除くため1番から開始
            # ツリービューの要素に追加 行を下にスタックしていく
            self.tree.insert("","end",tags=i,values=self.csvdata[i])
            #行に設定したtagsが奇数なら白､偶数なら色の背景色に設定
            bgcolor = self.alternate(i, '#ffe5e5','#FFFFFF')
            self.tree.tag_configure(i,background=bgcolor, font=("MS Mincho ", "14", ))


        #----------スクロールバー設置----------

        #縦スクロールバーの設置
        self.y_scrollbar = tk.Scrollbar(frame, orient=tk.VERTICAL, width=20, command=tree.yview)
        self.tree.configure(yscrollcommand=self.y_scrollbar.set)
        #横スクロールバーの設置
        self.x_scrollbar = tk.Scrollbar(frame, orient=tk.HORIZONTAL, width=20, command=tree.xview)
        self.tree.configure(xscrollcommand=self.x_scrollbar.set)

        
        self.tree.grid(row=1, column=1, sticky='nsew')
        self.y_scrollbar.grid(row=1, column=2, sticky='nsew')
        self.x_scrollbar.grid(row=2, column=1, sticky='nsew')

    def fixed_map(self, option):
        # Fix for setting text colour for Tkinter 8.6.9
        # From: https://core.tcl.tk/tk/info/509cafafae
        # Returns the style map for 'option' with any styles starting with
        # ('!disabled', '!selected', ...) filtered out.
        # style.map() returns an empty list for missing options, so this
        # should be future-safe.
        return [elm for elm in self.style.map('Treeview', query_opt=option) if
            elm[:2] != ('!disabled', '!selected')]

    def alternate (self,number, odd_return, even_return):
        if number%2 != 0:#ナンバーが奇数の場合
            return odd_return
        if number%2 == 0:#ナンバーが偶数の場合
            return even_return


if __name__ == '__main__':
    #----------ahkファイルからショートカット抽出----------
    mine_Shortcutlist = []
    Viewmode_Shortcutlist =  []
    game_Shortcutlist = []

    # 現在のディレクトリのパスを取得
    os.chdir(os.getcwd() + '\\..')
    for ahkfile in os.listdir():
        if ahkfile[-4:] == '.ahk':

            #ファイルの読み込み
            #print('処理実行ファイル名:',ahkfile)
            with open(ahkfile, mode='r', encoding='utf-8') as f:
                str = f.read()
            
            #パターンマッチングによる抽出
            #テスト例:[Shift] + [ホイール↑] -> [ホイール←左]
            #テスト例:[x] -> [Ctrl + x]
            #などのパターンにマッチする文字を抽出
            out_list = re.findall(r'\[.*?\]\s\+\s\[.*?\]\s->\s\[.*?\]|\[.*?\]\s->\s\[.*?\]', str) 

            if ahkfile == 'SubScript_View_mode.ahk':
                Viewmode_Shortcutlist += out_list
            elif ahkfile == 'SubScript_Game_Shortcut.ahk':
                game_Shortcutlist += out_list
            else:
                mine_Shortcutlist += out_list



    #----------ベース生成----------
    # Tkクラス生成
    win = tk.Tk()
    # 画面サイズ
    win.geometry('750x750+400+30') 
    # 画面タイトル
    win.title('AHKショートカットキー一覧')

    #設置フレームの生成
    frame = tk.Frame(win, width=100, height=100)

    #----------データ表示----------
    
    # ツリービュークラスの作成
    tree = ttk.Treeview(frame)
    #リストを1要素2重リストに変換
    mine_Shortcutlist = [[i] for i in mine_Shortcutlist]
    #先頭のタイトルをつける
    mine_Shortcutlist.insert(0,['ショートカットキー一覧'])
    #Csvterrviewで表示
    tree = Csvterrview(frame,mine_Shortcutlist,)

    #----------各種ウィジェット配置----------

    frame.grid_columnconfigure(1, weight=1)
    frame.grid_columnconfigure(2, minsize=20)
    frame.grid_rowconfigure(1, weight=1)
    frame.grid_rowconfigure(2, minsize=20)

    frame.pack(fill='both', expand=1)
    
    win.mainloop()









    #ファイルに出力
    # #print(Shortcutlist)
    # with open("Shortcutlist.txt", mode='w', encoding='utf_8_sig5') as f:
    #     f.write('メインショートカットキー'+'\n')
    #     for i in mine_Shortcutlist:
    #         f.write(i+'\n')

    #     f.write('Viewmodeショートカットキー'+'\n')
    #     for i in Viewmode_Shortcutlist:
    #         f.write(i+'\n')   
        
    #     f.write('ゲームショートカットキー'+'\n')
    #     for i in game_Shortcutlist:
    #         f.write(i+'\n')


