# やりたいこと
map使いたい

# 解決方法
KeyとValueを扱うオブジェクトになります。
JavaScriptの世界では、オブジェクトというと下のようなものになります。
{
  name: "nanana",
  skills: ["TypeScript", "React", "GraphQL"],
  age: 10
}

name, skills, ageがkeyとなり、対応している右側がvalueとなります。
呼び出し方は
const me = {
  name: "nanana",
  skills: ["TypeScript", "React", "GraphQL"],
  age: 10
}
me.name // "nanana"
me.skills // ["TypeScript", "React", "GraphQL"]
me.age // 10

----------------------------------------------

Mapを使ってみる

まずは簡単なMapを使ってみます。

// ここでstring(左)をkeyとした、string(右)をvalueとしたMapオブジェクト
const map = new Map<string, string>();
map.set('name', 'nanana');
console.log(map.get('name')); // nanana

# コード例
for (let i:number = 0; i < 10; i++) {
   console.log(i);
}
