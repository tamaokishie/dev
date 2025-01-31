# やりたいこと
型ありのusestateを使いたい

# 解決方法
オブジェクトを指定
const [clickedMarks, setClickedMarks] = useState({name: "イチロー", age: 40});

型付きオブジェクトを指定
const [clickedMarks, setClickedMarks] = useState<{name: string, age: number}>({name: "イチロー", age: 40});
const [clickedMarks, setClickedMarks] = useState<{age: number, mark: string }>({age: 40, mark: "●"});



# コード例
１個目の書き方では、オブジェクトが特定のプロパティ（age, mark）を持つことを示す。それ以外は持てない。
■　useState<{ age: string, mark: string }>({age: "●", mark: "●"});


二個目の書き方では、key自体に型宣言をしています。オブジェクトが任意の文字列キーを持ち、すべての値が文字列型であることを示しています。プロパティ名が固定されていない場合や、動的にプロパティを追加する可能性がある場合に便利です。
■　useState<{ [key: string]: string }>({age: "●", mark: "●"});
　　　　　　　　　　　　　　　　👇
{age: "●", mark: 3}オブジェクトの型違ったらどうするの？「|」ユニオン型を使って、複数の型を許可することできる
useState<{[key: string]:string | number }>({age: "●", mark: 1});