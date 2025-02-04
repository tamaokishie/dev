Failed to configure a DataSource: 'url' attribute is not specified and no embedded datasource could be configured.


📌 このエラーの意味：

Spring Boot が データベースの接続設定がないと判断 している
そのため、アプリが起動できず /hello にアクセスできない状態
📌 なぜ？

Spring Boot はデフォルトで データベース（H2, MySQL など）を探そうとする
しかし、application.properties に データベースの設定がないため失敗 している
✅ 解決方法
方法 1: データベースを無効化する（推奨）
データベースを使わないのであれば、Spring Boot に データソースの自動設定を無効化 させましょう。

① src/main/resources/application.properties を作成（または編集）
プロジェクトの src/main/resources/ に application.properties を作成
以下の設定を追加：
ini
spring.datasource.url=
spring.autoconfigure.exclude=org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration
✅ この設定の意味

spring.datasource.url= → データベースのURLを空にする（設定を無効化）
spring.autoconfigure.exclude=org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration
Spring Boot のデータベース設定を自動でしないようにする
Spring Boot アプリを再起動して試す
sh
コピーする
編集する
./mvnw spring-boot:run  # macOS/Linux
mvnw.cmd spring-boot:run  # Windows
方法 2: データベース（H2）を追加する
もし データベースを使う予定がある 場合は、H2（組み込みデータベース）を導入すると解決できます。

① application.properties に以下を追加
ini
コピーする
編集する
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driver-class-name=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=
spring.h2.console.enabled=true
✅ この設定の意味

H2 データベースをメモリ上に作成
認証なしでアクセスできる
H2の管理画面 (http://localhost:8080/h2-console) を使える
② pom.xml に H2 データベースの依存関係を追加
xml
コピーする
編集する
<dependency>
    <groupId>com.h2database</groupId>
    <artifactId>h2</artifactId>
    <scope>runtime</scope>
</dependency>
③ 再起動して試す
sh
コピーする
編集する
./mvnw spring-boot:run  # macOS/Linux
mvnw.cmd spring-boot:run  # Windows
🎯 結論
💡 データベースを使わないなら → 方法1（DataSourceAutoConfiguration を無効化）
💡 データベースを使いたいなら → 方法2（H2 データベースを追加）

まずは方法1を試して、アプリを起動できるようにしてみてください！🚀







