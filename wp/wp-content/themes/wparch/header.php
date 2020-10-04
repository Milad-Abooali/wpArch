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

    define('CB_Canonical','https://cdn.codebox.ir');

    define('CB_CDN','https://cdn.codebox.ir');
    define('CB_IMG',get_template_directory_uri().'/asset/img/');
    define('CB_JS',get_template_directory_uri().'/asset/js/');
    define('CB_CSS',get_template_directory_uri().'/asset/css/');

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
<!-- Main Meta -->
  <base href='<?= site_url() ?>/'>
  <link rel="author" href="<?= site_url() ?>humans.txt">
  <meta name="generator" content="wordpress">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--- Codebox Data -->
  <meta name="cb-url" content="<?= site_url() ?>">
  <meta name="cb-cdn" content="<?= CB_CDN ?>">
  <meta name="cb-css" content="<?= CB_CSS ?>">
  <meta name="cb-img" content="<?= CB_IMG ?>">
  <meta name="cb-js" content="<?= CB_JS ?>">
<!--- Prefetch -->
  <link rel='dns-prefetch' href="<?= CB_CDN ?>">
<!--- Verification -->
  <meta name="yandex-verification" content=" ">
  <meta name="p:domain_verify" content=" ">
  <meta name="samandehi" content=" ">
<!-- Alternative -->
  <?php if (CB_Canonical): ?><link rel="canonical" href="<?= CB_Canonical ?>"><?php endif; ?>
  <link rel="alternate" type="application/rss+xml" title="Posts RDF/RSS 1.0 Feed" href=" <?php bloginfo( 'rdf_url' ); ?>" />
  <link rel="alternate" type="application/rss+xml" title="Posts Atom Feed" href=" <?php bloginfo( 'atom_url' ); ?>" />
  <link rel="alternate" type="application/rss+xml" title="Posts RSS 0.92 Feed" href=" <?php bloginfo( 'rss_url' ); ?>" />
  <link rel="alternate" type="application/rss+xml" title="Posts RSS 2.0 Feed" href=" <?php bloginfo( 'rss2_url' ); ?>" />
  <link rel="alternate" type="application/rss+xml" title="Comments Atom Feed" href=" <?php bloginfo( 'comments_atom_url' ); ?>" />
  <link rel="alternate" type="application/rss+xml" title="Comments RSS 2.0 Feed" href=" <?php bloginfo( 'comments_rss2_url' ); ?>" />
  <!-- <link rel="alternate" href=" " hreflang="fa-ir"> -->
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
<!-- Meta Data -->
  <meta name="DC.Date.Created" content=" ">
  <meta name="DC.Type" content="article">
  <meta name="DC.Title" content="<?php wp_title(); echo ' | ';  bloginfo( 'name' ); ?>">
  <meta name="DC.Description" content=" ">
  <meta name="DC.Language" content="fa_IR">
  <meta name="DC.Publisher" content="<?= $CB_Publisher['DC'] ?>">
<!--- Open Graph -->
  <meta property="og:locale" content="fa_IR">
  <meta property="og:type" content="article">
  <meta property="og:site_name" content="<?php bloginfo( 'name' ); ?>">
  <meta property="og:image" content="<?= ($PAGE['image']) ? $PAGE['image'] : IMG.'og.jpg'; ?>">
  <meta property="og:description" content="<?= $PAGE['description']; ?>">
  <meta property="og:url" content="<?= site_url() ?>">
  <meta property="og:title" content="<?php wp_title(); echo ' | ';  bloginfo( 'name' ); ?>">
  <meta property="article:publisher" content="<?= $CB_Publisher['og'] ?>">
<!--- Twitter Card -->
  <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="<?= $CB_Publisher['twitter'] ?>">
  <meta name="twitter:creator" content="<?= $CB_Publisher['twitter'] ?>">
  <meta name="twitter:image" content="<?= ($PAGE['image']) ? $PAGE['image'] : IMG.'og.jpg'; ?>">
  <meta name="twitter:description" content="<?= $PAGE['description']; ?>">
  <meta name="twitter:title" content="<?php wp_title(); echo ' | ';  bloginfo( 'name' ); ?>">
<!-- Custom -->

<!-- Wordpress -->
  <?php wp_head(); ?>
</head>
