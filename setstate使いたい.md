setState を学ぶべき理由
React の状態（state）を適切に更新するため

直接 state を変更すると React は変更を検知しないため、setState を使う必要がある。
React の再レンダリングを制御するため

setState を使うと、React は変更を検知し、必要な部分だけを再レンダリングする。
非同期の更新に対処するため

setState は 非同期で処理される ため、prev を使ったコールバック関数を活用しないと 古い state を使ってしまうバグ が発生しやすい。
setState の基本的な使い方
useState で管理する state の値を更新するには、setState を使います。

① 基本の setState
tsx
コピーする
編集する
const [count, setCount] = useState(0);

const increment = () => {
    setCount(count + 1);
};
🔹 setCount(count + 1) で count の値を更新し、画面が再レンダリングされる。

② prev を使った setState
tsx
コピーする
編集する
const [count, setCount] = useState(0);

const increment = () => {
    setCount(prev => prev + 1);
};
🔹 setState の引数に関数を渡すと、最新の state を prev として受け取れる。

なぜ prev を使う？
tsx
コピーする
編集する
setCount(count + 1);
setCount(count + 1);
もし setCount を 連続して 2 回呼んだ 場合、setState は 非同期 なので、2 回とも同じ count を基に計算してしまい、期待した結果にならないことがある。

💡 prev を使うと、常に最新の state を基に更新できる！

tsx
コピーする
編集する
setCount(prev => prev + 1);
setCount(prev => prev + 1);
これなら 2 回呼び出した場合でも 2 増える ので、バグを防げる。

③ setState を配列やオブジェクトで使う
🔹 配列の状態を更新
tsx
コピーする
編集する
const [items, setItems] = useState<number[]>([0, 0, 0]);

const updateItem = (index: number) => {
    setItems(prev => {
        const newItems = [...prev]; // スプレッド構文でコピー
        newItems[index] = newItems[index] + 1; // クリックされた要素だけ変更
        return newItems; // 新しい配列をセット
    });
};
📌 ポイント

prev で最新の配列を取得
...prev でコピーを作る（直接 prev を変更するとバグの原因になる）
必要な部分だけ変更して、新しい配列を setItems にセット
🔹 オブジェクトの状態を更新
tsx
コピーする
編集する
const [user, setUser] = useState({ name: "Mark", age: 25 });

const updateAge = () => {
    setUser(prev => ({ ...prev, age: prev.age + 1 }));
};
📌 ポイント

prev で最新のオブジェクトを取得
{ ...prev, age: prev.age + 1 } で スプレッド構文を使い、既存のプロパティを保持しつつ age だけ更新
結論: setState を勉強すべき？
✅ 絶対に勉強すべき！
✅ 特に prev を使った 非同期処理 や 不変性の原則 を理解すると、バグの少ない React アプリを作れる。
✅ 配列やオブジェクトの更新方法 を理解すると、より柔軟な UI を作れるようになる。

React の useState に慣れると、よりスムーズに開発できるので、ぜひ 試しながら学習 してみてください！ 💡✨