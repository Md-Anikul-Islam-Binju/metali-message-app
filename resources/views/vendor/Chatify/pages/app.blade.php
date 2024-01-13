@include('Chatify::layouts.headLinks')
<!-- Navbar Start -->
<nav id="header" class="fixed z-30 w-full mt-0 bg-[#176D1F] py-1">
    <div class="lg:container flex flex-wrap items-center justify-between w-full py-1 px-1 sm:px-3 2xl:px-8 mx-auto mt-0 transition duration-700 ease-in-out transform">
        <div class="flex items-center gap-x-4 pl-6 sm:pl-2">
            <a href="#">
                <img width="130" src="{{URL::to('design/images/logo.png')}}" alt="" srcset="">
            </a>
        </div>
        @php
            $authUser = Auth::user();
        @endphp
            <!-- for mobile menu start -->
        <div class="flex gap-x-3 items-center">
            <div class="relative mr-0 block lg:hidden" data-te-dropdown-ref>
                <div class="flex items-center hidden-arrow bg-white rounded-full" id="dropdownMenuButton1" data-te-dropdown-toggle-ref aria-expanded="false" data-te-ripple-init data-te-ripple-color="light">
                    @if($authUser->profile_photo!=null)
                        <img src="{{asset('/storage/users-avatar/'.$authUser->avatar)}}" class="w-8 h-8 md:w-10 md:h-10 rounded-full shadow-lg" alt="">
                    @else
                        <img src="{{URL::to('design/images/profile.jpeg')}}" class="w-8 h-8 md:w-10 md:h-10 rounded-full shadow-lg" alt="">
                    @endif
                </div>
                <div class="absolute left-auto z-50 hidden float-left m-0 mt-0 overflow-hidden text-base text-left list-none bg-white border-none rounded-lg shadow-lg -right-20 md:right-0 dropdown-menu min-w-max bg-clip-padding [&[data-te-dropdown-show]]:block" aria-labelledby="dropdownMenuButton1" data-te-dropdown-menu-ref>
                    <ul class="p-2">
                        <li class="mt-0.5">
                            <a  class="block min-w-[8rem] text-center text-black w-full px-2 py-2 text-[14px] font-medium bg-white rounded-md dropdown-item whitespace-nowrap transition-all hover:text-white hover:bg-[#62BB46]" href="https://mymetali.com/profile" data-te-dropdown-item-ref>My Profile</a>
                        </li>
                        <li class="mt-0.5">
                            <form id="logoutForm" action="{{ route('logout') }}" method="post">
                                @csrf
                                <button type="submit" class="hidden"></button>
                            </form>
                            <a
                                class="block min-w-[8rem] text-black w-full text-center px-2 py-2 text-[14px] font-medium bg-white rounded-md dropdown-item whitespace-nowrap transition-all hover:text-white hover:bg-[#62BB46]"
                                href="#" data-te-dropdown-item-ref
                                onclick="event.preventDefault(); document.getElementById('logoutForm').submit();"
                            >
                                Logout
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- for mobile menu end -->
        <div class="relative mr-2 hidden lg:block cursor-pointer" data-te-dropdown-ref>
            <div class="flex items-center bg-white rounded-full" id="dropdownMenuButton1" data-te-dropdown-toggle-ref aria-expanded="false" data-te-ripple-init data-te-ripple-color="light">
                @if($authUser->profile_photo!=null)
                    <img src="{{asset('/storage/users-avatar/'.$authUser->avatar)}}" class="w-8 h-8 md:w-10 md:h-10 rounded-full shadow-lg" alt="">
                @else
                    <img src="{{URL::to('design/images/profile.jpeg')}}" class="w-8 h-8 md:w-10 md:h-10 rounded-full shadow-lg" alt="">
                @endif
            </div>
            <div class="absolute left-auto z-50 hidden float-left top-10 overflow-hidden text-base text-left list-none bg-white border-none rounded-lg shadow-lg -right-20 md:-right-80 dropdown-menu min-w-max bg-clip-padding [&[data-te-dropdown-show]]:block" aria-labelledby="dropdownMenuButton1" data-te-dropdown-menu-ref>
                <ul class="p-2">
                    <li class="mt-0.5">
                        <a class="block min-w-[8rem] text-black text-center w-full px-2 py-2 text-[14px] font-medium bg-white rounded-md dropdown-item whitespace-nowrap transition-all hover:text-white hover:bg-[#62BB46]" href="https://mymetali.com/profile" data-te-dropdown-item-ref>My Profile</a>
                    </li>
                    <li class="mt-0.5">
                        <form id="logoutForm" action="{{ route('logout') }}" method="post">
                            @csrf
                            <button type="submit" class="hidden"></button>
                        </form>
                        <a
                            class="block min-w-[8rem] text-black w-full text-center px-2 py-2 text-[14px] font-medium bg-white rounded-md dropdown-item whitespace-nowrap transition-all hover:text-white hover:bg-[#62BB46]"
                            href="#" data-te-dropdown-item-ref
                            onclick="event.preventDefault(); document.getElementById('logoutForm').submit();"
                        >
                            Logout
                        </a>
                    </li>

                </ul>
            </div>
        </div>

    </div>
</nav>



<div class="messenger" style="  margin-top: 55px;">
    {{-- ----------------------Users/Groups lists side---------------------- --}}
    <div class="messenger-listView {{ !!$id ? 'conversation-active' : '' }}">
        {{-- Header and search bar --}}
        <div class="m-header">
            <nav style="background-color: #9ca39f;">
                <a href="#" style="color: white;">
                    <i class="fas fa-inbox"></i> <span class="messenger-headTitle">MESSAGES</span>
                </a>
                {{-- header buttons --}}
                <nav class="m-header-right">
                    <a href="#"><i class="fas fa-cog settings-btn"></i></a>
                    <a href="#" class="listView-x"><i class="fas fa-times"></i></a>
                </nav>
            </nav>
            {{-- Search input --}}
            <input type="text" style="margin-top: 10px;" class="messenger-search" placeholder="Search" />
        </div>
        {{-- tabs and lists --}}
        <div class="m-body contacts-container">
           {{-- Lists [Users/Group] --}}
           {{-- ---------------- [ User Tab ] ---------------- --}}
           <div class="show messenger-tab users-tab app-scroll" data-view="users">
               {{-- Favorites --}}
               <div class="favorites-section">
                <p class="messenger-title"><span>Favorites</span></p>
                <div class="messenger-favorites app-scroll-hidden"></div>
               </div>
               {{-- Saved Messages --}}
               <p class="messenger-title"><span>Your Space</span></p>
               {!! view('Chatify::layouts.listItem', ['get' => 'saved']) !!}
               {{-- Contact --}}
               <p class="messenger-title"><span>All Messages</span></p>
               <div class="listOfContacts" style="width: 100%;height: calc(100% - 272px);position: relative;"></div>
           </div>
             {{-- ---------------- [ Search Tab ] ---------------- --}}
           <div class="messenger-tab search-tab app-scroll" data-view="search">
                {{-- items --}}
                <p class="messenger-title"><span>Search</span></p>
                <div class="search-records">
                    <p class="message-hint center-el"><span>Type to search..</span></p>
                </div>
             </div>
        </div>
    </div>

    {{-- ----------------------Messaging side---------------------- --}}
    <div class="messenger-messagingView">
        {{-- header title [conversation name] amd buttons --}}
        <div class="m-header m-header-messaging" style="background-color: #9ca39f;">
            <nav class="chatify-d-flex chatify-justify-content-between chatify-align-items-center">
                {{-- header back button, avatar and user name --}}
                <div class="chatify-d-flex chatify-justify-content-between chatify-align-items-center">
                    <a href="#" class="show-listView"><i class="fas fa-arrow-left"></i></a>
                    <div class="avatar av-s header-avatar" style="margin: 0px 10px; margin-top: -5px; margin-bottom: -5px;">
                    </div>
                    <a href="#" class="user-name" style="color: white;">{{ config('chatify.name') }}</a>
                </div>
                {{-- header buttons --}}
                <nav class="m-header-right">
                    <a href="#" class="add-to-favorite"><i class="fas fa-star"></i></a>
                    <a href="/"><i class="fas fa-home"></i></a>
                    <a href="#" class="show-infoSide"><i class="fas fa-info-circle"></i></a>
                </nav>
            </nav>
            {{-- Internet connection --}}
            <div class="internet-connection">
                <span class="ic-connected">Connected</span>
                <span class="ic-connecting">Connecting...</span>
                <span class="ic-noInternet">No internet access</span>
            </div>
        </div>

        {{-- Messaging area --}}
        <div class="m-body messages-container app-scroll">
            <div class="messages">
                <p class="message-hint center-el"><span>Please select a chat to start messaging</span></p>
            </div>
            {{-- Typing indicator --}}
            <div class="typing-indicator">
                <div class="message-card typing">
                    <div class="message">
                        <span class="typing-dots">
                            <span class="dot dot-1"></span>
                            <span class="dot dot-2"></span>
                            <span class="dot dot-3"></span>
                        </span>
                    </div>
                </div>
            </div>

        </div>
        {{-- Send Message Form --}}
        @include('Chatify::layouts.sendForm')
    </div>
    {{-- ---------------------- Info side ---------------------- --}}
    <div class="messenger-infoView app-scroll" >
        {!! view('Chatify::layouts.info')->render() !!}
    </div>


    <script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="{{asset('design/js/script.js')}}"></script>
    <script>
        var menuItems = document.getElementsByClassName("menu-item");
        for (var i = 0; i < menuItems.length; i++) {
            menuItems[i].addEventListener("click", function() {
                var current = document.getElementsByClassName("active-item");
                current[0].classList.remove('active-item');
                this.getElementsByTagName('a')[0].classList.add('active-item');
            });
        }
    </script>
</div>
@include('Chatify::layouts.modals')
@include('Chatify::layouts.footerLinks')
