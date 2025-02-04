# GETリクエスト
fetch('https://api.example.com/users/123') // １．123はユーザーのIDであり、このIDに対応するユーザー情報を取得しようとしています。
  .then(response => response.json()) // 5. JSONデータをパースしdataとして受け取る
  .then(data => console.log(data)); // 6. 取得したユーザー情報がコンソールに出力される


# GETエンドポイント
  @RestController
public class UserController {

    @GetMapping("/users/{id}") // ２. "/users/123" のようなリクエストを受け取るエンドポイントを定義しています。
    public User getUser(@PathVariable Long id) { // ３．URLパスからユーザーIDを取得します。
        return userService.findById(id); // 4. ユーザー情報を取得して返すロジック
    }
}