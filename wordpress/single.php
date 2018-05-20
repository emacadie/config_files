/*
 * $WP_ROOT/wp-content/themes/$THEME/single.php
 */
<div class="postentry">
<?php the_content(); ?> /* this might not be needed for some themes */
<?php wp_link_pages(array('before' => '<p><strong>Pages:</strong> ', 'after' => '</p>', 'next_or_number' => 'number')); ?>
<p>Page created	on <?php echo get_the_date( 'Y-m-d_G:i:s' ); ?>, last modified on <?php echo get_the_modified_date( 'Y-m-d_G:i:s' ); ?>.
</p>
<p>This site has a <a href="https://www.MacAdie.net/about/disclaimer/">disclaimer</a>.</p>
</div> /* end class postentry */


