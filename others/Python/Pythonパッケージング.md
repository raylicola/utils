## MizControllerのパッケージング
pipでinstallsetupできるようsetup.py でパッケージングする
- Windows対応済み -> Mac/Linuxでもできるようにしたい

### パッケージング
- bdist: ビルド済みのファイルを配布すること (whl)
  - インストールするのにビルド処理を行う必要がない, ビルド済み配布物
- sdist: ソースコードを配布すること (tar.gz)
  - ビルドされていない (すなわち、 ビルド済み配布物 ではない) ので、pip でインストールする際にビルドする段階が必要になります

```
# ビルド済みのファイル (build/) を生成. （こちらを選択）
python setup.py bdist_wheel

# ソースコード配布物 (dist/, imap2dict.egg-info/) の生成
python setup.py sdist
```

パッケージ化 + TestPyPI への登録
- 注意：開発環境のPythonのバージョンが3.10であることを確認する
- ビルド後のファイル名が "mizcore-0.0.n-cp310-cp310-manylinux1_x86_64.whl" であることを確認する
```
python3 setup.py bdist_wheel --plat-name manylinux1_x86_64
twine upload --repository testpypi dist/*
twine upload --repository pypi dist/*

```


### 参考文献
- [pythonのbdistとsdistとwheelファイルについて](https://blog.n-t.jp/post/tech/python-wheel-bdist-sdist-pip/)
- [パッケージングとプロジェクトの配布](https://packaging.python.org/ja/latest/guides/distributing-packages-using-setuptools/)
- [setup.pyを書いてpipでインストール可能にしよう](https://buildersbox.corp-sansan.com/entry/2019/07/11/110000)
