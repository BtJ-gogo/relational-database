### Build a Periodic Table Database Instructions
[https://www.freecodecamp.org/learn/relational-database/build-a-periodic-table-database-project/build-a-periodic-table-database](https://www.freecodecamp.org/learn/relational-database/build-a-periodic-table-database-project/build-a-periodic-table-database)  
  

以下の指示に従ってプロジェクトを完了してください。  

パート1: データベースの修正  
1. データベース内の修正や変更が必要な間違いがあります。以下のユーザーストーリーに従って修正してください。  

1. weight 列を atomic_mass に名前変更してください。

1. melting_point 列を melting_point_celsius に、boiling_point 列を boiling_point_celsius に名前変更してください。

1. melting_point_celsius と boiling_point_celsius 列には NULL 値を許可しない制約を追加してください。

1. elements テーブルの symbol および name 列に UNIQUE 制約を追加してください。

1. symbol および name 列には NOT NULL 制約を追加してください。

1. properties テーブルの atomic_number 列を外部キーとして elements テーブルの同名の列を参照するように設定してください。

1. types テーブルを作成し、3種類の元素のタイプを保存します。

1. types テーブルには、type_id 列（整数型、プライマリーキー）を作成してください。

1. types テーブルには、type 列（VARCHAR 型、NULL 不許可）を作成し、properties テーブルの type 列に含まれる異なるタイプを保存します。

1. types テーブルに、properties テーブルの type 列に含まれる3種類の異なる値を持つ3行を追加してください。

1. properties テーブルには type_id 外部キー列を追加し、types テーブルの type_id 列を参照するように設定してください。type_id 列は INT 型で、NOT NULL 制約を追加します。

1. properties テーブルの各行には、types テーブルの正しい type_id 値がリンクされている必要があります。

1. elements テーブルの symbol 列の最初の文字を大文字にしてください。他の文字を変更しないように注意してください。

1. atomic_mass 列の小数点以下のゼロをすべて削除してください。必要に応じて、データ型を DECIMAL に調整してください。最終的な値は atomic_mass.txt ファイルに記載されています。

1. 原子番号が9の元素をデータベースに追加してください。名前は Fluorine、記号は F、質量は 18.998、融点は -220、沸点は -188.1、タイプは非金属です。

1. 原子番号が10の元素をデータベースに追加してください。名前は Neon、記号は Ne、質量は 20.18、融点は -248.6、沸点は -246.1、タイプは非金属です。

パート2: Git リポジトリの作成
1. プロジェクトフォルダー内に periodic_table フォルダーを作成し、それを Git リポジトリとして初期化します（git init を実行）。

1. リポジトリには少なくとも5つのコミットが含まれている必要があります。

パート3: スクリプトの作成
1. periodic_table フォルダー内に element.sh ファイルを作成します。

1. スクリプトファイルには実行可能な権限を付与します。

1. ./element.sh を実行すると、「Please provide an element as an argument.」と表示し、スクリプトが終了する必要があります。

1. ./element.sh 1, ./element.sh H, または ./element.sh Hydrogen を実行すると、次の情報を含むメッセージが表示されます:
```
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
```
5. その他の元素を入力して ./element.sh を実行すると、その元素に関連する情報が表示される必要があります。

1. スクリプトに入力された引数がデータベースに存在しない場合、次のメッセージのみを表示します:
```
I could not find that element in the database.
```
7. リポジトリの最初のコミットメッセージは Initial commit とします。

1. 残りのコミットメッセージは次のいずれかで始まる必要があります: fix:, feat:, refactor:, chore:, test:

1. 原子番号が1000の存在しない元素を2つのテーブルから削除します。

1. properties テーブルから type 列を削除します。

1. プロジェクトを完了させる際には、main ブランチで作業し、作業ツリーがクリーンで、未コミットの変更がないことを確認してください。
