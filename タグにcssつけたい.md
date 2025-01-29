# やりたいこと
タグにcssつけたい

# 解決方法
const Button = () => (
  <button className="button">
    Destroy
  </button>
)

# コード例

css
.button {
  background-color: blue;
  color: white;
}

ts
import React from 'react';
import "./Board.css";

<button
    className = "button"
    onClick={handleClick}
>
    {clickedNum === cnt ? clickedNum : null}
</button>

export default MyButton;

