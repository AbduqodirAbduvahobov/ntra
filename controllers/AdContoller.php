<?php

namespace controllers;
use App\Ads;
use App\Image;

class AdController
{
    public function show(): void
    {
        /**
         * @var $id
         */
        $ad = (new \App\Ads())->getAd($id);
        $ad->image = "../assets/images/ads/$ad->image";

        loadView('single-ad', ['ad' => $ad]);
    }

    public function create()
    {
    }

}