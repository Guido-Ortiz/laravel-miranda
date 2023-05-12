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

    public function getRoomsAvailable(Request $request)
    {
        return view("room-list", [
            "rooms" => json_decode(DB::table('rooms')
                ->leftJoin("bookings", "rooms.number", "=", "bookings.number")
                ->select("rooms.*")
                ->whereNotBetween("bookings.checkin", [date($request->checkin), date($request->checkout)])
                ->whereNotBetween("bookings.checkout", [date($request->checkin), date($request->checkout)])
                ->get())
        ]);
    }

    public function getRoomAvailable($idroom, Request $request)
    {
        $room = json_decode(Room::findOrFail($idroom));
        $checkin = $request->checkin;
        $checkout = $request->checkout;
        $bookings = json_decode(DB::table("bookings")
            ->join("rooms", "bookings.number", "=", "rooms.number")
            ->select("bookings.*")
            ->where("rooms.idroom", "=", $idroom)
            ->whereBetween("bookings.checkin", [date($checkin), date($checkout)])
            ->whereBetween("bookings.checkout", [date($checkin), date($checkout)])
            ->get());

        if ($request) {
            if (count($bookings) > 0) {
                return view("room-details", ["room" => Room::findOrFail($idroom), "related" => Room::all()->random(2), "available" => 2]);
            }else{
                return view("room-details", ["room" => Room::findOrFail($idroom), "related" => Room::all()->random(2), "available" => 1]);
            }
        } else {
            return view("room-details", ["room" => Room::findOrFail($idroom), "related" => Room::all()->random(2), "available" => 0]);
        }
    }
}