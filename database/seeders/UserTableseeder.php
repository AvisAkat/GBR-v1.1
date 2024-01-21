<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

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
                'role' => 'admin',
                'first_name' => 'Joel',
                'last_name'=> 'Manny',
                'email'=>'admin@test.com',
                'phone_number'=>'112200',
                'address'=>'kofi-annan street',
                'password'=>Hash::make('password'),
                'gender'=>'Male',
                'date_of_birth'=>'03-02-2000'   
            ],

            //Agent
            [
                'role' => 'agent',
                'first_name' => 'Juliet',
                'last_name'=> 'Barbie',
                'email'=>'agent@test.com',
                'phone_number'=>'112211',
                'address'=>'kofi-annan street',
                'password'=>Hash::make('password'),
                'gender'=>'Female',
                'date_of_birth'=>'03-12-2002'   
            ],

            //User
            [
                'role' => 'user',
                'first_name' => 'Davis',
                'last_name'=> 'Kelly',
                'email'=>'user@test.com',
                'phone_number'=>'112233',
                'address'=>'kofi-annan street',
                'password'=>Hash::make('password'),
                'gender'=>'Male',
                'date_of_birth'=>'01-01-2001'   
            ]
        ]);
    }
}
