return(
        <div>
            {number.map((num, index) => (
                <>
                    <button key={index}>{num}</button>
                    {(index + 1) % 3 === 0 && <br />}
                </>
            ))}
        </div>
    )