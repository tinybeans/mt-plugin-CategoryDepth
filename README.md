# CategoryDepthプラグインについて

## CategoryDepthプラグインとは

CategoryDepthプラグインは、カテゴリの階層の深さを数字で出力する Movable type のプラグインです。スタティックパブリッシングとダイナミックパブリッシング両方に対応しています。ダイナミックパブリッシングの方は藤本さんが書いてくれました（[tinybeansさんのCategoryDepthプラグインをダイナミック対応にしてみた - The blog of H.Fujimoto](http://www.h-fj.com/blog/archives/2012/09/06-132840.php)）。

## 使い方

### カテゴリコンテキストで利用する場合

カテゴリコンテキスト（MTCategoriesタグの中やカテゴリアーカイブなど）で利用する場合は <$MTCategoryDepth$> タグを利用します。

### ブログ記事コンテキストで利用する場合

ブログ記事コンテキスト（MTEntriesタグの中やブログ記事アーカイブなど）で利用する場合は <$MTEntryCategoryDepth$> タグを利用します。

ブログ記事がカテゴリに属していないときは空文字を返します。

## インストール

ダウンロードしたzipファイルを展開し、CategoryDepthディレクトリをMovable Typeのpluginsディレクトリに設置すれば完了です。