/**
 * AjaxģʽListҳ��֧��JS
 */
function AjaxList(selector) {
	this.selector = selector;
	this.targetUrl = null;
	this.exportFileName = null;
	this.formId = document.forms[0].id;
	this.columns = {};
	this.rowCallback = {};
	this.datatable = {};

	// init checkAll bind
	$("#checkAll").click(function() {
		var checkFlag = this.checked;
		$("[name = checkCode]:checkbox").each(function() {
			this.checked = checkFlag;
		});

	});
	$.extend( $.fn.dataTable.defaults, {
		"processing" : true,
		"serverSide" : true,
		"searching" : false, // ����
		"autoWidth" : false,
        "scrollX": true,
        "dom": '<"top">rt<"bottom"filp><"clear">',
	    "stateSave": false,
	    "pagingType" : "full_numbers",
		"language" : {
			"emptyTable":  "û������", 
			"lengthMenu" : "ÿҳ��ʾ _MENU_ ����¼",
			"zeroRecords" : "û�м���������",
			"info" : "��ǰ��  _PAGE_ ҳ ����   _PAGES_ ҳ  _TOTAL_ ����¼��",
			"infoEmpty" : "û������",
			"infoFiltered" : "(filtered from _MAX_ total records)",
			"processing" : "���ݼ�����...",
			"decimal" : ",",
			"thousands" : "",
			"paginate" : {
				"first" : "��ҳ",
				"previous" : "ǰҳ",
				"next" : "��ҳ",
				"last" : "ĩҳ"
			}
		},
		// "lengthMenu": [[10, 25, 50, -1], [10, 25, 50,"All"]], 
		"destroy" : true
	} );
}
(function($){  
    $.fn.serializeJson=function(){  
        var serializeObj={};  
        var array=this.serializeArray();   
        $(array).each(function(){  
            if(serializeObj[this.name]){  
                if($.isArray(serializeObj[this.name])){  
                    serializeObj[this.name].push(this.value);  
                 }else{  
                     serializeObj[this.name]=[serializeObj[this.name],this.value];  
                 }  
             }else{  
                 serializeObj[this.name]=this.value;   
             }  
         });  
         return serializeObj;  
     };  
 })(jQuery);

function planify(data) {
    for (var i = 0; i < data.columns.length; i++) {
        column = data.columns[i];
        column.searchRegex = column.search.regex;
        column.searchValue = column.search.value;
        delete(column.search);
    }
}
AjaxList.prototype.query = function() {
	var innerDataTable = $(this.selector);
	var innerTargetUrl = this.targetUrl;
	var innerFormId = this.formId;
	var innerColumns = this.columns;
	var innerRowCallback = this.rowCallback; 
    
	this.datatable = innerDataTable.dataTable({
		"ajax" : {
			url : innerTargetUrl,
			error : handleAjaxError,
			data:   $("#"+innerFormId).serializeJson(),
			type : "POST"
		},
		"columns" : innerColumns,
		"rowCallback" : innerRowCallback
	});
	
	function handleAjaxError( xhr, textStatus, error ) {
		alert(xhr.responseText);
	}
};







