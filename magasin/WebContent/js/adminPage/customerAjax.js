$("#customerSearchBtn").click(
		function() {
			const searchIndex = $("[name = searchIndex]").val();
			const selectIndex = $("[name = selectIndex]").val();
			const dateSelect = $("[name = dateSelect]").val();
			const customer = $("[name = customer]").val();
			
			$.ajax({
				url : "/customerSearch",
				type : "get",
				data : {
					searchIndex : searchIndex,
					selectIndex : selectIndex,
					dateSelect : dateSelect,
					customer : customer
				},
				success : function(data) {
					let tbody = $("#customersResult tbody");
					
					if(data[0].cusId == "내용없음"){
						tbody.html('검색결과 없음');
					}
			
					tbody.html('');
					for ( let index in data) {
						const tr = $("<tr class='test'>");
						let idTd = $("<td style='width: 14.285714%;'>").html(data[index].cusId);
						let nameTd = $("<td style='width: 14.285714%;'>").html(
								decodeURIComponent(data[index].cusName));
						let pNameTd = $("<td style='width: 14.285714%;'>").html(
								decodeURIComponent(data[index].cusPrdName));
						let pCountTd = $("<td style='width: 14.285714%;'>").html(data[index].cusPrdCount);
						let orderDate = $("<td style='width: 14.285714%;'>").html(
								decodeURIComponent(data[index].cusPurDate));
						let orderOutDate = $("<td style='width: 14.285714%;'>").html(
								decodeURIComponent(data[index].cusOutDate));
						let orderComDate = $("<td style='width: 14.285714%;'>").html(
								decodeURIComponent(data[index].cusComDate));


						tr.append(idTd).append(nameTd).append(pNameTd).append(pCountTd).append(orderDate).append(orderOutDate).append(orderComDate);
						tbody.append(tr);
					}
				},
				error:function(){
					let tbody = $("#customersResult tbody");
					
					if(searchIndex == "none"){
						tbody.html('조회기간을 선택해주세요.');
					} else if(data[0].cusId == "내용없음"){
						tbody.html('검색결과 없음');
					}
				}
			});
		});