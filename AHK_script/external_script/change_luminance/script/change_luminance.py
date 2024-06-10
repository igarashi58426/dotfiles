import sys
import monitorcontrol

if len(sys.argv) == 2:
    add_luminance = int(sys.argv[1])
else:
    add_luminance = 0

# モニターオブジェクトを取得
for monitor in monitorcontrol.get_monitors():
    with monitor:
        # 現在の輝度を取得
        now_luminance = monitor.get_luminance()
        # 第2引数を加算して変更後の輝度数値を算出
        future_luminance = now_luminance + add_luminance
        # 0~100の範囲に収める
        if 100 < future_luminance:
            future_luminance = 100
        if future_luminance < 0:
            future_luminance = 0
        # モニターの輝度をセットする
        monitor.set_luminance(future_luminance)
