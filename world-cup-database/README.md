### Build a World Cup Database Instructions
URL: [https://www.freecodecamp.org/learn/relational-database/build-a-world-cup-database-project/build-a-world-cup-database](https://www.freecodecamp.org/learn/relational-database/build-a-world-cup-database-project/build-a-world-cup-database)  


以下の指示に従ってプロジェクトを完了してください。

1. worldcup という名前のデータベースを作成します。

1. worldcup データベースに接続し、その後 teams と games という名前のテーブルを作成します。

1. teams テーブルには、team_id 列が SERIAL 型でプライマリーキーであり、name 列がユニークでなければなりません。

1. games テーブルには、game_id 列が SERIAL 型でプライマリーキーであり、year 列が INT 型、round 列が VARCHAR 型です。

1. games テーブルには、winner_id と opponent_id という外部キー列があり、それぞれ teams テーブルの team_id 列を参照します。

1. games テーブルには、winner_goals と opponent_goals という INT 型の列があります。

1. すべての列には NOT NULL 制約を設定します。

1. 2つのスクリプトファイル（.sh）には実行権限を付与する必要があります。これらのファイルの権限が正しく設定されるまで、その他のテストは失敗します。権限が有効になった後、テストの実行にかなりの時間がかかる場合があります。

1. insert_data.sh スクリプトを実行すると、各ユニークなチームが teams テーブルに追加されるべきです。行数は24であるべきです。

1. insert_data.sh スクリプトを実行すると、games.csv ファイルの各行が（ファイルの最上行を除いて）games テーブルに挿入されるべきです。行数は32であり、すべての列が適切な情報で埋められているべきです。teams テーブルからの正しいIDを追加することを確認してください（値をハードコードしてはいけません）。

1. queries.sh ファイル内のクエリを正しく完成させます。空の echo コマンドに対して、上にあるコマンドの出力を取得するように記入します。出力は expected_output.txt ファイルの内容と正確に一致するべきです。クエリ結果の小数点以下の桁数にも注意してください。
