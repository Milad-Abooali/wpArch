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
define( 'AUTH_KEY',         'ABhE9O;ev!Z_o,=wQ|oOH/8URzLYn(3wBJ&><yD;|JbO1!Cx~56t=8%D;xzRY8!.' );
define( 'SECURE_AUTH_KEY',  '-eK|I>6sY&.%:owI7$Cpkxf6+>b*V?;Qr+gKW]3m:y$,20L,Q{<2OqiC*HDrRXq_' );
define( 'LOGGED_IN_KEY',    '(a4-!rk~&1L3t2(V<}uou0F4F%}E]6Iv9M%Dd@!rLVC3|`d$1/-#Obiqj@h742& ' );
define( 'NONCE_KEY',        'KA*xZhIkU~N2:qaHCtSknJe;`ZW-A&#uU}H]F!FhlX^w@>LM?EbTCn&rbeMfH)0H' );
define( 'AUTH_SALT',        '42~GEVb39DS;qZ!,ZRz(hXNtnhxpBZy/;J>Zpc(*r#;o_l.EYo*M1;XHelQ )KNF' );
define( 'SECURE_AUTH_SALT', 'XLRVm)(bq5)X(G9d#.)?]he{5Q~Pv#k,fRcCF9ut_=NTkN*X(nQyqxR{HSr*mrw~' );
define( 'LOGGED_IN_SALT',   '.|9;vA>Uu68z$wk=CRT45J4S.GV2`L+=P480s79df*.|%WS/No/W3Iiijz,,:45V' );
define( 'NONCE_SALT',       '[J?o=?6l?,hCmhiXx*:p~1JmBR,V/E -^8#P?X&@nvD1$24T6Vqt7LAZUK!J/,bu' );

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
