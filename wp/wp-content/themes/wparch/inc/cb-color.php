<?php

class MyTheme_Customize {
public static function register ( $wp_customize ) {
  $wp_customize->add_section( 'mytheme_options',
    array(
      'title'       => __('MyTheme Options RR', 'wpArch' ), //Visible title of section
      'priority'    => 3, //Determines what order this appears in
      'capability'  => 'edit_theme_options', //Capability needed to tweak
      'description' => __('Allows you to customize some example settings for MyTheme.', 'wpArch'), //Descriptive tooltip
    )
  );

  //2. Register new settings to the WP database...
  $wp_customize->add_setting( 'link_maincolor',
    array(
      'default'    => '#000', //Default setting/value to save
      'type'       => 'theme_mod', //Is this an 'option' or a 'theme_mod'?
      'capability' => 'edit_theme_options', //Optional. Special permissions for accessing this setting.
      'transport'  => 'refresh', //What triggers a refresh of the setting? 'refresh' or 'postMessage' (instant)?
      'sanitize_callback'  => 'esc_attr', //sanitization (optional?)
    )
  );

  //3. Finally, we define the control itself (which links a setting to a section and renders the HTML controls)...
  $wp_customize->add_control( new WP_Customize_Color_Control(
    $wp_customize, //Pass the $wp_customize object (required)
    'wpArch_link_maincolor', //Set a unique ID for the control
    array(
      'label'      => __( 'Main Color', 'wpArch' ), //Admin-visible name of the control
      'settings'   => 'link_maincolor', //Which setting to load and manipulate (serialized is okay)
      'priority'   => 10, //Determines the order this control appears in for the specified section
      'section'    => 'colors', //ID of the section this control should render in (can be one of yours, or a WordPress default section)
    )
  ) );

  $wp_customize->add_setting( 'link_textcolor',
    array(
      'default'    => '#fff', //Default setting/value to save
      'type'       => 'theme_mod', //Is this an 'option' or a 'theme_mod'?
      'capability' => 'edit_theme_options', //Optional. Special permissions for accessing this setting.
      'transport'  => 'refresh', //What triggers a refresh of the setting? 'refresh' or 'postMessage' (instant)?
      'sanitize_callback'  => 'esc_attr', //sanitization (optional?)
    )
  );
  $wp_customize->add_control( new WP_Customize_Color_Control(
    $wp_customize, //Pass the $wp_customize object (required)
    'wpArch_link_textcolor', //Set a unique ID for the control
    array(
      'label'      => __( 'Text Color', 'wpArch' ), //Admin-visible name of the control
      'settings'   => 'link_textcolor', //Which setting to load and manipulate (serialized is okay)
      'priority'   => 10, //Determines the order this control appears in for the specified section
      'section'    => 'colors', //ID of the section this control should render in (can be one of yours, or a WordPress default section)
    )
  ) );

  //4. We can also change built-in settings by modifying properties. For instance, let's make some stuff use live preview JS...
  $wp_customize->get_setting( 'blogname' )->transport = 'refresh';
  $wp_customize->get_setting( 'blogdescription' )->transport = 'refresh';
  $wp_customize->get_setting( 'header_textcolor' )->transport = 'refresh';
  $wp_customize->get_setting( 'background_color' )->transport = 'refresh';

}

public static function header_output() {
?>
<!--Theme Customizer CSS-->
<style type="text/css">
<?php self::generate_css('.main-color', 'background-color', 'link_maincolor'); ?>
<?php self::generate_css('.text-color', 'color', 'link_textcolor'); ?>
</style>
<!--/Theme Customizer CSS-->
<?php
}

public static function generate_css( $selector, $style, $mod_name, $prefix='', $postfix='', $echo=true ) {
$return = '';
$mod = get_theme_mod($mod_name);
if ( ! empty( $mod ) ) {
$return = sprintf('%s { %s:%s; }',
$selector,
$style,
$prefix.$mod.$postfix
);
if ( $echo ) {
echo $return;
}
}
return $return;
}
}

// Setup the Theme Customizer settings and controls...
add_action( 'customize_register' , array( 'MyTheme_Customize' , 'register' ) );

// Output custom CSS to live site
add_action( 'wp_head' , array( 'MyTheme_Customize' , 'header_output' ) );
