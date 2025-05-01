<?php

namespace App\Controllers;

use App\Models\UserModel;

class HomeController extends BaseController
{
    public function index(): void
    {
        $user = UserModel::findOrfail(1);
        echo "Eloquent works! User email from database: " . $user->email;
    }
}

