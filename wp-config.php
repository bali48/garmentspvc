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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'garmentspvc');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');


/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '[<LPxo4(j1NHn#!Y-p1&f6gm|]j_#j$3,~m3T, y3LW2ipVcs%`QKV#!]:LSCbRf');
define('SECURE_AUTH_KEY',  '&Zpf9<|z6.$4f(D0+crfSPA^B#rL *P0Tu1}}nFU~{_.XIX?X1V]s{:d:3Hj9^VY');
define('LOGGED_IN_KEY',    '3d!+5&d`B~$SC _]9|Nk?]#BCg7iyeH@vj~VA~Hk4!)ZfI9I-FGk~q3m!p;CjyVP');
define('NONCE_KEY',        '%K5H_8G]x4fSEb>L?3mGIyRxY$wG2p|qJ5n>`mFfFv,<Ub! IU+xzc)`yyf9H5XP');
define('AUTH_SALT',        'zQ~FS7%$QdZs1&NRP&U0(gu>4TuPe^lvHr6[S`|f*zvS_4JFV~H4Y0R1uABJq:2B');
define('SECURE_AUTH_SALT', 'ZCD)O9MP{K %Mz#+SBmv(q$Y/T7U.]3n`/ku$k.n*y^@a~]hE6+/T1UZrqZPQ?Dl');
define('LOGGED_IN_SALT',   '.F{MKd8Qg>42vBq,a5s)3&1>ea=&B@W MXiYA_:oA3vS0{yn8m:/+t*wznZylI%t');
define('NONCE_SALT',       'mYKuRA*=i7JN_fX|FArvHl.Cy?r1tU)t y<XzHzP`c#}(0_{{q`T[ /n{:seaBO/');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
