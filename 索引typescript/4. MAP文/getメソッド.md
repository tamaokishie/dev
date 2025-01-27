getメソッド

与えられたキーに対応する値を取り出すには、getメソッドを使用します。

const myMap = new Map([
    ['key1', 'value1'],
    ['key2', 'value2']
]);

console.log(myMap.get('key1')); // 'value1'