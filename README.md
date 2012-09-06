# CategoryDepthプラグインについて

## CategoryDepthプラグインとは

CategoryDepthプラグインは、カテゴリの階層の深さを数字で出力する Movable type のプラグインです。

今のところスタティックパブリッシングのみの対応です。あとでダイナミックにも対応させます。

## 使い方

### カテゴリコンテキストで利用する場合

カテゴリコンテキスト（MTCategoriesタグの中やカテゴリアーカイブなど）で利用する場合は <$MTCategoryDepth$> タグを利用します。

### ブログ記事コンテキストで利用する場合

ブログ記事コンテキスト（MTEntriesタグの中やブログ記事アーカイブなど）で利用する場合は <$MTEntryCategoryDepth$> タグを利用します。

ブログ記事がカテゴリに属していないときは空文字を返します。

## インストール

ダウンロードしたzipファイルを展開し、CategoryDepthディレクトリをMovable Typeのpluginsディレクトリに設置すれば完了です。