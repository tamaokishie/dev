# POSTリクエスト
fetch('https://api.example.com/users', { // fetch関数を使用して、指定されたURLにHTTP POSTリクエストを送信します。
  method: 'POST',  // リクエストのメソッドをPOSTに設定します。
  headers: {
    'Content-Type': 'application/json'   // リクエストヘッダーを設定し、送信するデータがJSON形式であることを指定します。
  },
  body: JSON.stringify({ name: 'John Doe', email: 'john@example.com' })   // リクエストのボディに、ユーザー情報をJSON形式で文字列化して設定
})
.then(response => response.json())　// サーバーからのレスポンスをJSON形式に変換します。
.then(data => console.log(data));　// 変換されたデータをコンソールに出力します。


# POSTエンドポイント
@RestController
public class UserController {

    @PostMapping("/users") // POSTリクエストを受け取るエンドポイントを定義します。
    public User createUser(@RequestBody User user) {   // リクエストボディからUserオブジェクトを受け取り、新しいユーザーを作成します。
        return userService.save(user);  // 新しいユーザーをデータベースに保存するロジックを呼び出します。
    }
}