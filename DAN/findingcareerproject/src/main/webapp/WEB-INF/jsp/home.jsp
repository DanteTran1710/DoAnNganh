<%-- 
    Document   : welcome
    Created on : Aug 1, 2021, 4:46:30 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<!-- Start main -->
<main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
        <div class="container">
            <div class="section-title">
                <h2>About Us</h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <img src="<c:url value="/img/about.jpg" />" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                    <h3>Voluptatem dignissimos <strong>provident quasi corporis voluptates</strong></h3>
                    <p class="font-italic">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua.
                    </p>
                    <p>
                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.
                    </p>

                    <div class="skills-content">

                        <div class="progress">
                            <span class="skill">HTML <i class="val">100%</i></span>
                            <div class="progress-bar-wrap">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>

                        <div class="progress">
                            <span class="skill">CSS <i class="val">90%</i></span>
                            <div class="progress-bar-wrap">
                                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>

                        <div class="progress">
                            <span class="skill">JavaScript <i class="val">75%</i></span>
                            <div class="progress-bar-wrap">
                                <div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>

                        <div class="progress">
                            <span class="skill">Photoshop <i class="val">55%</i></span>
                            <div class="progress-bar-wrap">
                                <div class="progress-bar" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </section><!-- End About Us Section -->

    <!-- ======= Counts Section ======= -->
    <section class="counts section-bg">
        <div class="container">

            <div class="row no-gutters">

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="icofont-simple-smile"></i>
                        <span data-toggle="counter-up">232</span>
                        <p><strong>Happy Clients</strong> consequuntur quae qui deca rode</p>
                        <a href="#">Find out more &raquo;</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="icofont-document-folder"></i>
                        <span data-toggle="counter-up">521</span>
                        <p><strong>Projects</strong> adipisci atque cum quia aut numquam delectus</p>
                        <a href="#">Find out more &raquo;</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="icofont-live-support"></i>
                        <span data-toggle="counter-up">1,463</span>
                        <p><strong>Hours Of Support</strong> aut commodi quaerat. Aliquam ratione</p>
                        <a href="#">Find out more &raquo;</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="icofont-users-alt-5"></i>
                        <span data-toggle="counter-up">15</span>
                        <p><strong>Hard Workers</strong> rerum asperiores dolor molestiae doloribu</p>
                        <a href="#">Find out more &raquo;</a>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Counts Section -->

    <!-- ======= Our Services Section ======= -->
    <section id="services" class="services">
        <div class="container">

            <div class="section-title">
                <h2>Our Services</h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
            </div>

            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bxl-dribbble"></i></div>
                        <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                        <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-file"></i></div>
                        <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                        <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-tachometer"></i></div>
                        <h4 class="title"><a href="">Magni Dolores</a></h4>
                        <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-world"></i></div>
                        <h4 class="title"><a href="">Nemo Enim</a></h4>
                        <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Our Services Section -->

    <!-- ======= Cta Section ======= -->
    <section class="cta">
        <div class="container">

            <div class="text-center">
                <h3>Call To Action</h3>
                <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <a class="cta-btn" href="#">Call To Action</a>
            </div>

        </div>
    </section><!-- End Cta Section -->

    <!-- ======= More Services Section ======= -->
    <section class="more-services section-bg">
        <div class="container">

            <div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="<c:url value="/img/more-service-1.jpg"/>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Autem sunt earum</a></h5>
                            <p class="card-text">Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore</p>
                            <a href="#" class="btn">Explore more</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="<c:url value="/img/more-service-2.jpg"/>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Nobis et tempore</a></h5>
                            <p class="card-text">Ut quas omnis est. Non et aut tempora dignissimos similique in dignissimos. Sit incidunt et odit iusto</p>
                            <a href="#" class="btn">Explore more</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="<c:url value="/img/more-service-3.jpg"/>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Facere quia quae dolores</a></h5>
                            <p class="card-text">Modi ut et delectus. Modi nobis saepe voluptates nostrum. Sed quod consequatur quia provident dera</p>
                            <a href="#" class="btn">Explore more</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End More Services Section -->



    <!-- ======= Our Team Section ======= -->
    <section id="team" class="team">
        <div class="container">

            <div class="section-title">
                <h2>Our Team</h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
            </div>

            <div class="row">

                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="member">
                        <img src="<c:url value="team/team-1.jpg"/>" class="img-fluid" alt="">
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Walter White</h4>
                                <span>Chief Executive Officer</span>
                            </div>
                            <div class="social">
                                <a href=""><i class="icofont-twitter"></i></a>
                                <a href=""><i class="icofont-facebook"></i></a>
                                <a href=""><i class="icofont-instagram"></i></a>
                                <a href=""><i class="icofont-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.1s">
                    <div class="member">
                        <img src="<c:url value="team/team-2.jpg"/>"  class="img-fluid" alt="">
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Sarah Jhonson</h4>
                                <span>Product Manager</span>
                            </div>
                            <div class="social">
                                <a href=""><i class="icofont-twitter"></i></a>
                                <a href=""><i class="icofont-facebook"></i></a>
                                <a href=""><i class="icofont-instagram"></i></a>
                                <a href=""><i class="icofont-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.2s">
                    <div class="member">
                        <img src="<c:url value="team/team-3.jpg"/>" class="img-fluid" alt="">
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>William Anderson</h4>
                                <span>CTO</span>
                            </div>
                            <div class="social">
                                <a href=""><i class="icofont-twitter"></i></a>
                                <a href=""><i class="icofont-facebook"></i></a>
                                <a href=""><i class="icofont-instagram"></i></a>
                                <a href=""><i class="icofont-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.3s">
                    <div class="member">
                        <img src="<c:url value="team/team-4.jpg"/>"  class="img-fluid" alt="">
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Amanda Jepson</h4>
                                <span>Accountant</span>
                            </div>
                            <div class="social">
                                <a href=""><i class="icofont-twitter"></i></a>
                                <a href=""><i class="icofont-facebook"></i></a>
                                <a href=""><i class="icofont-instagram"></i></a>
                                <a href=""><i class="icofont-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Our Team Section -->

    <!-- ======= Contact Us Section ======= -->
    <section id="contact" class="contact section-bg">

        <div class="container">
            <div class="section-title">
                <h2>Contact Us</h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
            </div>
        </div>

        <div class="container-fluid">

            <div class="row">

                <div class="col-lg-6 d-flex align-items-stretch infos">

                    <div class="row">

                        <div class="col-lg-6 info d-flex flex-column align-items-stretch">
                            <i class="fa fa-map"></i>
                            <h4>Address</h4>
                            <p>A108 Adam Street,<br>New York, NY 535022</p>
                        </div>
                        <div class="col-lg-6 info info-bg d-flex flex-column align-items-stretch">
                            <i class="fa fa-phone"></i>
                            <h4>Call Us</h4>
                            <p>+1 5589 55488 55<br>+1 5589 22548 64</p>
                        </div>
                        <div class="col-lg-6 info info-bg d-flex flex-column align-items-stretch">
                            <i class="fa fa-envelope"></i>
                            <h4>Email Us</h4>
                            <p>contact@example.com<br>info@example.com</p>
                        </div>
                        <div class="col-lg-6 info d-flex flex-column align-items-stretch">
                            <i class="fa fa-clock-o"></i>
                            <h4>Working Hours</h4>
                            <p>Mon - Fri: 9AM to 5PM<br>Sunday: 9AM to 1PM</p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 d-flex align-items-stretch contact-form-wrap">
                    <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label for="name">Your Name</label>
                                <input type="text" name="name" class="form-control" id="name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validate"></div>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="email">Your Email</label>
                                <input type="email" class="form-control" name="email" id="email" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validate"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" class="form-control" name="subject" id="subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                            <div class="validate"></div>
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea class="form-control" name="message" rows="8" data-rule="required" data-msg="Please write something for us"></textarea>
                            <div class="validate"></div>
                        </div>
                        <div class="mb-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>
                        <div class="text-center"><button type="submit">Send Message</button></div>
                    </form>
                </div>
            </div>
        </div>
    </section><!-- End Contact Us Section -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
</main>
<!-- End #main -->
