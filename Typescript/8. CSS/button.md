.button {
  background: linear-gradient(45deg, #007BFF, #0056b3); /* 青系グラデーション */
  color: white;
  padding: 12px 24px;
  font-size: 16px;
  font-weight: bold;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
  text-transform: uppercase;
  margin: 60px;
}

.button:hover {
  background: linear-gradient(45deg, #0056b3, #003f7f);
  transform: translateY(-2px);
  box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.2);
}

.button:active {
  transform: translateY(1px);
  box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.15);
}

.button:disabled {
  background: #ccc;
  cursor: not-allowed;
  box-shadow: none;
}