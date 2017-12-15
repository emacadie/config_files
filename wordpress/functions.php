
/**
 * This goes in $WP_ROOT/wp-content/themes/$THEME/functions.php
 *
 */

function exclude_category_home( $query ) {
    if ( $query->is_home ) {
         $query->set( 'cat', '-42' ); // $query->set( 'cat', '-5, -34' );
    }
    return $query;
}

add_filter( 'pre_get_posts', 'exclude_category_home' );

