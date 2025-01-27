# やりたいこと
KEYが知りたい

# 解決方法
特定の値にアクセスするための識別子として使われるもの

# コード例
let player: {[key: string]: string} = {
  "name": "イチロー",
  "team": "mariners",
  "age": "45"
};

- キー"name"に対する値は"イチロー"
- キー"team"に対する値は"mariners"
- キー"age"に対する値は"45"

例えば、player.nameと書くことで、キー "name" に対応する値 "イチロー" を取得できる