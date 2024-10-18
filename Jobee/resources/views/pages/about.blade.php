@extends('layouts.app')
@section('content')
<!-- HOME -->
<section class="section-hero overlay inner-page bg-image" style="background-image: url('{{asset('assets/images/hero_1.jpg')}}');margin-top:-24px;" id="home-section">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
          <h1 class="text-white font-weight-bold">About Us</h1>
          <div class="custom-breadcrumbs">
            <a href="#">Home</a> <span class="mx-2 slash">/</span>
            <span class="text-white"><strong>About Us</strong></span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="py-5 bg-image overlay-primary fixed overlay" id="next-section" style="background-image: url('images/hero_1.jpg');">
    <div class="container">
      <div class="row mb-5 justify-content-center">
        <div class="col-md-7 text-center">
          <h2 class="section-title mb-2 text-white">jobée site stats</h2>
          <p class="lead text-white">Jobée is a platform for job seekers to find and apply for jobs.</p>
        </div>
      </div>
      <div class="row pb-0 block__19738 section-counter">

        <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
          <div class="d-flex align-items-center justify-content-center mb-2">
            <strong class="number" data-number="1930">0</strong>
          </div>
          <span class="caption">Candidates</span>
        </div>

        <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
          <div class="d-flex align-items-center justify-content-center mb-2">
            <strong class="number" data-number="54">0</strong>
          </div>
          <span class="caption">Jobs Posted</span>
        </div>

        <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
          <div class="d-flex align-items-center justify-content-center mb-2">
            <strong class="number" data-number="120">0</strong>
          </div>
          <span class="caption">Jobs Filled</span>
        </div>

        <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
          <div class="d-flex align-items-center justify-content-center mb-2">
            <strong class="number" data-number="550">0</strong>
          </div>
          <span class="caption">Companies</span>
        </div>


      </div>
    </div>
  </section>


  <section class="site-section pb-0">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <!-- <a data-fancybox data-ratio="2" href="https://vimeo.com/317571768" class="block__96788">
            <span class="play-icon"><span class="icon-play"></span></span> -->
            <img src="{{asset('assets/images/sq_img_6.jpg')}}" alt="Image" class="img-fluid img-shadow">
          </a>
        </div>
        <div class="col-lg-5 ml-auto">
          <h2 class="section-title mb-3">jobée For Freelancers, Web Developers</h2>
          <p class="lead">Jobée is a dynamic platform tailored for freelancers and web developers, offering a wide array of job opportunities across various industries. It connects skilled professionals with clients seeking specialized expertise, fostering a collaborative environment where freelancers can showcase their portfolios, bid on projects, and build lasting relationships. With its user-friendly interface and robust site stats indicating a growing community, Jobée empowers freelancers to thrive in a competitive market while providing businesses with access to top talent.</p>
         
      </div>
    </div>
  </section>

  <section class="site-section pt-0">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mb-8 mb-lg-0 order-md-2">
          <!-- <a data-fancybox data-ratio="2" href="https://vimeo.com/317571768" class="block__96788">
            <span class="play-icon"><span class="icon-play"></span></span> -->
            <img src="{{asset('assets/images/w.jpg')}}" alt="Image" class="img-fluid img-shadow">
          </a>
        </div>
        <div class="col-lg-5 mr-auto order-md-1  mb-5 mb-lg-0">
          <h2 class="section-title mb-3">jobée For Workers</h2>
          <p class="lead">Jobée is an innovative platform designed for workers seeking diverse job opportunities across various sectors. It connects job seekers with employers looking for skilled individuals, providing a seamless experience for browsing and applying for positions. With features that allow users to create profiles, showcase their skills, and receive tailored job recommendations, Jobée empowers workers to find roles that match their expertise and career aspirations. The platform's growing user base and engagement statistics reflect its effectiveness in bridging the gap between talent and opportunity, making it an essential resource for workers in today's job market..</p>
          
        </div>
      </div>
    </div>
  </section>


 <section class="site-section">
    <div class="container">
       <div class="row mb-4">
           <div class="col-12 text-center" data-aos="fade">
            <h2 class="section-title mb-3">Our Team</h2>
           </div>
       </div>

      <div class="row align-items-center block__69944">

        <!-- First Member -->
        <div class="col-md-4">
          <img src="{{asset('assets/images/Alaa.jpg')}}" alt="Image" class="img-fluid mb-4 rounded">
        </div>
        <div class="col-md-6">
          <h3>Alaa Fayez </h3>
          <p class="text-muted">Backend Developer</p>
          <p> senior computer science student,intern at DEPI and
            a backend developer with a focus on building efficient and secure web applications. With a robust understanding of PHP and simple experience working with the Laravel framework and have a background in frontend development fundamentals.
            worked on several projects in the field of web development.
            
          </p>
          <div class="social mt-4">
            <a href="https://www.facebook.com/alaa.fayez.526/"><span class="icon-facebook"></span></a>
            <a href="https://www.linkedin.com/in/alaa-fayez-2b4178248"><span class="icon-linkedin"></span></a>
          </div>
        </div>

        <!-- Second Member -->
        <div class="col-md-4">
          <img src="{{asset('assets/images/nour.jpg')}}" alt="Image" class="img-fluid mb-4 rounded">
        </div>
        <div class="col-md-6">
          <h3>Nourhan Khaled</h3>
          <p class="text-muted">Backend Developer || Presentation Designer</p>
          <p>a Junior Full Stack Developer with a strong passion for web development and building interactive, responsive web applications. She has foundational experience in both frontend and backend technologies and is continuously improving her skills in creating user-friendly and secure web solutions. enjoys learning new tools and frameworks to expand her expertise in the field.</p>
          <div class="social mt-4">
            <a href="https://www.facebook.com/khaled.nka.9?mibextid=LQQJ4d"><span class="icon-facebook"></span></a>
            <a href="https://www.linkedin.com/in/nourhan-khaled34"><span class="icon-linkedin"></span></a>
          </div>
        </div>
        
        <!-- Third Member -->
        <div class="col-md-4">
          <img src="{{asset('assets/images/hedayya.jpg')}}" alt="Image" class="img-fluid mb-4 rounded">
        </div>
        <div class="col-md-6">
          <h3>Hedaya Adel</h3>
          <p class="text-muted">Backend Developer</p>
          <p> a dedicated and enthusiastic backend developer currently in my fourth year of studying Computer Science at Mansoura University, specializing in Information 
           Systems. I am eager to leverage my academic knowledge and hands-on experience to 
           contribute effectively in a backend development role, enhance my professional skills, 
           and be part of a forward-thinking company.</p>
          <div class="social mt-4">
            <a href="https://www.facebook.com/hedaya.adel.94?mibextid=ZbWKwL"><span class="icon-facebook"></span></a>
            <a href="https://www.linkedin.com/in/hedaya-adel-096735244?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><span class="icon-linkedin"></span></a>
          </div> 
        </div>

        <!-- Fourth Member -->
        <div class="col-md-4">
          <img src="{{asset('assets/images/sara.jpg')}}" alt="Image" class="img-fluid mb-4 rounded">
        </div>
        <div class="col-md-6">
          <h3>Sara Mohamed </h3>
          <p class="text-muted">Backend Developer</p>
          <p>Junior backend developer with expertise in PHP, Laravel, and MySQL, specializing in building efficient, scalable applications. Also, skilled in front-end technologies including CSS, HTML, JavaScript, and Bootstrap, with a solid understanding of object-oriented programming (OOP).</p>
          <div class="social mt-4">
            <a href="https://www.facebook.com/share/Uf2xoKkNyMVEvbhw"><span class="icon-facebook"></span></a>
            <a href="https://www.linkedin.com/in/sara-mohamed6295?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><span class="icon-linkedin"></span></a>
          </div>
        </div>

        <!-- Fifth Member -->
        <div class="col-md-4">
          <img src="{{asset('assets/images/samaa.jpg')}}" alt="Image" class="img-fluid mb-4 rounded">
        </div>
        <div class="col-md-5">
          <h3>Samaa Ramadan</h3>
          <p class="text-muted">backend developer</p>
          <p>Back-end PHP developer and senior Computer Science student with solid experience in web application development. Currently interning at DPI, where I am honing my skills in building secure, scalable, and efficient back-end systems.</p>
          <div class="social mt-4">
            <a href="https://www.facebook.com/samaa.elnady.37?mibextid=LQQJ4d"><span class="icon-facebook"></span></a>
            <a href="https://www.linkedin.com/in/samaa-elnady?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app"><span class="icon-linkedin"></span></a>
          </div>
        </div>

        <!-- Sixth Member -->
        <div class="col-md-4">
          <img src="{{asset('assets/images/yomna.jpg')}}" alt="Image" class="img-fluid mb-4 rounded">
        </div>
        <div class="col-md-6">
          <h3>Yomna Mohamed</h3>
          <p class="text-muted">Backend Developer|| Accountant</p>
          <p>Accountant with Huge interests in Computer science Filled with passion in Web Development 
</p>
          <div class="social mt-4">
            <a href="https://www.facebook.com/yomnamu7med?mibextid=LQQJ4d"><span class="icon-facebook"></span></a>
            <a href="https://www.linkedin.com/in/yomna-mohamed-5626841bb?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app"><span class="icon-linkedin"></span></a>
          </div>
        </div>

      </div>
    </div>
</section>
@endsection

