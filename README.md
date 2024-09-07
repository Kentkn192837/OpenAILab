# 環境起動方法
環境構築は`Makefile`のコマンドを使う。
`make build`でDocker Imageを作成する。
`make run`で作成したDocker Imageをもとに、コンテナを起動する。
```
> make build
> make run
```

## docker run時の注意事項
### `--name`でコンテナ名を指定しないこと
`--name`でコンテナ名を指定してコンテナを起動して、深層学習などの学習を行うプログラムを実行すると、メモリやGPUのリソースに十分な空きがあるのにもかかわらず`ResourceExhaustedError`が発生するようになってしまう。原因不明のバグなのでコンテナ名は指定しないようにすること。
