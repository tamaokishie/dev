# やりたいこと
特定の値のみを許可する型を定義するusestateを使いたい

# 解決方法
リテラル型を使用して特定の値のみを許可する型を定義することができる。

const [nextMark, setNextMark] = useState<"●">("");
const [nextMark, setNextMark] = useState<"●" | "×">("●");


# コード例
// "●"という文字しか入らない、初期値は空
const [nextMark, setNextMark] = useState<"●">("");

// "●"と"×"という2つの文字列リテラル型を使用して、
　　nextMarkの状態がこれらの2つの値のいずれかであることを保証しています。
const [nextMark, setNextMark] = useState<"●" | "×">("●");