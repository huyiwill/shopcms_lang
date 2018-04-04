
				
			
				
			
			$(".tab_option").click(function(){
					if(!$(this).hasClass("on")){
						var index = $(".tab_option").index($(this));
						$($(".edit_content_tab").get(index)).removeClass("none").siblings(".edit_content_tab").addClass("none");
						$(this).addClass("on").siblings().removeClass("on");
					}
					
			});
