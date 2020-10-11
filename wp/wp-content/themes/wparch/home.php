<?php
/**
 * Template Name: Custom - Home Page
 *
 * This Site Home Page by Milad Abooali (Codebox.ir) - 2:52 AM 4/6/2020
 *
 * @package wpArch
 */

 /*
 * Codebox SEO
 **/
define('CB_Description', get_bloginfo('description'));

get_header();
?>




<!-- Posts -->
<div class="container-fluid">
  <div class="container starter_margin_top">
    <div class="row">
      <div class="col-md-8" id="Posts">

        <?php
        if (have_posts() ) {
            while (have_posts()) {
                the_post();
                ?>
                <section itemprop="category" class="post-list">
                  <h3><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h3>

                  <div class='publishpost' id="<?= the_ID() ?>">
                      <img alt="<?php the_title(); ?>" src="<?php the_post_thumbnail_url(null,'medium') ?>">
                    <div style="text-align: left;"><?php the_category('|'); ?></div>
                    <?php the_excerpt(); ?>
                  </div>
                  <div class="readmore">
                    <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">ادامه</a>
                  </div>
                </section>
                <?php
            }
        }
        wp_reset_postdata();
        pagenation_func();
        ?>

      </div>

<div class="col-md-4 hidden-xs" id="leftblocks" > <section class="leftblockss">
<h5>فروش پارکت و کاغذ دیواری</h5>
<a class="track" href="http://raphgroup.com/" rel="nofollow" target="_blank"><img style="
    padding-top: 18px;
" alt="شوروم معماری" src="uploads/myimages/1397/raph_ads_arel.jpg" /></a>
</section><section class="leftblockss">
<h5>پروژه های گروه معماران آرل</h5>
<div class="ProjectPresent" style="margin-top: 50px;">
	<div class="ProjectPresentTitel">
		<h4>
			<a href="fa/Content-View-148.html" title="پروژه های معماری آرل">معماری</a></h4>
	</div>
	<div>
		<div style="padding: 0 5% 5% 5%;">
			<a href="fa/Content-View-148.html" title="پروژه های معماری آرل"><img alt="پروژه صبا نقت" class="img-responsive" src="uploads/myimages/icon/Project/afftab.jpg" style=" border: 5px solid #d0d0cf;" /></a></div>
		<div class="row">
			<div class="col-xs-6 col-md-7">
				<ul>
					<li>
						<a href="fa/gallery-Category-704.html" title="پروژه های اداری">اداری</a></li>
					<li>
						<a href="fa/gallery-Category-707.html" title="پروژه های تجاری">تجاری</a></li>
					<li>
						<a href="fa/gallery-Category-705.html" title="پروژه های درمانی">درمانی</a></li>
					<li>
						<a href="fa/gallery-Category-710.html" title="پروژه های فرهنگی">فرهنگی</a></li>
				</ul>
			</div>
			<div class="col-xs-6 col-md-5">
				<ul>
					<li>
						<a href="fa/gallery-Category-706.html" title="پروژه های مسکونی آرل">مسکونی</a></li>
					<li>
						<a href="fa/gallery-Category-708.html" title="طراحی شعب بانک">شعب بانک</a></li>
					<li>
						<a href="fa/gallery-Category-709.html" title="طراحی هتل و رستوران">هتل و رستوران</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="ProjectPresent">
	<div class="ProjectPresentTitel">
		<h4>
			<a href="fa/Content-View-87.html#پروژه های طراحی داخلی آرل" title="پروژه های معماری داخلی آرل">معماری داخلی</a></h4>
	</div>
	<div>
		<div style="padding: 0 5% 5% 5%;">
			<a href="fa/Content-View-87.html#پروژه های طراحی داخلی آرل" title="پروژه های طراحی داخلی"><img alt="طراحی داخلی بانک مسکن" class="img-responsive" src="uploads/myimages/icon/Project/Bank_Maskanarel(1).jpg" style="border: 5px solid rgb(208, 208, 207); width: 300px; height: 214px;" /></a></div>
		<div class="row">
			<div class="col-xs-6 col-md-7">
				<ul>
					<li>
						<a href="fa/gallery-Category-229.html" title="پروژه های داخلی اداری">اداری</a></li>
					<li>
						<a href="fa/gallery-Category-265.html" title="پروژه های داخلی تجاری">تجاری</a></li>
					<li>
						<a href="fa/gallery-Category-384.html" title="پروژه های داخلی درمانی">درمانی</a></li>
					<li>
						<a href="fa/gallery-Category-261.html" title="طراحی داخلی پروژه های فرهنگی">فرهنگی</a></li>
				</ul>
			</div>
			<div class="col-xs-6 col-md-5">
				<ul>
					<li>
						<a href="fa/gallery-Category-258.html" title="طراحی داخلی مسکونی آرل">مسکونی</a></li>
					<li>
						<a href="fa/gallery-Category-383.html" title="طراحی داخلی شعب بانک">شعب بانک</a></li>
					<li>
						<a href="fa/gallery-Category-703.html" title="طراحی داخلی هتل و رستوران">هتل و رستوران</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="ProjectPresent">
	<div class="ProjectPresentTitel">
		<h4>
			<a href="https://www.arel.ir/fa/Content-View-89.html" title="گرافیک تجاری (تبلیغات)">گرافیک تجاری</a></h4>
	</div>
	<div>
		<div style="padding: 0 5% 5% 5%;">
			<a href="https://www.arel.ir/fa/Content-View-89.html" title="گرافیک تجاری"> <img alt="طراحی داخلی بانک مسکن" class="img-responsive" src="uploads/myimages/icon/graphics.jpg" style="border: 5px solid rgb(208, 208, 207);" /></a></div>
		<div class="row">
			<div class="col-xs-12">
				<ul>
					<li>
						<a href="fa/gallery-Category-267.html" title="طراحی پوستر">پوستر</a></li>
					<li>
						<a href="fa/gallery-Category-262.html" title="نمایشگاه">نمایشگاه</a></li>
					<li>
						<a href="fa/gallery-Category-266.html" title="لوگو تایپ">لوگو تایپ</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<br />

</section>
<section class="leftblockss">
<h5>پربازدترین اخبار در هفته گذشته</h5>
<ul class="topnews" ><p>
			<div class="newimagetops">

			<a href="https://www.arel.ir/fa/News-View-8576.html" title="معماری سبز و طراحی داخلی ویلا برای یک زوج مسن" >معماری سبز و طراحی داخلی ویلا برای یک زوج مسن (411)</a>
			<a href="https://www.arel.ir/fa/News-View-8576.html" title="معماری سبز و طراحی داخلی ویلا برای یک زوج مسن" >
			<img src="mresize.php?width=300&height=400&image=https://www.arel.ir/uploads/myimages/1399/5/Aleshtar_Architectural_Office/greenery (1).jpg" width="400"  /></div>
			<div class="clear"></a>
			</div></p><p>
			<div class="newimagetops">

			<a href="https://www.arel.ir/fa/News-View-8575.html" title="طراحی داخلی و دکوراسیون کافه وگان، تجربه ای متفاوت" >طراحی داخلی و دکوراسیون کافه وگان، تجربه ای متفاوت (234)</a>
			<a href="https://www.arel.ir/fa/News-View-8575.html" title="طراحی داخلی و دکوراسیون کافه وگان، تجربه ای متفاوت" >
			<img src="mresize.php?width=300&height=400&image=https://www.arel.ir/uploads/myimages/1399/5/Aleshtar_Architectural_Office/cafe-vegan (1).jpg" width="400"  /></div>
			<div class="clear"></a>
			</div></p><p>
			<div class="newimagetops">

			<a href="https://www.arel.ir/fa/News-View-8577.html" title="معماری بدون تماس: سنسورها و فناوری های جدید پس از COVID-19" >معماری بدون تماس: سنسورها و فناوری های جدید پس از COVID-19 (109)</a>
			<a href="https://www.arel.ir/fa/News-View-8577.html" title="معماری بدون تماس: سنسورها و فناوری های جدید پس از COVID-19" >
			<img src="mresize.php?width=300&height=400&image=https://www.arel.ir/uploads/myimages/1399/5/Aleshtar_Architectural_Office/covid-design (1).jpg" width="400"  /></div>
			<div class="clear"></a>
			</div></p></ul>
</section><section class="leftblockss">
<h5>مقالات آموزشی معماری</h5>
<ul class="newimagetops" ><li>


			<a href="https://www.arel.ir/fa/News-View-8577.html" title="معماری بدون تماس: سنسورها و فناوری های جدید پس از COVID-19" >معماری بدون تماس: سنسورها و فناوری های جدید پس از COVID-19</a>
			<div class="clear"></div>
			</li><li>


			<a href="https://www.arel.ir/fa/News-View-8573.html" title="خانه های مدرن چگونه از فناوری هوشمند استقبال می کنند؟" >خانه های مدرن چگونه از فناوری هوشمند استقبال می کنند؟</a>
			<div class="clear"></div>
			</li><li>


			<a href="https://www.arel.ir/fa/News-View-8571.html" title="آینده معماری  در دنیای پس از COVID-19 چگونه است؟" >آینده معماری  در دنیای پس از COVID-19 چگونه است؟</a>
			<div class="clear"></div>
			</li><li>


			<a href="https://www.arel.ir/fa/News-View-8570.html" title="5 نکته معماری که می توان از خانه های کوچک آموخت!" >5 نکته معماری که می توان از خانه های کوچک آموخت!</a>
			<div class="clear"></div>
			</li><li>


			<a href="https://www.arel.ir/fa/News-View-8553.html" title="10 دلیل برای تجربه کاری معماران جوان در شرکت های بزرگ معماری" >10 دلیل برای تجربه کاری معماران جوان در شرکت های بزرگ معماری</a>
			<div class="clear"></div>
			</li><li>


			<a href="https://www.arel.ir/fa/News-View-8552.html" title="پلکسی گلاس چیست؟ محافظی برای مقابله با انتشار کرونا ویروس ؟" >پلکسی گلاس چیست؟ محافظی برای مقابله با انتشار کرونا ویروس ؟</a>
			<div class="clear"></div>
			</li><li>


			<a href="https://www.arel.ir/fa/News-View-8277.html" title="روانشناسی معماری- تأثیر معماری بر عادات، رفتار و سلامت" >روانشناسی معماری- تأثیر معماری بر عادات، رفتار و سلامت</a>
			<div class="clear"></div>
			</li><li>


			<a href="https://www.arel.ir/fa/News-View-8546.html" title="نقاط کانونی یا Focal Points در دکوراسیون داخلی چیست؟" >نقاط کانونی یا Focal Points در دکوراسیون داخلی چیست؟</a>
			<div class="clear"></div>
			</li></ul>
</section><section class="leftblockss">
<h5>مطالب پیشنهادی آرل </h5>
<ul class="newimagetops" >	<a  href="https://www.arel.ir/fa/News-View-7981.html" title="چگونه خلاقانه معماری کنیم؟" "  >چگونه خلاقانه معماری کنیم؟</a>

			<a href="https://www.arel.ir/fa/News-View-7981.html" title="چگونه خلاقانه معماری کنیم؟" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1397/Creativity(4).jpg" width="300px" style="margin-bottom: 20px;"  /></a>	<a  href="https://www.arel.ir/fa/News-View-7950.html" title="آیا ما شهروند تهرانیم؟" "  >آیا ما شهروند تهرانیم؟</a>

			<a href="https://www.arel.ir/fa/News-View-7950.html" title="آیا ما شهروند تهرانیم؟" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1397/12/view.jpg" width="300px" style="margin-bottom: 20px;"  /></a>	<a  href="https://www.arel.ir/fa/News-View-7736.html" title="با این همه مسابقه‌ی معماری چه کنیم؟" "  >با این همه مسابقه‌ی معماری چه کنیم؟</a>

			<a href="https://www.arel.ir/fa/News-View-7736.html" title="با این همه مسابقه‌ی معماری چه کنیم؟" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1397/9/Architectural_competition/Architectural_competition(1).jpg" width="300px" style="margin-bottom: 20px;"  /></a>	<a  href="https://www.arel.ir/fa/News-View-7692.html" title="نبوغ موجود در ماوراء برخی از مشهورترین بناهای جهان / رنزو پیانو" "  >نبوغ موجود در ماوراء برخی از مشهورترین بناهای جهان / رنزو پیانو</a>

			<a href="https://www.arel.ir/fa/News-View-7692.html" title="نبوغ موجود در ماوراء برخی از مشهورترین بناهای جهان / رنزو پیانو" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1397/9/renzo_piano/RenzoPiano_2018-embed.jpg" width="300px" style="margin-bottom: 20px;"  /></a>	<a  href="https://www.arel.ir/fa/News-View-7671.html" title="طراحی و اجرا روف گاردن چیست؟" "  >طراحی و اجرا روف گاردن چیست؟</a>

			<a href="https://www.arel.ir/fa/News-View-7671.html" title="طراحی و اجرا روف گاردن چیست؟" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1397/8/Roof_Garden/top.jpg" width="300px" style="margin-bottom: 20px;"  /></a></ul>
</section><section class="leftblockss">
<h5>واقعیت های زندگی یک معمار</h5>
<ul class="newimagetops" >

			<a href="https://www.arel.ir/fa/News-View-8553.html" title="10 دلیل برای تجربه کاری معماران جوان در شرکت های بزرگ معماری" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/big-architecture-firms.jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-8384.html" title="10 دلیل کار در دفاتر کوچک معماری برای معماران جوان" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1398/9/small%20firm/small-architecture-firms-(1).jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-6177.html" title="9  تمرین روزانه برای افزایش هوش سه بعدی و تجسم معمارانه !" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1396/2/tajasome%20memar/1.jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-7538.html" title="درآمد منطقی از ارزهای دیجیتالی برای معماران" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1397/7/crypto(1).jpeg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-8185.html" title="گزینه های شغلی که می توانید در کنار معماری ادامه دهید !" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1398/4/archi%20career/0.jpg" width="300px" style="margin-bottom: 20px;"  /></a></ul>
</section><section class="leftblockss">
<h5>متریال و مصالح معماری</h5>
<ul class="newimagetops" >

			<a href="https://www.arel.ir/fa/News-View-6437.html" title=" 15 ویلا با نمای چوبی و مدرن!" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1396/5/wooden-house/Modern-Wooden-Houses%20(8).jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-8569.html" title="19 پروژه معماری با آجرهای اکسپوز در برزیل" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1399/5/Aleshtar_Architectural_Office/brick-arel(1).jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-8557.html" title="طراحی داخلی  Aviator Box / تقدیر شده در آرکیتایزر۲۰۲۰" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir//uploads/myimages/1399/5/Aleshtar_Architectural_Office/Aviator_Box(1).jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-8552.html" title="پلکسی گلاس چیست؟ محافظی برای مقابله با انتشار کرونا ویروس ؟" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1399/4/Plexiglass (1).jpg" width="300px" style="margin-bottom: 20px;"  /></a></ul>
</section><section class="leftblockss">
<h5>معماری و طراحی ویلا</h5>
<ul class="newimagetops" >

			<a href="https://www.arel.ir/fa/News-View-8576.html" title="معماری سبز و طراحی داخلی ویلا برای یک زوج مسن" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1399/5/Aleshtar_Architectural_Office/greenery (1).jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-6437.html" title=" 15 ویلا با نمای چوبی و مدرن!" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1396/5/wooden-house/Modern-Wooden-Houses%20(8).jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-8167.html" title="50 طراحی ویلای مدرن و خیره کننده" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1398/3/modern%20villa/villa-modern-(0).jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-6002.html" title="طراحی باغ دماوند اعتماد اثر فیروز فیروز" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1396/1/bagh%20damavand/%D8%A8%D8%A7%D8%BA-%D8%AF%D9%85%D8%A7%D9%88%D9%86%D8%AF-%D9%81%DB%8C%D8%B1%D9%88%D8%B2-%D9%81%DB%8C%D8%B1%D9%88%D8%B2-(12).jpg" width="300px" style="margin-bottom: 20px;"  /></a>

			<a href="https://www.arel.ir/fa/News-View-8491.html" title="طراحی ویلای "خانه مرزی" | توسط گروه معماری Simone Subissati" >
			<img src="https://www.arel.ir/mresize.php?width=250&height=300&image=https://www.arel.ir/uploads/myimages/1398/12/Border_Crossing_House/1.jpg" width="300px" style="margin-bottom: 20px;"  /></a></ul>
</section><section class="leftblockss">
<h5>انواع پلان</h5>
<div><ol style=" padding-right: 10px;"><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-454.html" target="" > پلان فرهنگی    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-455.html" target="" > پلان هتل    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-365.html" target="" > پلان مسکونی    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-380.html" target="" > پلان ویلا    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-427.html" target="" > پلان موزه    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-428.html" target="" > پلان دانشکده    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-433.html" target="" > پلان ورزشگاه    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-436.html" target="" > پلان مدرسه (ابتدایی، دبیرستان، هنرستان و...)      </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-437.html" target="" > پلان تجاری    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-446.html" target="" > پلان فضاهای مذهبی    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-447.html" target="" > پلان اداری    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-451.html" target="" > پلان بیمارستان، فضای بهداشتی، درمانی و کلینیک    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-464.html" target="" > پلان پارک    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-465.html" target="" > پلان استخر    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-467.html" target="" > پلان رستوران    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-468.html" target="" > پلان سوله    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-470.html" target="" > پلان ساختمان    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-482.html" target="" > پلان فرودگاه    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-483.html" target="" > پلان کافی شاپ    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-484.html" target="" > پلان کلیسا    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-539.html" target="" > پلان کتابخانه    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-540.html" target="" > پلان مهد کودک    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-543.html" target="" > پلان پارکینگ    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-544.html" target="" > پلان آمفی تئاتر    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-545.html" target="" > پلان خوابگاه دانشجویی    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-564.html" target="" > پلان چیدمان سه بعدی    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-570.html" target="" > پلان طرح هادی روستا    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-584.html" target="" > پلان تاسیسات    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-690.html" target="" > پلان آموزشگاه    </a> </li><li  >  <a   href="https://www.arel.ir/fa/Pages-Category-723.html" target="" > پلان ایستگاه های شهری، مترو  و پل    </a> </li>  </ol></div>
</section><section class="leftblockss">
<h5>معماری و طراحی داخلی فضاهای مسکونی</h5>
<div><ol style=" padding-right: 10px;"><li  >  <a   href="https://www.arel.ir/fa/News-Category-760.html" target="" > دکوراسیون داخلی بخش های خانه    </a> <ol style=" padding-right: 10px;"><li  >  <a   href="https://www.arel.ir/fa/News-Category-512.html" target="" > آشپزخانه    </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-653.html" target="" > اتاق خواب    </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-655.html" target="" > اتاق نشیمن    </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-656.html" target="" > سرویس بهداشتی    </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-657.html" target="" > اتاق غذاخوری    </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-658.html" target="" > اتاق کار خانگی    </a> </li>  </ol></li><li  >  <a   href="https://www.arel.ir/fa/News-Category-385.html" target="" > ویلا     </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-651.html" target="" > خانه    </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-652.html" target="" > آپارتمان    </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-670.html" target="" > پنت هاوس    </a> </li><li  >  <a   href="https://www.arel.ir/fa/News-Category-663.html" target="" > مجتمع مسکونی    </a> </li>  </ol></div>
</section> </div>


</div> </div></div>


<?php

get_footer();
