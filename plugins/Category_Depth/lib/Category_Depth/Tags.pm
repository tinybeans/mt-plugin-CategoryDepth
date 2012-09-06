package Category_Depth::Tags;
use strict;

# Function Tags
sub hdlr_categorydepth {
    my ($ctx, $args) = @_;
    my $cat = $ctx->stash('category')
        or return $ctx->error('MTCategoryDepth called without an category in context');
    my @parent_cats = $cat->parent_categories();
    my $count = @parent_cats + 1;
    return $count;
}

sub hdlr_entrycategorydepth {
    my ($ctx, $args) = @_;
    my $entry = $ctx->stash('entry')
        or return $ctx->error('MTEntryCategoryDepth called without an entry in context');
    my $cat = $entry->category()
        or return '';
    my @parent_cats = $cat->parent_categories();
    my $count = @parent_cats + 1;
    return $count;
}

1;