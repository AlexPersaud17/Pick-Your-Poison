$(document).ready(function() {
  $("body").fadeIn("slow");
  
  // $("#results-container").on("click", ".result-list-item", function(event){
  //   event.preventDefault();
  //   var url = $(event.target).attr("href")
  //   var $drinkLink = $(event.target)
  //   var drinkID = $(event.target).attr("id")
  //
  //   $.ajax({
  //     url: url
  //   }).done(function(res){
  //     console.log(drinkID)
  //     $("#" + drinkID).html(res)
  //   })
  // })

  // $(".star-container").on("submit", "form", function(event){
  //   event.preventDefault();
  //   var url = $(event.target).attr("action")
  //
  //   $.ajax({
  //     method: 'post',
  //     url: url
  //   }).done(function(res){
  //     console.log(res)
  //     debugger
  //   })
  // })
});
