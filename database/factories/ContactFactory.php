<?php

namespace Database\Factories;
use App\Models\Contact;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Contact>
 */
class ContactFactory extends Factory
{
    /**
     * Define the model's default state.
     * @var string
     * 
     */
    public function definition(): array
    {
        return [
            'date' => fake()->dateTimeBetween($start ="2023-01-01", $end ="2023-12-12"),
            'name' => fake()->name(),
            'email' => fake()->email(),
            'phone' => fake()->e164PhoneNumber("+## ## ### ## ##"),
            'subject' => fake()->words(15),
        ];
    }
}