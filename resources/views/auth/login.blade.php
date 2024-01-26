{{-- <x-guest-layout>
    <div class="p-4 mt-5 mb-5 me-3" style="">
        <center>
        <div class="col-6" style="align-content: center;text-align: center;padding-top: 10rem;">
            <a href="/">
                <img src="buslogo.png" class="" style="width: 15rem;" />
            </a>
        </div>
        
            <div class="register_form col-6 mb-5" style="margin-top: -40px;">
                <form class="row g-3 p-5 ps-3 pe-3 shadow" action="" method="" style="width: 23rem;">
                    <h1 class="text-primary mb-4 text-center">Login</h1>
                    <div class="col-md-12" style="text-align: left;">
                        <label for="input_email_phone" class="form-label">Email/Phone</label>
                        <input type="text" name="email_phone" class="form-control border-primary" id="input_email_phone" value="{{old('email_phone')}}">
                    </div>
                    
                    <div class="col-md-12 mt-4" style="text-align: left;">
                        <label for="input_Password" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control border-primary" id="input_Password">
                    </div>
                    
                    <div class="col-12 mt-5">
                    <button type="submit" class="btn btn-primary w-100">Sign in</button>
                    </div>
                </form>
            
            
        
        
            </div>
        </center>
    </div>
</x-guest-layout> --}}

<x-guest-layout>

    <style>
        .signbutt{
            background-color: #FF7A00;
            border: none;
            color: blue;
            
        }
        .signbutt:hover{
            background-color: #fc7400;
            
        }
    </style>
    <div class="row p-4">
        
        <div class="col-6" style="align-content: center;text-align: center;padding-top: 10rem;">
            <a href="/">
                <img src="buslogo.png" class="" style="width: 35rem;" />
            </a>
        </div>
        
        <div class="register_form col-6 mb-5" style="margin-top: 40px;">
            <form class="row g-3 p-5 ps-3 pe-3 shadow" action="{{ route('login') }}" method="POST" style="width: 23rem;">
                @csrf
                <h1 class="text-primary mb-4 text-center">Login</h1>
                <div class="col-md-12" style="text-align: left;">
                    <label for="login" class="form-label">Email/Phone</label>
                    <input type="text" name="login" class="form-control border-primary" id="login" value="{{old('login')}}">
                </div>
                
                <div class="col-md-12 mt-4" style="text-align: left;">
                    <label for="input_Password" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control border-primary" id="input_Password">
                </div>
                <div class="col-md-12 mt-4" style="text-align: left;">
                    Don't have an account? <a href="#" style="color: #0155C2;text-decoration: none;">Sign up</a>
                </div>
                
                <div class="col-12 mt-5">
                <button type="submit" class="btn btn-primary w-100 signbutt">Sign in</button>
                </div>
            </form>
        
        
    
    
        </div>
       
    </div>
</x-guest-layout>

