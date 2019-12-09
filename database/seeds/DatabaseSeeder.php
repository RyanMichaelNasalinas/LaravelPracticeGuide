<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory('App\User',20)->create(); // Create 20 dummy Users
        factory('App\Profile',20)->create(); // Create 20 dummy Profiles
    }
}
