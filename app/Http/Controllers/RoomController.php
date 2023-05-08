<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Rooms;

class RoomController extends Controller
{
    public function showIndex()
    {
        return view("index", ["rooms" => rooms::all()->random(3)]);
    }
    public function showGrid()
    {
        return view("rooms", ["rooms" => rooms::all()]);
    }
    public function showDetails($id)
    {
        return view("room-details", ["room" => rooms::findOrFail($id)]);
    }
    public function showOffers()
    {
        return view("offers", ["rooms" => rooms::where("discount", "=", "Yes")->orderBy("room_offer")->get()]);
    }
}