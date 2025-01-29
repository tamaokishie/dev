# やりたいこと
usestateを使いたい

# 解決方法
const [state, setState] = useState(初期値)

# コード例
function MyComponent() {
  const [age, setAge] = useState(28);
  const [name, setName] = useState('Taylor');
  const [todos, setTodos] = useState(() => createTodos());
  // ...
}

基本的な使い方
const [count, setCount] = useState(0);

文字列を指定
const [name, setName] = useState('Taylor');

オブジェクトを指定
const [user, setUser] = useState({ name: 'Taylor', age: 28 });

配列を指定
const [items, setItems] = useState([]);

関数を指定（初期値の計算が重い場合、関数を使って初期値を設定する）
const [todos, setTodos] = useState(() => createTodos());

プール値を指定
const [isVisible, setIsVisible] = useState(true);