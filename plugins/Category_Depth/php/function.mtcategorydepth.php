<?php
function smarty_function_mthdlr_categorydepth ($args, &$ctx) {
    # ブログの取得
    $blog = $ctx->stash('blog');
    # エントリーの取得
    $entry = $ctx->stash('entry');
    # モディファイアの取得
    $hoge = $args['hoge'];
    return 'mt:CategoryDepth is Function Tag.(Dynamic)';
}
?>
