<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Ramsey\Uuid\Uuid;

class UserTableseeder extends Seeder
{
    use HasUuids;
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            //Admin
            [  
                 'user_id' => Uuid::uuid4()->toString(),
                'role' => 'admin',
                'first_name' => 'Joel',
                'last_name'=> 'Manny',
                'email'=>'admin@test.com',
                'phone_number'=>'112200',
                'address'=>'kofi-annan street',
                'password'=>Hash::make('password'),
                'gender'=>'Male',
                'date_of_birth'=>'2000-02-03'   
            ],

            //Agent
            [
                'user_id' => Uuid::uuid4()->toString(),
                'role' => 'agent',
                'first_name' => 'Juliet',
                'last_name'=> 'Barbie',
                'email'=>'agent@test.com',
                'phone_number'=>'112211',
                'address'=>'kofi-annan street',
                'password'=>Hash::make('password'),
                'gender'=>'Female',
                'date_of_birth'=>'2002-12-03'   
            ],

            //User
            [
                'user_id' => Uuid::uuid4()->toString(),
                'role' => 'user',
                'first_name' => 'Davis',
                'last_name'=> 'Kelly',
                'email'=>'user@test.com',
                'phone_number'=>'112233',
                'address'=>'kofi-annan street',
                'password'=>Hash::make('password'),
                'gender'=>'Male',
                'date_of_birth'=>'2001-01-01'   
            ]
        ]);
    }
}
