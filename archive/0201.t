const App = () => {
  const [count, setCount] = useState(0);

  const increment = () => {
    setCount(prev => prev + 1); // prev には前の count の値が入る
  };

  return (
    <>
      <button onClick={increment}>ここ</button>
      <p>Count: {count}</p>
    </>
  );
};