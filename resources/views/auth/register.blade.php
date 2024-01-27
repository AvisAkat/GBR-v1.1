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

        .invalid-feedback{
            display: inline;
        }

    </style>
    <div class="row p-4">
        <div class="col-6" style="align-content: center;text-align: center;padding-top: 10rem;">
            <a href="/">
                <img src="buslogo.png" class="" style="width: 45rem;" />
            </a>
        </div>
        <div class="register_form col-6 shadow">
            <form class="row g-3 p-5" action="{{ route('register') }}" method="POST">
                @csrf
                <h1 class="mb-4" style="color: #0155C2;text-align: center;">Register Form</h1>
                <div class="col-md-6">
                    <label for="input_first_name" class="form-label">First Name</label>
                    <input type="text" name="first_name" class="form-control @if($errors->has('first_name')) is-invalid @else border-primary @endif" id="input_first_name" placeholder="John"  value="{{old('first_name')}}" required>
                    @if($errors->has('first_name'))
                        <div id="input_first_name" class="invalid-feedback">
                            {{ $errors->first('first_name') }}
                        </div>
                    @endif
                    
                </div>
                <div class="col-md-6">
                    <label for="input_last_name" class="form-label">Last Name</label>
                    <input type="text" name="last_name" class="form-control @if($errors->has('last_name')) is-invalid @else border-primary @endif" id="input_last_name" placeholder="Smith" value="{{old('last_name')}}" required>
                    @if($errors->has('last_name'))
                        <div id="input_last_name" class="invalid-feedback">
                            {{ $errors->first('last_name') }}
                        </div>
                    @endif
                </div>
                <div class="col-md-12">
                    <label for="input_email" class="form-label">Email</label>
                    <input type="email" name="email" class="form-control @if($errors->has('email')) is-invalid @else border-primary @endif" id="input_email" placeholder="johnsmith@example.com" value="{{old('email')}}" required>
                    @if($errors->has('email'))
                        <div id="input_email" class="invalid-feedback">
                            {{ $errors->first('email') }}
                        </div>
                    @endif
                </div>
                <div class="col-12">
                    <label for="input_Address" class="form-label">Address</label>
                    <input type="text" name="address" class="form-control @if($errors->has('address')) is-invalid @else border-primary @endif" id="input_Address" placeholder="1234 Main St" value="{{old('address')}}">
                    @if($errors->has('address'))
                        <div id="input_Address" class="invalid-feedback">
                            {{ $errors->first('address') }}
                        </div>
                    @endif
                </div>
               
                <div class="col-md-4">
                    <label for="input_phone" class="form-label">Phone Number</label>
                    
                    <div class="input-group">
                        <span class="input-group-text @if($errors->has('phone')) border-danger @else border-primary @endif" id="basic-addon1" >+233</span>
                        <input id="input_phone" type="text" name="phone" maxlength="9" class="form-control @if($errors->has('phone')) is-invalid @else border-primary @endif" placeholder="User's Contact.." aria-label="Username" aria-describedby="basic-addon1" value="{{old('phone')}}" required>
                        @if($errors->has('phone'))
                            <div id="input_phone" class="invalid-feedback">
                                {{ $errors->first('phone') }}
                            </div>
                        @endif
                    </div>
                    
                </div>
                <div class="col-md-4" style="text-align: center;">
                    <div class="form-group " >
                        <label class="form-label" style="text-align: left;">Gender</label>
                        <br />
                    
                        <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check " name="gender" id="input_gender1" autocomplete="off" value="male"
                                @if(old('gender') == 'male')checked="checked"@endif
                            >
                            <label class="btn @if($errors->has('gender')) btn-outline-danger @else btn-outline-primary @endif" for="input_gender1" style="border-top-left-radius: 0.5rem;border-bottom-left-radius: 0.5rem">Male</label>
                        
                            <input type="radio" class="btn-check" name="gender" id="input_gender2" autocomplete="off" value="female"
                                @if(old('gender') == 'female')checked="checked"@endif
                            >
                            <label class="btn @if($errors->has('gender')) btn-outline-danger @else btn-outline-primary @endif" for="input_gender2" style="border-top-right-radius: 0.5rem;border-bottom-right-radius: 0.5rem">Female</label>
                        
                        </div>
                        @if($errors->has('gender'))
                            <br />
                            <div id="input_gender1 input_gender2" class="invalid-feedback">
                                {{ $errors->first('gender') }}
                            </div>
                        @endif
                        
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="input_dob" class="form-label">Date Of Birth</label>
                    <input type="date" name="date_of_birth" class="form-control @if($errors->has('date_of_birth')) is-invalid @else border-primary @endif" id="input_dob" placeholder="" value="{{old('date_of_birth')}}">
                    @if($errors->has('date_of_birth'))
                        <div id="input_dob" class="invalid-feedback">
                            {{ $errors->first('date_of_birth') }}
                        </div>
                    @endif
                </div>
                
                <div class="col-md-6 mt-4">
                    <label for="input_Password" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control @if($errors->has('password')) is-invalid @else border-primary @endif" id="input_Password" required>
                    @if($errors->has('password'))
                        <div id="input_Password" class="invalid-feedback">
                            {{ $errors->first('password') }}
                        </div>
                    @endif
                </div>
                <div class="col-md-6 mt-4">
                    <label for="input_Password" class="form-label">Confirm Password</label>
                    <input type="password" name="password_confirmation" class="form-control @if($errors->has('password')) is-invalid @else border-primary @endif" id="input_Password4" required>
                    @if($errors->has('password'))
                        <div id="input_Password" class="invalid-feedback">
                            {{ $errors->first('password') }}
                        </div>
                    @endif
                </div>
                <div class="col-md-12 mt-4" style="text-align: left;">
                    Already have an account? <a href="#" style="color: #0155C2;text-decoration: none;">Sign In</a>
                </div>
                
                
                <div class="col-12 mt-5">
                   <button type="submit" class="btn btn-primary w-100 signbutt" style="">Sign up</button>
                </div>
            </form>
            
        
        
        
        
        </div>
        
    </div>
</x-guest-layout>
