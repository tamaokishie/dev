フロントエンド
http://localhost:8080/


バンクエンド
http://localhost:3000/



フロントエンドがhttp://localhost:3000で動作し、バックエンドがhttp://localhost:8080で動作している場合、
CORS設定を行う必要があります。
以下のようにSpring BootのコントローラーにCORS設定を追加してください。

# コード例
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@CrossOrigin(origins = "http://localhost:3000") // Reactアプリが動作しているオリジンを指定
public class HelloworldController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello world!";
    }
}