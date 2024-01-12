

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/tw-elements.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{asset('design/css/theme.css')}}">
    <link rel="stylesheet" href="{{asset('design/css/style.css')}}">
    <style>
        .password-container {
            position: relative;
            display: flex;
            align-items: center;
        }

        .eye-icon-container {
            position: absolute;
            right: 30px; /* Adjust the value based on your layout */
            top: 35%;
            transform: translateY(-50%);
        }

        .eye-icon {
            cursor: pointer;
        }
    </style>

</head>
<body>



<!-- component -->
<div class="px-6 md:px-20 py-5 h-screen w-screen flex flex-col lg:flex-row items-center justify-center gap-y-8">
    <div class="content text-3xl text-center lg:text-left">
        <h1 class="text-7xl text-[#62BB46] font-bold">Metali Messenger</h1>
        <p class="mt-4">Connect with friends and the world around you on Metali.</p>
    </div>
    <div class="container mx-auto flex flex-col items-center">
        <form method="post" action="{{ route('login') }}" class="shadow-xl bg-white dark:bg-black text-black dark:text-white drop-shadow-2xl w-80 sm:w-[28rem] p-4 flex flex-col rounded-lg">
            @csrf
            <input type="text" name="email" id="login_identifier" value="{{ old('email') }}" required placeholder="Email or Phone Number" class="mb-3 py-3 px-4 border border-gray-400 focus:outline-none rounded-md focus:ring-1 ring-[#62BB46] dark:text-black"/>
            @error('email')
            <span class="text-danger">{{ $message }}</span>
            @enderror

            <input type="password" name="password" id="password" required placeholder="Enter your Password" class="mb-3 py-3 px-4 border border-gray-400 focus:outline-none rounded-md focus:ring-1 ring-[#62BB46] dark:text-black"/>
            <div class="eye-icon-container">
                <button type="button" id="togglePassword" class="eye-icon"><i class="far fa-eye"></i></button>
            </div>

            @error('password')
            <span class="text-danger">{{ $message }}</span>
            @enderror
            <button type="submit" class="w-full bg-[#0d4600] hover:bg-[#115300] transition-all mt-8 mb-4 text-white p-3 rounded-lg font-semibold text-lg">Login</button>
            {{--            <a href="#" class="hover:underline hover:underline-offset-1 text-center my-2 text-[#62BB46]">Forgot Pasword?</a>--}}
            <hr />
            <a href="https://mymetali.com/register" class="hover:underline hover:underline-offset-1 text-center my-2 text-[#62BB46]">Create New Account?</a>

        </form>



    </div>

</div>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const passwordInput = document.getElementById("password");
        const togglePasswordButton = document.getElementById("togglePassword");

        togglePasswordButton.addEventListener("click", function () {
            const type = passwordInput.getAttribute("type") === "password" ? "text" : "password";
            passwordInput.setAttribute("type", type);

            // Toggle eye icon based on password visibility
            const eyeIcon = togglePasswordButton.querySelector("i");
            eyeIcon.classList.toggle("fa-eye-slash", type === "text");
        });
    });
</script>
</body>
</html>

