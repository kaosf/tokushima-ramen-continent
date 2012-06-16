超簡易 Twitter クライアント (自分用)

何ぞそのうち改造する (予定だったがどうでもよくなってる)

OAuth の設定する値 4 つは自分で取得して下さい

http://atoken4me.heroku.com/ とか使って

その値設定したら

```
gem install twitter
```

すれば使えるよ

```
ruby trc.rb -t "つぶやきたい内容"
```

とか

```
chmod +x trc.rb
./trc
> つぶやきたい内容
```

作者 [@ka_](https://twitter.com/ka_)
