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
                <img src="buslogo.png" class="" style="width: 45rem;" />
            </a>
        </div>
        <div class="register_form col-6 shadow">
            <form class="row g-3 p-5" action="" method="">
                <h1 class="mb-4" style="color: #0155C2;text-align: center;">Register Form</h1>
                <div class="col-md-6">
                    <label for="input_first_name" class="form-label">First Name</label>
                    <input type="text" name="first_name" class="form-control border-primary" id="input_first_name" placeholder="John" value="{{old('first_name')}}">
                </div>
                <div class="col-md-6">
                    <label for="input_last_name" class="form-label">Last Name</label>
                    <input type="text" name="last_name" class="form-control border-primary" id="input_last_name" placeholder="Smith" value="{{old('last_name')}}">
                </div>
                <div class="col-md-12">
                    <label for="input_email" class="form-label">Email</label>
                    <input type="email" name="email" class="form-control border-primary" id="input_email" placeholder="johnsmith@example.com" value="{{old('email')}}">
                </div>
                <div class="col-12">
                    <label for="input_Address" class="form-label">Address</label>
                    <input type="text" name="address" class="form-control border-primary" id="input_Address" placeholder="1234 Main St" value="{{old('address')}}">
                </div>
               
                <div class="col-md-4">
                    <label for="input_phone" class="form-label">Phone Number</label>
                    
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
                            <input type="radio" class="btn-check" name="gender" id="input_gender1" autocomplete="off" value="male">
                            <label class="btn btn-outline-primary" for="input_gender1" style="border-top-left-radius: 0.5rem;border-bottom-left-radius: 0.5rem">Male</label>
                        
                            <input type="radio" class="btn-check" name="gender" id="input_gender2" autocomplete="off" value="female">
                            <label class="btn btn-outline-primary" for="input_gender2" style="border-top-right-radius: 0.5rem;border-bottom-right-radius: 0.5rem">Female</label>
                        
                        </div>
                        
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="input_dob" class="form-label">Date Of Birth</label>
                    <input type="date" name="date_of_birth" class="form-control border-primary" id="input_dob" placeholder="" value="{{old('date_of_birth')}}">
                </div>
                
                <div class="col-md-6 mt-4">
                    <label for="input_Password" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control border-primary" id="input_Password">
                </div>
                <div class="col-md-6 mt-4">
                    <label for="input_Password" class="form-label">Confirm Password</label>
                    <input type="password" name="password_confirmation" class="form-control border-primary" id="input_Password4">
                </div>
                <div class="col-md-12 mt-4" style="text-align: left;">
                    Already have an account? <a href="#" style="color: #0155C2;text-decoration: none;">Sign In</a>
                </div>
                
                
                <div class="col-12 mt-5">
                   <button type="submit" class="btn btn-primary w-100 signbutt" style="">Sign in</button>
                </div>
            </form>
        
        
        
        
        </div>
    </div>
</x-guest-layout>
