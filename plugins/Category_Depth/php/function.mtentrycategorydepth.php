<?php
function smarty_function_mtentrycategorydepth ($args, &$ctx) {
    require_once('block.mtparentcategories.php');
    $entry = $ctx->stash('entry');
    if (empty($entry)) {
        return '';
    }
    $cat = $entry->category();
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
