# 講義「マルチメディア表現」

日本大学、文理学科、木曜日１限　午前９：００〜１０：３０

講師：梅谷信行　東京大学　特任講師　http://www.nobuyuki-umetani.com/

梅谷信行メールアドレス：n.umetani@gmail.com

## 講義日程

- 2019/11/21 画像の基礎
  - [講義スライド](https://www.dropbox.com/s/67faulum2buvlf7/lec2_image.pptx?dl=0) (ppt)
  - プログラミング１：[sketch_00_open_img](/sketch_00_open_img)
  - プログラミング２：[sketch_01_read_pixels](/sketch_01_read_pixels)
- 2019/11/28：画像処理と動画の基礎
  - [講義スライド](https://www.dropbox.com/s/i5t2ejw6wgpwgad/lec3_imgprocess_video.pptx?dl=0) (ppt)
  - プログラミング１：[sketch_10_grayscale](/sketch_10_grayscale)
  - プログラミング２：[sketch_11_imgdiff](/sketch_11_imgdiff)
  - プログラミング３：[sketch_12_chromakey](/sketch_12_chromakey)
- 2019/12/5：CGの基礎〜座標変換〜
  - [講義スライド](https://www.dropbox.com/s/ggign95hcpnwki0/lec4_perspective.pptx?dl=0)(ppt)
  - プログラミング１：[sketch_20_flower](/sketch_20_flower)
- 2019/12/12：CGの基礎〜３D形状の表現とピクセル化〜
- 2019/12/19：CGの基礎〜マテリアルとライティング〜
- 2019/12/26：演習


## プログラム

Gitを使ったサンプル・プログラムのダウンロード方法
```
git clone https://github.com/nobuyuki83/course_winter2019_unihon.git
```

ダウンロードしたサンプル・プログラムの更新方法
```
cd <<サンプル・プログラムのディレクトリ>>
git pull
```





## トラブルシューティング

- ProcessingをLinuxにインストールしたい
  - 公式ダウンロードページを開く https://processing.org/download/
  - Linux64bitのファイルをダウンロード（ファイル名は：processing-X.X.X-linux64.tgzなど)
  - ダウンロードしたファイルを解凍
  - ターミナル上でinstall.shを実行```sh install.sh```
- GitをUbuntu(Linux)にインストールしたい
  - 次のコマンドを打つ：```sudo apt-get install git```
- ```git pull```した時に何か手元のコンピュータ上で変更があると「ローカルの変更をコミットしてください」などのエラーが出る
  - コマンド```git stash```でローカルの変更を一時的に退避させた後に、```git pull```をすればよい
  - 参考：[[Git]変更を一時的に退避するgit stashの使い方イロハ](https://qiita.com/kashira2339/items/34281fee571c39471e48)
  - それでもダメだったら別のディレクトリで```git clone https://github.com/nobuyuki83/course_winter2019_unihon.git```する。




## 参考図書


- 画像処理
  - 「デジタル画像処理」、公益財団法人画像情報教育振興協会（CG-ARTS協会）、https://www.amazon.co.jp/dp/B013LBJ3GQ
- コンピュータグラフィックス
  - 「コンピュータグラフィックス」公益財団法人画像情報教育振興協会（CG-ARTS協会）、https://www.amazon.co.jp/gp/B013LBJ6D6



