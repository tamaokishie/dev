import React, { useState } from "react"

export const Board = () => {

    let number = [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ];

    const [clickedNum, setClickedNum] = useState<number | null>(null);

    // 関数で呼び出す変数の書き方について知りたい
    const handleClick = (num: number) => {
        setClickedNum(num);
    };

    return(
        <div>
            {number.map((num, index) => (
                <React.Fragment key={index}>
                    // タグの中に挿入するイベント？いい方を知りたい & パターンや使い方を知りたい
                    <button onClick={() => handleClick(num)}>
                        // 個々の書き方を知りたい
                        {clickedNum === num ? clickedNum : "□"}
                    </button>
                    // 条件、計算のいろんなパターンをしりたい
                    {(index + 1) % 3 === 0 && <br />}
                </React.Fragment>
            ))}
        </div>
    )
}
