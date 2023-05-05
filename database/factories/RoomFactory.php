<?php

namespace Database\Factories;
use App\Models\Rooms;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Rooms>
 */
class RoomsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     *  @var string
     */
    
    public function definition(): array
    {
        return [  
            'type'=> fake()->randomElement(["Single Bed", "Double Bed", "Double Superior", "Suite",]),
            'number' => fake()->number({ min: 10, max: 1000 }),
            'discountPercentage'=> fake()->number({min: 0, max: 20});,
            'discount'=> fake()->randomElement(["Yes", "No"]);,
            'amenities'=> fake()->text($maxNbChars = 50),
            'price'=> fake()->numberBetween({ $min = 80, $max = 200 });,
            'offer_price'=> $price - ($discount * $price) / 100;,
            'status'=> fake()->randomElement(["Available", "Booked"]),
        ];
    }
}