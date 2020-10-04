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
	<link rel="profile" href="https://gmpg.org/xfn/11">

<?php  ?>

  <link rel="apple-touch-icon" sizes="57x57" href="<?= razen_IMG ?>/icon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="<?= razen_IMG ?>/icon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="<?= razen_IMG ?>/icon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="<?= razen_IMG ?>/icon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="<?= razen_IMG ?>/icon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="<?= razen_IMG ?>/icon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="<?= razen_IMG ?>/icon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="<?= razen_IMG ?>/icon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="<?= razen_IMG ?>/icon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192"  href="<?= razen_IMG ?>/icon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="<?= razen_IMG ?>/icon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="<?= razen_IMG ?>/icon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="<?= razen_IMG ?>/icon/favicon-16x16.png">
  <link rel="manifest" href="<?= razen_IMG ?>/icon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="<?= razen_IMG ?>/icon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">


  <title><?php wp_title(); echo ' | ';  bloginfo( 'name' ); ?></title>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="https://gmpg.org/xfn/11">
<link rel="apple-touch-icon" sizes="180x180" href="<?= F_ICO ?>/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<?= F_ICO ?>/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<?= F_ICO ?>/favicon-16x16.png">
<link rel="manifest" href="<?= F_ICO ?>/site.webmanifest">
<?php wp_head(); ?>

	<?php wp_head(); ?>

  <title>معماری، دکوراسیون داخلی ، طراحی داخلی آرل </title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="samandehi" content="318348248"/>
  <base href='https://www.arel.ir/' />
  <meta name="description" content="">
  <link rel="canonical" href="" />
  <meta name='robots' content='index, follow' />
  <meta name="DC.Date.Created" content=""/>
  <meta name="DC.Type" content="article"/>
  <meta name="DC.Title" content=" معماری، دکوراسیون داخلی ، طراحی داخلی آرل "/>
  <meta name="DC.Description" content=""/>
  <meta name="DC.Language" content="fa"/>
  <meta name="DC.Publisher" content=" آرل "/>

  <meta property="og:site_name" content=" آرل ">
  <meta property="og:title" content="معماری، دکوراسیون داخلی ، طراحی داخلی آرل"/>
  <meta property="og:description" content="" />
  <meta property="og:type" content="article"/>
  <meta property="og:image" content=""/>
  <meta property="og:image:type" content="image/jpg">
  <meta property="og:image:secure_url" content=""/>
  <meta property="og:url" content="arel.ir"/>
  <link rel='shortcut icon' type='image/x-icon' href='https://www.arel.ir/uploads/myimages/icon/logo-1.jpg'>

  <link href="https://www.arel.ir/templates/arel2016/MRMcss/bootstrap.min.css" rel="stylesheet">
  <link rel="alternate" href="https://www.arel.ir" hreflang="fa-ir" />

  <link rel='stylesheet' href='https://www.arel.ir/templates/arel2016/MRMcss/MRMengine.css' type='text/css' />
  <link rel='stylesheet' href='https://www.arel.ir/templates/arel2016/MRMcss/main.css' type='text/css'/>


</head>
