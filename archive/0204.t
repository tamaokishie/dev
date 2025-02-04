// GETリクエスト
fetch('https://api.example.com/users/123')
  .then(response => response.json())
  .then(data => console.log(data));


// GETエンドポイント
  @RestController
public class UserController {

    @GetMapping("/users/{id}")
    public User getUser(@PathVariable Long id) {
        // ユーザー情報を取得して返すロジック
        return userService.findById(id);
    }
}