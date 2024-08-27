rem 建議您輸入視頻25fps 與 訓練模型時所使用的fps相同
rem 如果您的影片遠低於25fps 建議使用ffmpeg直接將影片轉換為25fps

set FFMPEG_PATH=C:\YenCheChang\ffmpeg
python -m scripts.inference --inference_config configs/inference/test.yaml 


rem python -m scripts.inference --inference_config configs/inference/test.yaml --device cuda


rem 建議使用 bbox_shift範圍
rem 正值（朝下半部移動）會增加嘴巴張開度
rem 而負值（朝上半部移動）會減少嘴巴張開度
rem python -m scripts.inference --inference_config configs/inference/test.yaml --bbox_shift -7


rem set FFMPEG_PATH=C:\YenCheChang\ffmpeg
rem python -m scripts.realtime_inference --inference_config configs/inference/realtime.yaml --batch_size 2


rem set FFMPEG_PATH=C:\YenCheChang\ffmpeg
rem python -m scripts.realtime_inference --inference_config configs/inference/realtime.yaml --skip_save_images