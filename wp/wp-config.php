<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_arch' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'z`S5bA74&lC?iO#P-q4WAbReuV!]^Sb=)ZST>@R@MF*2iol9LHob|>aVn}juwMA~' );
define( 'SECURE_AUTH_KEY',  '|#[*=vp+d$Zipz5Ja?[TW!azGUBs3e^!u;Ad]LW-^juvUSV=UG! gRM(y`[?+F`d' );
define( 'LOGGED_IN_KEY',    'V_Xo%O$=)i}DU.Q?tE]>(#z&ePPTjSMk^~hBf~D]E+b6K$AQzq?V|(x>h;%*>E j' );
define( 'NONCE_KEY',        ':I[w>g@RrT~>8 UqM/+u]&5y~C5~@wJ>{@{u}>5,!s)!tBUp~05f`g~FBrch4F|f' );
define( 'AUTH_SALT',        '5cT3%GHA+js|k,9)/5f%q;xmWB{B#0pV5#,ME8*) uO0R)Q2&F0_v75n|P&t`h9Z' );
define( 'SECURE_AUTH_SALT', '@=.rc;-+Q7cTV62e;PQsXi#CcQcszu4,]~ex}pu?26.[6lJr:75eO){eKs!L8R_c' );
define( 'LOGGED_IN_SALT',   '{[x.iJuhr.QntKl8fSl7S4b&}f(,)=[w=qc!s]`A){WP#YyOk]Y7202@:A`]P7$o' );
define( 'NONCE_SALT',       '&o3{BPUcg}DKZ+,E03{JA_)VS]3197xUWll+7){38Lye5dV3:kApoXI&m vBOm3n' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
