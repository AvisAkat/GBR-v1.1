<x-guest-layout>

    <style>

        .buslogo2-container{
            display: none;
        }

        .buslogo1-container{
            align-content: center;
            text-align: center;
            padding-top: 14rem;
        }

        .register_form form{
                padding: 2rem;
                padding-top: 3rem;
            }

        .buslogo1{
            width: 100%;
            transition: 1s ease-in-out;
        }

        .buslogo2{
            transition: 1s ease-in-out;
            width: 50%;
            margin-bottom: -2rem;
        }

        
        .signbutt{
            background-color: #FF7A00;
            border: none;
            color: blue;
            
        }
        .signbutt:hover{
            background-color: #fc7400;
            
        }

        
        

        @media (max-width: 1030px){
            .buslogo1-container{
                display: none;
            }

            .register_form{
                width: 70%;
                margin-left: 15%;
            }

            .buslogo2-container{
                display: inline;
                text-align: center;
                width: 70%;
                margin-left: 15%;
            }

        }

        @media (max-width: 870px){
           

            .register_form{
                width: 80%;
                margin-left: 10%;
            }
            
        }

        @media (max-width: 767px){
            
            .register_form form{
              
                text-align: left;
                
            }
            
        }

        @media (max-width: 470px){
            
            .register_form form{
                padding-left: 5px;
                padding-right: 5px;
                
            }

            .register_form{
                width: 90%;
                margin-left: 5%;
            }

            .buslogo2-container{
                display: inline;
                text-align: center;
                width: 90%;
                margin-left: 5%;
            }
            
        }


    </style>
    <div class="row p-4">
        <div class="buslogo1-container col-6" style="">
            <a href="/">
                <img src="buslogo.png" class="buslogo1" style="" />
            </a>
        </div>
        <div class="buslogo2-container col-6" style="">
            <a href="/">
                <img src="buslogo.png" class="buslogo2" style="" />
            </a>
        </div>
        <div class="register_form col-6 shadow">
            <form class="row g-3" action="" method="">
                <h1 class="mb-4" style="color: #0155C2;text-align: center;">Register Form</h1>
                <h6 class="mb-2" style="color: #010912;text-align: left;">Fields Mark with <a style="color: red;">*</a> are mandatory.</h6>
                <hr style="margin-top: 0%;"/>
                <div class="col-md-6">
                    <label for="input_first_name" class="form-label">First Name<a style="color: red;"> *</a></label>
                    <input type="text" name="first_name" class="form-control border-primary" id="input_first_name" placeholder="John" value="{{old('first_name')}}">
                </div>
                <div class="col-md-6">
                    <label for="input_last_name" class="form-label">Last Name<a style="color: red;"> *</a></label>
                    <input type="text" name="last_name" class="form-control border-primary" id="input_last_name" placeholder="Smith" value="{{old('last_name')}}">
                </div>
                <div class="col-md-12">
                    <label for="input_email" class="form-label">Email<a style="color: red;"> *</a></label>
                    <input type="email" name="email" class="form-control border-primary" id="input_email" placeholder="johnsmith@example.com" value="{{old('email')}}">
                </div>
                <div class="col-12">
                    <label for="input_Address" class="form-label">Address</label>
                    <input type="text" name="address" class="form-control border-primary" id="input_Address" placeholder="1234 Main St" value="{{old('address')}}">
                </div>
               
                <div class="col-md-4">
                    <label for="input_phone" class="form-label">Phone Number<a style="color: red;"> *</a></label>
                    
                    <div class="input-group">
                        <span class="input-group-text border-primary" id="basic-addon1" >+233</span>
                        <input id="input_phone" type="text" name="phone" class="form-control border-primary" placeholder="User's Contact.." aria-label="Username" aria-describedby="basic-addon1" value="{{old('phone')}}">
                        
                    </div>
                    
                </div>
                <div class="col-md-4" style="text-align: center;">
                    <div class="form-group " >
                        <label class="form-label" style="text-align: left;">Gender</label>
                        <br />
                    
                        <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="gender" id="input_gender1" autocomplete="off" value="male"
                            @if(old('gender') === 'male'){selected="selected"}@endif
                            >
                            <label class="btn btn-outline-primary" for="input_gender1" style="border-top-left-radius: 0.5rem;border-bottom-left-radius: 0.5rem">Male</label>
                        
                            <input type="radio" class="btn-check" name="gender" id="input_gender2" autocomplete="off" value="female"
                            @if(old('gender') === 'female'){selected="selected"}@endif
                            >
                            <label class="btn btn-outline-primary" for="input_gender2" style="border-top-right-radius: 0.5rem;border-bottom-right-radius: 0.5rem">Female</label>
                        
                        </div>
                        
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="input_dob" class="form-label">Date Of Birth</label>
                    <input type="date" name="date_of_birth" class="form-control border-primary" id="input_dob" placeholder="" value="{{old('date_of_birth')}}">
                </div>
                
                <div class="col-md-6 mt-4">
                    <label for="input_Password" class="form-label">Password<a style="color: red;"> *</a></label>
                    <input type="password" name="password" class="form-control border-primary" id="input_Password">
                </div>
                <div class="col-md-6 mt-4">
                    <label for="input_Password" class="form-label">Confirm Password<a style="color: red;"> *</a></label>
                    <input type="password" name="password_confirmation" class="form-control border-primary" id="input_Password4">
                </div>
                <div class="col-md-12 mt-4" style="text-align: left;">
                    Already have an account? <a href="{{ route('login')}} " style="color: #0155C2;text-decoration: none;">Sign In</a>
                </div>
                
                
                <div class="col-12 mt-5">
                   <button type="submit" class="btn btn-primary w-100 signbutt" style="">Sign Up</button>
                </div>
            </form>
        
        
        
        
        </div>
    </div>
</x-guest-layout>
