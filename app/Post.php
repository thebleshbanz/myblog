<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Post extends Model
{
    public function category()
    {
    	return $this->belongsTo('App\Category');
    }

    public function tags()
    {
    	return $this->belongsToMany('App\Tag');
    }

    public function comments()
    {
    	return $this->hasMany('App\Comment');
    }

    public function getPostTags($id){

        $users = DB::table('post_tag')->join('tags', 'post_tag.tag_id', '=', 'tags.id')->where('post_id', $id)->get();

        return $users;
    }
}