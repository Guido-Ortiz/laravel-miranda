@extends('layout')

@section('content')

    <!-- LANDING -->
    <header>
        <p>The ultimate luxury experience</p>
        <h1>The perfect base for you</h1>
        <div>
            <button class="header--btn">Take a tour</button>
            <button class="header--btn btn--dark">Learn more</button>
        </div>
    </header>

    <!-- ARRIVAL -->
    <form class="arrival" action="/available_rooms.php" method="POST">
        <div>
            <h3>Check-In date</h3>
            <input type="date" name='checkin' />
        </div>
        <div>

            <h3>Check-Out date</h3>
            <input type="date" name='checkout' />
        </div>
        <a href="rooms.html">
            <button >Check availability</button>
        </a>
    </form>

    <!-- ABOUT US -->
    <section>
        <div class="about">
            <div class="about--container">
                <h3>About us</h3>
                <h1>Discover our underground.</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet aliquam doloribus soluta in quos
                    corrupti alias ut, illum ducimus enim hic pariatur. Dignissimos voluptatum incidunt eum consequuntur
                    aliquam rem tempore.</p>
                <button>Book now</button>
            </div>
        </div>
        <div class="about--items">
            <div class="about--img">
                <img src="./resources/about/about.jpg" alt="About Us" class="img" />
                <div>

                    <img src="./resources/about/Vector.png" alt="Team" class="team" />
                    <h2>Strong team</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem fugit laboriosam adipisci
                        aut!
                        </p>
                </div>
            </div>
            <div class="about--img">
                <img src="./resources/about/luxury.jpg" alt="Luxury Room" class="img" />
                <div class="about--dark">
                    <img src="./resources/about/rooms.png" alt="Team" class="team" />
                    <h2>Luxury room</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem fugit laboriosam adipisci
                        aut!
                        </p>
                </div>
            </div>
        </div>
    </section>

    <!-- ROOMS -->
    <section class="rooms">
        <h4>Rooms</h4>
        <h1>Hand picked rooms</h1>
    </section>

    <!-- SWIPER -->
    <div class="swiper mySwip slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide item">
                <div class="room--icons">
                    <img src="./resources/rooms/beds.png" alt="Beds" />
                    <img src="./resources/rooms/wifi.png" alt="Wi-Fi" />
                    <img src="./resources/rooms/park.png" alt="Parking" />
                    <img src="./resources/rooms/air.png" alt="AC" />
                    <img src="./resources/rooms/gym.png" alt="Gym" />
                    <img src="./resources/rooms/smoke.png" alt="Smoke not allowed" />
                    <img src="./resources/rooms/drinks.png" alt="Drinks" />
                </div>
                <div>

                    <img src="./resources/about/about.jpg" alt="Hotel Room" class="img"/>
                </div>
                <h3>Minimal duplex room</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui, iure ratione, quas id doloremque
                    quidem
                    amet
                    nemo ullam ad ab architecto enim quaerat dignissimos error accusantium ex eaque illo aspernatur.
                </p>
                <div class="room--price">$345 <span>/Night</span></div>
            </div>
            <div class="swiper-slide item">
                <div class="room--icons">
                    <img src="./resources/rooms/beds.png" alt="Beds" />
                    <img src="./resources/rooms/wifi.png" alt="Wi-Fi" />
                    <img src="./resources/rooms/park.png" alt="Parking" />
                    <img src="./resources/rooms/air.png" alt="AC" />
                    <img src="./resources/rooms/gym.png" alt="Gym" />
                    <img src="./resources/rooms/smoke.png" alt="Smoke not allowed" />
                    <img src="./resources/rooms/drinks.png" alt="Drinks" />
                </div>
                <img src="./resources/about/about.jpg" alt="Hotel Room" class="img"/>
                <h3>Minimal duplex room</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui, iure ratione, quas id doloremque
                    quidem
                    amet
                    nemo ullam ad ab architecto enim quaerat dignissimos error accusantium ex eaque illo aspernatur.
                </p>
                <div class="room--price">$345 <span>/Night</span></div>
            </div>

        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>


    <!-- VIDEO -->
    <section class="video">
        <h3>Intro video</h3>
        <h1>Meet with our luxury place.</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore sed fugiat veritatis deleniti officia delectus cumque minima debitis quas nemo? Voluptates inventore incidunt magni dolor culpa officiis porro dignissimos ullam.</p>
        <button class="btn--mob">Book now</button>
        <div>
            <video autoplay controls>
                <source src="./resources/_video/hotel.mp4" />            
            </video>
        </div>
        <button class="video--btn">Book now</button>
    </section>

    <!-- FACILITIES -->
    <section class="facilities">
        <h3>Facilities</h3>
        <h1>Core features</h1>
        <div class="facilities--container">
            <div class="facilities--item">
                <div>
                    <img src="./resources/_core/icon _1.png" alt="Icon" />
                </div>
                <h3>Have high rating</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad dolorem dolores mollitia aliquid error
                    voluptate ut porro itaque obcaecati dolore, non commodi perspiciatis minus maxime blanditiis ab
                    reiciendis accusantium impedit.</p>
                <h1>01</h1>
            </div>
            <div class="facilities--item">
                <div>
                    <img src="./resources/_core/icon _1.png" alt="Icon" />
                </div>
                <h3>Have high rating</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad dolorem dolores mollitia aliquid error
                    voluptate ut porro itaque obcaecati dolore, non commodi perspiciatis minus maxime blanditiis ab
                    reiciendis accusantium impedit.</p>
                <h1>01</h1>
            </div>
            <div class="facilities--item">
                <div>
                    <img src="./resources/_core/icon _1.png" alt="Icon" />
                </div>
                <h3>Have high rating</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad dolorem dolores mollitia aliquid error
                    voluptate ut porro itaque obcaecati dolore, non commodi perspiciatis minus maxime blanditiis ab
                    reiciendis accusantium impedit.</p>
                <h1>01</h1>
            </div>
            <div class="facilities--item">
                <div>
                    <img src="./resources/_core/icon _1.png" alt="Icon" />
                </div>
                <h3>Have high rating</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad dolorem dolores mollitia aliquid error
                    voluptate ut porro itaque obcaecati dolore, non commodi perspiciatis minus maxime blanditiis ab
                    reiciendis accusantium impedit.</p>
                <h1>01</h1>
            </div>
            <div class="facilities--item">
                <div>
                    <img src="./resources/_core/icon _1.png" alt="Icon" />
                </div>
                <h3>Have high rating</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad dolorem dolores mollitia aliquid error
                    voluptate ut porro itaque obcaecati dolore, non commodi perspiciatis minus maxime blanditiis ab
                    reiciendis accusantium impedit.</p>
                <h1>01</h1>
            </div>
            <div class="facilities--item">
                <div>
                    <img src="./resources/_core/icon _1.png" alt="Icon" />
                </div>
                <h3>Have high rating</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad dolorem dolores mollitia aliquid error
                    voluptate ut porro itaque obcaecati dolore, non commodi perspiciatis minus maxime blanditiis ab
                    reiciendis accusantium impedit.</p>
                <h1>01</h1>
            </div>
        </div>
        <div class="swiper mySwiper facilities--swiper">
            <div class="swiper-wrapper">
                
                <div class="facilities--item swiper-slide">
                    <div>
                        <img src="./resources/_core/icon _1.png" alt="Icon" />
                    </div>
                    <h3>Have high ratings</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad dolorem dolores mollitia aliquid error
                        voluptate ut porro itaque obcaecati dolore, non commodi perspiciatis minus maxime blanditiis ab
                        reiciendis accusantium impedit.</p>
                    <h1>01</h1>
                </div>
                <div class="facilities--item swiper-slide">
                    <div>
                        <img src="./resources/_core/icon _1.png" alt="Icon" />
                    </div>
                    <h3>Have high rating</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad dolorem dolores mollitia aliquid error
                        voluptate ut porro itaque obcaecati dolore, non commodi perspiciatis minus maxime blanditiis ab
                        reiciendis accusantium impedit.</p>
                    <h1>11</h1>
                </div>
            </div>
            <div class="swiper-paginations"></div>
        </div>
    </section>

    <!-- FOODS -->
    <section class="foods">
        <img src="./resources/foods/icon.png" alt="Food Icon" class="food--icon" />
        <h3>Menu</h3>
        <h1>Our foods menu</h1>

        <div class="wrapper">
            <div class="container">
                <div class="img--container">
                    <img src="./resources/foods/eggs.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title">Eggs & bacon</h4>
                    <p class="food--subtitle">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="container">
                <div class="img--container">
                    <img src="./resources/foods/eggs.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title">Eggs & bacon</h4>
                    <p class="food--subtitle">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="container">
                <div class="img--container">
                    <img src="./resources/foods/eggs.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title">Eggs & bacon</h4>
                    <p class="food--subtitle">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="container">
                <div class="img--container">
                    <img src="./resources/foods/eggs.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title">Eggs & bacon</h4>
                    <p class="food--subtitle">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
        </div>


        <div id="p1">
            <div class="food--container">
                <div class="img--container">
                    <img class="img" src="./resources/foods/eggs.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title div2">Eggs & bacon</h4>
                    <p class="food--subtitle div3">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="food--container">
                <div class="img--container">
                    <img class="img" src="./resources/foods/eggs.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title div2">Tea or coffee</h4>
                    <p class="food--subtitle div3">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="food--container">
                <div class="img--container">
                    <img class="img" src="./resources/foods/eggs.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title div2">Chia oatmeal</h4>
                    <p class="food--subtitle div3">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
        </div>
        <div id="p2">
            <div class="food--container">
                <div class="img--container">
                    <img class="img" src="./resources/foods/tea.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title div2">Eggs & bacon</h4>
                    <p class="food--subtitle div3">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="food--container">
                <div class="img--container">
                    <img class="img" src="./resources/foods/tea.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title div2">Tea or coffee</h4>
                    <p class="food--subtitle div3">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="food--container">
                <div class="img--container">
                    <img class="img" src="./resources/foods/tea.jfif" />
                </div>
                <div class="food--text">
                    <h4 class="food--title div2">Chia oatmeal</h4>
                    <p class="food--subtitle div3">Lorem ipsum dolor sit amet, consectetur adip isicing elit, sed do
                        eiusmod tempor.</p>
                </div>
            </div>
        </div>
        <div class="food--arrows">
            <div class="arrow arrow--back" id="back">&#60;</div>
            <div class="arrow arrow--next" id="forw">&#62;</div>
        </div>



    </section>

    <!-- CARROUSEL -->


    <!-- NUMBERS -->
    <section class="numbers">
        <div>
            <img src="./resources/numbers/icon 5.png" alt="Rocket"/>
            <h2>84k</h2>
            <h5 class="numbers--description">Projects completed</h5>
        </div>
        <div>
            <img src="./resources/numbers/icon 6.png" alt="Team"/>
            <h2>10M</h2>
            <h5 class="numbers--description">Active backers around world</h5>
        </div>
        <div>
            <img src="./resources/numbers/icon 7.png" alt="Finance"/>
            <h2>2k</h2>
            <h5 class="numbers--description">Categories served</h5>
        </div>
        <div>
            <img src="./resources/numbers/icon 8.png" alt="Book"/>
            <h2>10M</h2>
            <h5>Idea raised funds</h5>
        </div>
    </section>

@endsection