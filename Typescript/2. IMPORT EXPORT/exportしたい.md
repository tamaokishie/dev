import React, { useState } from "react";
import "./Board.css";

export const Board = () => {

    const btnClick = () => {
        setCount(prevCount => prevCount + 1);
    };

    return (
        <div className="board">
            <button onClick={btnClick}>カウント </button>
            <h1>{count}</h1>
        </div>
    );
};
