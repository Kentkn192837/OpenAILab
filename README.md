# 環境起動方法
`build_image.bat`でDocker Imageを作成する。
`start_container.bat`で作成したDocker Imageをもとに、コンテナを起動する。
```
> build_image.bat
> start_container.bat
```

## docker run時の注意事項
### `--name`でコンテナ名を指定しないこと
`--name`でコンテナ名を指定してコンテナを起動して、深層学習などの学習を行うプログラムを実行すると、メモリやGPUのリソースに十分な空きがあるのにもかかわらず`ResourceExhaustedError`が発生するようになってしまう。原因不明のバグなのでコンテナ名は指定しないようにすること。


# プログラムテストコードを書く時の注意点
このDockerfileで作成した実行環境はPython3.5のため、`pytest`によるテストの実行ができない。(`pytest`は3.7以上をサポートしているため)
よって、テストコードはPython標準ライブラリの`unittest`を利用すること。
