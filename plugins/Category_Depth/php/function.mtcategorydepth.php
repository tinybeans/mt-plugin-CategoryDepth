<?php
function smarty_function_mtcategorydepth ($args, &$ctx) {
    require_once('block.mtparentcategories.php');
    $cat = $ctx->stash('category');
    if (empty($cat)) {
        return '';
    }
    else {
        $parents = array();
        get_parent_categories($cat, $ctx, $parents, 'category');
        return count($parents) + 1;
    }
}
?>
