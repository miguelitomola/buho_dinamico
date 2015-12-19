window.addEventListener("load", function(){
  function present_page_nav(){
	  var b_1 = document.getElementsByClassName("button_1")[0];
	  var b_2 = document.getElementsByClassName("button_2")[0];
	  var b_3 = document.getElementsByClassName("button_3")[0];
	  var b_4 = document.getElementsByClassName("button_4")[0];
	  var location = window.location.pathname;

	  switch(location){
      case "/":
        b_1.classList.add("present_page");
      break;
      case "/que_hacemos":
        b_2.classList.add("present_page");
      break;
      case "/quienes_somos":
        b_3.classList.add("present_page");
      break;
      case "/contacto":
        b_4.classList.add("present_page");
      break;
	  };
	};
	present_page_nav();
});

