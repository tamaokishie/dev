# やりたいこと
usestateの初期値を空にしたい

# 解決方法
const [state, setState] = useState(初期値)

useState(初期値)を空にする

# コード例

数字を空に指定したい場合
const [age, setAge] = useState(0);
const [age, setAge] = useState(null);

文字を空に指定したい場合
const [name, setName] = useState('');

配列を空に指定したい場合
const [name, setName] = useState([]);

オブジェクトを空に指定したい場合
const [name, setName] = useState({});