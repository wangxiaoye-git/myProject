<meta http-equiv="Content-Type" content="text/html;charset=GBK"> 
<script type="text/javascript">
	var contextPath = "${ctx}";
</script>
<script src="${ctx}/static/widgets/jquery/jquery.min.js"></script>
<script src="${ctx}/static/widgets/nicescroll/jquery.nicescroll.js"></script>
<script src="${ctx}/static/widgets/slimscroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript"	src="${ctx}/static/common/js/frame.js"></script>
<script type="text/javascript"	src="${ctx}/static/widgets/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<%-- <script type="text/javascript"	src="${ctx}/static/widgets/bootstrap-3.3.7-dist/bootstrap-paginator.js"></script>
<script type="text/javascript"	src="${ctx}/static/widgets/datatable/datatables.min.js"></script> --%>
<script src="${ctx}/static/widgets/jquery/jquery.dataTables.js"></script>
<script src="${ctx}/static/widgets/jquery/AjaxList.js"></script>
<script src="${ctx}/static/widgets/jquery/DataTableUtils.js"></script>
<script type="text/javascript">
$(function(){
	if($.trim($(".breadcrumb").html()) == ""){
		$(".breadcrumb").css("display","none");
	}else{
		$(".breadcrumb").css("display","");
	}
	
	$(".required").each(function(){
		var star = $("<font color='red' size='+1' style='vertical-align: middle'>*</font>")
		if($(this).get(0).tagName == "TH"){
			star.appendTo($(this)); 
		}else{
			star.prependTo($(this)); 
		}
	});
});
</script>
 


		
		

