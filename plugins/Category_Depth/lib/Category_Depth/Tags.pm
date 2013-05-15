package Category_Depth::Tags;
use strict;

# Function Tags
sub hdlr_categorydepth {
    my ($ctx, $args) = @_;
    my $cat = ( $ctx->stash('category') || $ctx->stash('archive_category') )
        or return $ctx->error(
        MT->translate(
            "You used an [_1] tag outside of the proper context.",
            '<$MT' . $ctx->stash('tag') . '$>'
        )
        );
    my @parent_cats = $cat->parent_categories();
    my $count = @parent_cats + 1;
    return $count;
}

sub hdlr_entrycategorydepth {
    my ($ctx, $args) = @_;
    my $entry = $ctx->stash('entry')
        or return $ctx->_no_entry_error();
    my $cat = $entry->category()
        or return '';
    my @parent_cats = $cat->parent_categories();
    my $count = @parent_cats + 1;
    return $count;
}

1;