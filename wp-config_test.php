<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** Database username */
define( 'DB_USER', 'skapersk' );

/** Database password */
define( 'DB_PASSWORD', 'Ki74Bh?,Bd78' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '{t)PHPj04>||pid:OBmO@lC[HI7W9CFu,t}AdXFZRkQ{HHNP:<{Y4(u^F{Y2&qE4' );
define( 'SECURE_AUTH_KEY',  'IY.M)LNu}NpskRyK{9i&(}i~,629|b76z-Qbtg~d5ECGi!NOz5 ~ytzwQj.,Q5c^' );
define( 'LOGGED_IN_KEY',    '>iskmWd:jB6|Z6T>y=*eQBRhPt8/@UX6GwjRLqy^gLf0-Ru,6T&wfAD@X|,9Mv@W' );
define( 'NONCE_KEY',        'I>7L_H4#Dv.Nw8CVZYi*%)@}]b;XV^>%JO=^WTZT<nm__nfF!a}8M-![-K2C$47B' );
define( 'AUTH_SALT',        'X<cOau>Yfwe!3=n0xEST<fIzN@Qf_!Br&.]kXE`J4sl;iR9/[a%ux|B].S^w$`d}' );
define( 'SECURE_AUTH_SALT', 'D[?#:uFOa@,>c]Cwj8$6l.jnxD%d|O,,SMj@7]mS<{ouz}7u=:%Fu#u<;6rFQ8CA' );
define( 'LOGGED_IN_SALT',   'uSNXwq/$TgWZ#F>qTnqq,$mUs?vE WAAeJrK&9p00{T%F :Im(K/nIUK0ac+vEz^' );
define( 'NONCE_SALT',       'V`A3fgDkpA@2]s|1ae}Yn7<IH4cAJ@K,Bd^>lEdTRzNso75vuUS^;5)WE/TbUK;|' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
