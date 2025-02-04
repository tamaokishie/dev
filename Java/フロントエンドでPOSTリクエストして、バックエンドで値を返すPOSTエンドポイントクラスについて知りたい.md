# POSTリクエスト
fetch('https://api.example.com/users', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({ name: 'John Doe', email: 'john@example.com' })
})
.then(response => response.json())
.then(data => console.log(data));


# POSTエンドポイント
@RestController
public class UserController {

    @PostMapping("/users")
    public User createUser(@RequestBody User user) {
        // 新しいユーザーを作成するロジック
        return userService.save(user);
    }
}