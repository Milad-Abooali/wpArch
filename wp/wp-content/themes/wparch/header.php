<?php
/**
 * The header template file
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package wpArch
 */

    define('CB_IMG',get_template_directory_uri().'/asset/img/');
    define('CB_JS',get_template_directory_uri().'/asset/js/');
    define('CB_CSS',get_template_directory_uri().'/asset/css/');

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="profile" href="https://gmpg.org/xfn/11">
  <base href='https://www.arel.ir/'>

<!-- favicon -->
  <link rel="apple-touch-icon" sizes="57x57" href="<?= CB_IMG ?>/icon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="<?= CB_IMG ?>/icon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="<?= CB_IMG ?>/icon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="<?= CB_IMG ?>/icon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="<?= CB_IMG ?>/icon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="<?= CB_IMG ?>/icon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="<?= CB_IMG ?>/icon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="<?= CB_IMG ?>/icon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="<?= CB_IMG ?>/icon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192"  href="<?= CB_IMG ?>/icon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="<?= CB_IMG ?>/icon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="<?= CB_IMG ?>/icon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="<?= CB_IMG ?>/icon/favicon-16x16.png">
  <link rel="manifest" href="<?= CB_IMG ?>/icon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="<?= CB_IMG ?>/icon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">

<!-- page info -->
  <title><?php wp_title(); echo ' | ';  bloginfo( 'name' ); ?></title>
  <meta name="description" content=" ">
  <link rel="canonical" href=" ">
  <meta name='robots' content='index, follow'>

<!-- metadata -->
  <meta name="DC.Date.Created" content=" ">
  <meta name="DC.Type" content="article">
  <meta name="DC.Title" content=" ">
  <meta name="DC.Description" content=" ">
  <meta name="DC.Language" content="fa">
  <meta name="DC.Publisher" content=" ">

<!-- og:data -->
  <meta property="og:site_name" content=" ">
  <meta property="og:title" content=" ">
  <meta property="og:description" content=" ">
  <meta property="og:type" content="article">
  <meta property="og:image" content=" ">
  <meta property="og:image:type" content="image/jpg">
  <meta property="og:image:secure_url" content=" ">
  <meta property="og:url" content=" ">

<!-- costum -->
  <!-- <meta name="samandehi" content=" "> -->
  <!-- <link rel="alternate" href=" " hreflang="fa-ir"> -->

  <?php wp_head(); ?>
</head>
