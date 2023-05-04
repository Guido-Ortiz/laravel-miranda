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
    protected $model = Rooms::class;
    
    $discount= 0;
    if ($offer === "Yes") {
      $discount => fake()->number({min: 0, max: 80});
    } else {
      $discount = 0;
    }
  
    $room_offer= null;
    if ($offer === "Yes") {
      $room_offer = $price - ($discount * $price) / 100;
    } else {
      $room_offer = null;
    }
    
    public function definition(): array
    {
        return [  
            'type'=> fake()->randomElement(["Single Bed", "Double Bed", "Double Superior", "Suite",]),
            'number' => fake()->number({ min: 10, max: 1000 }),
            'discountPercentage'=> $discount,
            'discount'=> fake()->randomElement(["Yes", "No"]);,
            'amenities'=> fake()->text($maxNbChars = 50),
            'price'=> fake()->numberBetween({ $min = 80, $max = 200 });,
            'offer_price'=> $room_offer,
            'status'=> fake()->randomElement(["Available", "Booked"]),
        ];
    }
}