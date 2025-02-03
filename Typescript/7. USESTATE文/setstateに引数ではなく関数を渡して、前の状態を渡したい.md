# やりたいこと
setstateに引数でなく関数を渡して、前の状態を渡したい

# 解決方法
この書き方は 関数更新（functional update） と呼ばれ、ReactのuseStateの機能 によって動作します。
setCount(prev => prev + 1);

setCount に 関数 を渡すと、Reactは自動的にその関数の引数に「前の状態 (count の値)」を渡す 仕組みになっています。


# 問題の例
const handleClick = () => {
  setCount(count + 1);
  setCount(count + 1);
};
<button onClick={handleClick}>Increase</button>
この場合、count は 1回しか増えません！
なぜなら、count + 1 は 両方とも「同じ現在の count の値」を使っている からです。



# コード例
setCount(previousValue => previousValue + 1);
