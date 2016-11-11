// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


function addMore() {
    var newdiv = $(".room_group:last").clone();
    var newid = Number(newdiv.attr('id').replace(/hotel_room_categories_attributes_(\d+)/, "$1")) + 1;

    newdiv.attr('id', "hotel_room_categories_attributes_" + newid)

    $.each(newdiv.find(":input"), function() {
       var thisid = $(this).attr('id');
       var thisname = $(this).attr('name');
       thisid = thisid.replace(/\d+/, newid);
       thisname = thisname.replace(/\d+/, newid);

       $(this).attr('name', thisname);
       $(this).attr('id', thisid);
       $(this).val('');
    });

    $("#room_category_groups").append(newdiv);

}


function addMoreEx() {
    var newdiv = $(".more_group:last").clone();
    var newid = Number(newdiv.attr('id').replace(/post_relics_attributes_(\d+)/, "$1")) + 1;

    newdiv.attr('id', "post_relics_attributes_" + newid)

    $.each(newdiv.find(":input"), function() {
       var thisname = $(this).attr('id');
       thisname = thisname.replace(/\d+/, newid);

       $(this).attr('name', thisname);
       $(this).attr('id', thisname);
       $(this).val('');
    });

    $("#groups").append(newdiv);

}