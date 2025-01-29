# やりたいこと
型ありのusestateを使いたい

# 解決方法
const [state, setState] = useState<型>(初期値)

<型> の部分は ジェネリクス（Generics） と呼ばれる。

# コード例
//number型しか入らないことを意味する
const [clickedNum, setClickedNum] = useState<number>(null);

// number もしくは nullしか入らないことを意味する
const [clickedNum, setClickedNum] = useState<number | null>(null);
