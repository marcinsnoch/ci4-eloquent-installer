<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;

class UserModel extends Model
{
    protected $table = 'users';
    protected $fillable = ['first_name', 'last_name', 'email', 'password', 'created_at', 'updated_at'];
}

