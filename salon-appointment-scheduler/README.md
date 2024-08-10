### Build a Salon Appointment Scheduler Instructions
URL: [https://www.freecodecamp.org/learn/relational-database/build-a-salon-appointment-scheduler-project/build-a-salon-appointment-scheduler](https://www.freecodecamp.org/learn/relational-database/build-a-salon-appointment-scheduler-project/build-a-salon-appointment-scheduler)  


以下の指示に従ってプロジェクトを完了してください。

1. salon という名前のデータベースを作成します。

1. データベースに接続し、customers、appointments、services という名前のテーブルを作成します。

1. 各テーブルには、自動的に増加するプライマリーキー列を持たせます。

1. プライマリーキー列の命名規則は table_name_id とします。例えば、customers テーブルには customer_id という名前のプライマリーキーが必要です。顧客を表すテーブルには s を付けないことに注意してください。

1. appointments テーブルには customer_id 外部キーがあり、customers テーブルの customer_id 列を参照します。

1. appointments テーブルには service_id 外部キーがあり、services テーブルの service_id 列を参照します。

1. customers テーブルには phone 列があり、これは VARCHAR 型で、ユニークでなければなりません。

1. customers と services テーブルには name 列を含めます。

1. appointments テーブルには time 列があり、これは VARCHAR 型です。

1. services テーブルには少なくとも3行を追加し、それぞれ異なるサービスを提供します。サービスのうち1つには service_id が1である必要があります。

1. salon.sh という名前のスクリプトファイルをプロジェクトフォルダー内に作成します。

1. スクリプトファイルの最初には、ファイルが実行されるときに bash を使用するシバン（#!/bin/bash）を追加します。

1. スクリプトファイルには実行権限を付与します。

1. スクリプト内で clear コマンドを使用しないでください。

1. スクリプトは、最初の入力プロンプトの前に、提供するサービスの番号付きリストを表示します。各サービスは #) <service> の形式で表示します。例: 1) cut（ここで 1 は service_id です）。

1. 存在しないサービスを選択した場合は、再度サービスのリストを表示します。

1. スクリプトは、service_id、電話番号、顧客がまだ登録されていない場合は名前、時間を入力するようにユーザーに促します。これらの入力を SERVICE_ID_SELECTED、CUSTOMER_PHONE、CUSTOMER_NAME、SERVICE_TIME という変数に読み込みます。

1. 入力された電話番号が存在しない場合は、顧客の名前と電話番号を customers テーブルに追加します。

1. スクリプトを実行し、1、555-555-5555、Fabio、10:30 という入力を行うことで、appointments テーブルに行を作成できます。電話番号が customers テーブルに存在しない場合、この行にはその顧客の customer_id と選択したサービスの service_id が含まれます。

1. また、スクリプトを実行し、2、555-555-5555、11am という入力を行うことで、appointments テーブルに別の行を作成できます。電話番号が customers テーブルに存在する場合、この行にはその顧客の customer_id と選択したサービスの service_id が含まれます。

1. 予約が正常に追加された後、次のメッセージを出力します: I have put you down for a <service> at <time>, <name>。例えば、ユーザーがサービスとして cut を選び、時間として 10:30 を入力し、名前が Fabio であれば、出力は I have put you down for a cut at 10:30, Fabio となります。スクリプトは、上記のタスクが完了した後に終了するようにしてください。そうしないと、テストが合格しません。
