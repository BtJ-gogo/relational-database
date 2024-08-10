### Build a World Cup Database Instructions
URL: [https://www.freecodecamp.org/learn/relational-database/build-a-world-cup-database-project/build-a-world-cup-database](https://www.freecodecamp.org/learn/relational-database/build-a-world-cup-database-project/build-a-world-cup-database)  
  
以下のタスクを完了してください。

1. プロジェクトフォルダー内に number_guessing_game フォルダーを作成します。

2. number_guessing_game フォルダー内に number_guess.sh を作成し、実行可能な権限を付与します。

1. スクリプトファイルの先頭に #!/bin/bash のシバンを追加します。

1. number_guessing_game フォルダーを Git リポジトリに変換します。

1. Git リポジトリには少なくとも5つのコミットが含まれている必要があります。

1. スクリプトは、ユーザーが予測する必要がある数字をランダムに生成する必要があります。

1. スクリプトを実行すると、ユーザー名の入力を求めるプロンプトを表示し、ユーザー名を受け取ります。データベースは、22文字のユーザー名を許可する必要があります。

1. そのユーザー名が以前に使用されていた場合、次のメッセージを表示します:
```
Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses.
```
ここで、<username> はデータベース内のユーザー名、<games_played> はそのユーザーがプレイしたゲームの総数、<best_game> はそのユーザーがゲームをクリアするのにかかった最少の試行回数です。

9. ユーザー名が以前に使用されていない場合、次のメッセージを表示します:

```
Welcome, <username>! It looks like this is your first time here.
```
10. 次に、Guess the secret number between 1 and 1000: と表示し、ユーザーからの入力を受け取ります。

1. 秘密の数字が当たるまで、以下のようなメッセージを表示します:

    *もし以前の入力が秘密の数字よりも高い場合: It's lower than that, guess again:
    *もし以前の入力が秘密の数字よりも低い場合: It's higher than that, guess again:
1. 整数以外の入力があった場合は、That is not an integer, guess again: と表示します。

1. 秘密の数字が当たった時には、次のメッセージを表示し、スクリプトを終了します:

```
You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!
```
ここで、<number_of_guesses> は秘密の数字を当てるのにかかった試行回数、<secret_number> は秘密の数字です。

14. 最初のコミットメッセージは Initial commit とします。

15. 残りのコミットメッセージは次のいずれかで始まる必要があります: fix:, feat:, refactor:, chore:, test:

16. プロジェクトを完了させる際は、main ブランチで作業し、作業ツリーがクリーンで、未コミットの変更がないことを確認してください。
