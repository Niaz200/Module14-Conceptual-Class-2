<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use HasFactory, SoftDeletes;
    // use  SoftDeletes;

    protected  $fillable = [
        'title',
        'description',
        'category',
        'tags',
        'status',
        'featured_image'
    ];


    protected $casts = [
        'tags' => 'array'
    ];
      
}
