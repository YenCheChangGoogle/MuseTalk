rem 建議使用 bbox_shift範圍
rem 正值（朝下半部移動）會增加嘴巴張開度
rem 而負值（朝上半部移動）會減少嘴巴張開度

python -m scripts.inference --inference_config configs/inference/test.yaml --bbox_shift -7 