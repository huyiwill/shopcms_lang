
accessid = ''
accesskey = ''
host = ''
policyBase64 = ''
signature = ''
callbackbody = ''
filename = ''
key = ''
expire = 0
g_object_name = ''
g_object_name_type = ''
now = timestamp = Date.parse(new Date()) / 1000; 

function send_request()
{
    var xmlhttp = null;
    if (window.XMLHttpRequest)
    {
        xmlhttp=new XMLHttpRequest();
    }
    else if (window.ActiveXObject)
    {
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  
    if (xmlhttp!=null)
    {
        serverUrl = get_url;
        xmlhttp.open( "GET", serverUrl, false );
        xmlhttp.send( null );
        return xmlhttp.responseText
    }
    else
    {
        alert("Your browser does not support XMLHTTP.");
    }
};

function check_object_radio() {
   
           g_object_name_type ="random_name";
           
        
    
}

function get_signature()
{
    //可以判断当前expire是否超过了当前时间,如果超过了当前时间,就重新取一下.3s 做为缓冲
    now = timestamp = Date.parse(new Date()) / 1000; 
    if (expire < now + 3)
    {
        body = send_request()
        var obj = eval ("(" + body + ")");
        host = obj['host']
        policyBase64 = obj['policy']
        accessid = obj['accessid']
        signature = obj['signature']
        expire = parseInt(obj['expire'])
        callbackbody = obj['callback'] 
        key = obj['dir']
        return true;
    }
    return false;
};

function random_string(len) {
　　len = len || 32;
　　var chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678';   
　　var maxPos = chars.length;
　　var pwd = '';
　　for (i = 0; i < len; i++) {
    　　pwd += chars.charAt(Math.floor(Math.random() * maxPos));
    }
    return pwd;
}

function get_suffix(filename) {
    pos = filename.lastIndexOf('.')
    suffix = ''
    if (pos != -1) {
        suffix = filename.substring(pos)
    }
    return suffix;
}

function calculate_object_name(filename)
{
    if (g_object_name_type == 'local_name')
    {
        g_object_name += "${filename}"
    }
    else if (g_object_name_type == 'random_name')
    {
        suffix = get_suffix(filename)
        g_object_name = key + random_string(10) + suffix
    }
    return ''
}

function get_uploaded_object_name(filename)
{
   
        return g_object_name
    
}

function set_upload_param(up, filename, ret)
{
    if (ret == false)
    {
        ret = get_signature()
    }
    g_object_name = key;
    if (filename != '') {
        suffix = get_suffix(filename)
        calculate_object_name(filename)
    }
    new_multipart_params = {
        'key' : g_object_name,
        'policy': policyBase64,
        'OSSAccessKeyId': accessid, 
        'success_action_status' : '200', //让服务端返回200,不然，默认会返回204
        'callback' : callbackbody,
        'signature': signature, 
		'name':field,
    };

    up.setOption({
        'url': host,
        'multipart_params': new_multipart_params
    });

    up.start();
}
function upload(field){
		var uploader = new plupload.Uploader({
			runtimes : 'html5,flash,silverlight,html4',
			browse_button : 'select_'+field, 
			multi_selection: false,
			container: document.getElementById(field),
			flash_swf_url : 'lib/plupload-2.1.2/js/Moxie.swf',
			silverlight_xap_url : 'lib/plupload-2.1.2/js/Moxie.xap',
			url : 'http://oss.aliyuncs.com',
			filters: {
				mime_types : [ //只允许上传图片和zip,rar文件
				{ title : "Image files", extensions : "jpg,gif,png,bmp" }, 
				{ title : "Zip files", extensions : "zip,rar" }, 
				{ title : "VIdeo files", extensions : "mp4,mpeg" }
				],
				max_file_size : '300mb', //最大只能上传10mb的文件
				prevent_duplicates : true //不允许选取重复文件
			},
			init: {
				PostInit: function() {
					document.getElementById('file_'+field).innerHTML = '';
					document.getElementById('post_'+field).onclick = function() {
					set_upload_param(uploader, '', false);
					return false;
					};
				},

				FilesAdded: function(up, files) {
					plupload.each(files, function(file) {
						document.getElementById('file_'+field).innerHTML += '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ')<b></b>'
						+'<div class="progress"><div class="progress-bar" style="width: 0%"></div></div>'
						+'</div>';
					});
				},

				BeforeUpload: function(up, file) {
					check_object_radio();
					set_upload_param(up, file.name, true);
				},

				UploadProgress: function(up, file) {
					var d = document.getElementById(file.id);
					d.getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
					var prog = d.getElementsByTagName('div')[0];
					var progBar = prog.getElementsByTagName('div')[0]
					progBar.style.width= 2*file.percent+'px';
					progBar.setAttribute('aria-valuenow', file.percent);
				},

				FileUploaded: function(up, file, data) { 
				 if(upload_type==1){
					var src=domain_url + get_uploaded_object_name(file.name);
				 }
					else{
					   var data = eval("(" + data.response + ")");  
					   var src=data.path;
					}
				 
					if(data.status == 200){  
						
						if(upload_type==1){
							   Setvalue(filed,src);
						}else{    
							  $("input[name='"+field+"']").val(data.id);
						}
						
						$("#"+field).parents(".form-group").find(".ipt").val(src);
						$("#"+field).parents(".form-group").find('.uploader_preview').html(
											'<div class="uploader-pre-item"><img src="' +src + '"/></div>'
						);
					 
					  }else{  
						 document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = data.response;
					  }  
				},

				Error: function(up, err) {
					if (err.code == -600) {
						document.getElementById('console').appendChild(document.createTextNode("\n选择的文件太大了,可以根据应用情况，在upload.js 设置一下上传的最大大小"));
					}
					else if (err.code == -601) {
						document.getElementById('console').appendChild(document.createTextNode("\n选择的文件后缀不对,可以根据应用情况，在upload.js进行设置可允许的上传文件类型"));
					}
					else if (err.code == -602) {
						document.getElementById('console').appendChild(document.createTextNode("\n这个文件已经上传过一遍了"));
					}
					else 
					{
					   alert("\nError xml:" + err.response);
					}
				}
			}
		});

uploader.init();
}
//单文件上传保存
   function Setvalue(filed,src){
		  $.post(insert_url,{path:path},function(data){
			 $("input[name='"+field+"']").val(data.id);
		  });
  
  }

  function uploads(field){
		var uploader = new plupload.Uploader({
			runtimes : 'html5,flash,silverlight,html4',
			browse_button : 'select_'+field, 
			multi_selection: false,
			container: document.getElementById(field),
			flash_swf_url : 'lib/plupload-2.1.2/js/Moxie.swf',
			silverlight_xap_url : 'lib/plupload-2.1.2/js/Moxie.xap',
			url : 'http://oss.aliyuncs.com',
			filters: {
				mime_types : [ //只允许上传图片和zip,rar文件
				{ title : "Image files", extensions : "jpg,gif,png,bmp" }, 
				{ title : "Zip files", extensions : "zip,rar" }, 
				{ title : "VIdeo files", extensions : "mp4,mpeg" }
				],
				max_file_size : '300mb', //最大只能上传10mb的文件
				prevent_duplicates : true //不允许选取重复文件
			},
			init: {
				PostInit: function() {
					document.getElementById('file_'+field).innerHTML = '';
					document.getElementById('post_'+field).onclick = function() {
					set_upload_param(uploader, '', false);
					return false;
					};
				},

				FilesAdded: function(up, files) {
					plupload.each(files, function(file) {
						document.getElementById('file_'+field).innerHTML += '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ')<b></b>'
						+'<div class="progress"><div class="progress-bar" style="width: 0%"></div></div>'
						+'</div>';
					});
				},

				BeforeUpload: function(up, file) {
					check_object_radio();
					set_upload_param(up, file.name, true);
				},

				UploadProgress: function(up, file) {
					var d = document.getElementById(file.id);
					d.getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
					var prog = d.getElementsByTagName('div')[0];
					var progBar = prog.getElementsByTagName('div')[0]
					progBar.style.width= 2*file.percent+'px';
					progBar.setAttribute('aria-valuenow', file.percent);
				},

				FileUploaded: function(up, file, data) { 
				 if(upload_type==1){
					var src=domain_url + get_uploaded_object_name(file.name);
				 }
					else{
					   var data = eval("(" + data.response + ")");  
					   var src=data.path;
					}
				 
					if(data.status == 200){  
						
						if(upload_type==1){
							   Setvalues(filed,src);
						}else{    
							   var html = "<div class='upload-pre-item'><img src='" +src +"' data-id="+data.id+"> <span class='close' onclick='delimage(this,"+field+");'></span></div>";
							   $("#"+field).parents(".form-group").find(".uploader_preview").append(html);
                               setinput(field);  	   
						}
					 
					  }else{  
						 document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = data.response;
					  }  
				},

				Error: function(up, err) {
					if (err.code == -600) {
						document.getElementById('console').appendChild(document.createTextNode("\n选择的文件太大了,可以根据应用情况，在upload.js 设置一下上传的最大大小"));
					}
					else if (err.code == -601) {
						document.getElementById('console').appendChild(document.createTextNode("\n选择的文件后缀不对,可以根据应用情况，在upload.js进行设置可允许的上传文件类型"));
					}
					else if (err.code == -602) {
						document.getElementById('console').appendChild(document.createTextNode("\n这个文件已经上传过一遍了"));
					}
					else 
					{
					   alert("\nError xml:" + err.response);
					}
				}
			}
		});

uploader.init();
}

function delimage(obj,field){ //删除
            $(obj).parents(".upload-pre-item").remove();
		    setinput(field);
}
 function setinput(field){ //取值
		    var option =$("#"+field).parents(".form-group").find(".uploader_preview img");
		    var result=new Array();
		    option.each(function(i){
		 	     result.push($(this).attr('data-id'));
		    });
           var ids= result.join(',');
            $("input[name='"+field+"']").val(ids);
}
//多图片上传保存
   function Setvalues(filed,src){
		  $.post(insert_url,{path:path},function(result){
			      var html = "<div class='upload-pre-item'><img src='" +data.path +"' data-id="+data.id+"> <span class='close' onclick='delimage(this,"+field+");'></span></div>";
				 $("#"+field).parents(".form-group").find(".uploader_preview").append(html);
                 setinput(field);  
		  });
  
  }

  function uploadVideo(field){
		var uploader = new plupload.Uploader({
			runtimes : 'html5,flash,silverlight,html4',
			browse_button : 'select_'+field, 
			multi_selection: false,
			container: document.getElementById(field),
			flash_swf_url : 'lib/plupload-2.1.2/js/Moxie.swf',
			silverlight_xap_url : 'lib/plupload-2.1.2/js/Moxie.xap',
			url : 'http://oss.aliyuncs.com',
			filters: {
				mime_types : [ //只允许上传图片和zip,rar文件
				{ title : "Image files", extensions : "jpg,gif,png,bmp" }, 
				{ title : "Zip files", extensions : "zip,rar" }, 
				{ title : "VIdeo files", extensions : "mp4,mpeg" }
				],
				max_file_size : '300mb', //最大只能上传10mb的文件
				prevent_duplicates : true //不允许选取重复文件
			},
			init: {
				PostInit: function() {
					document.getElementById('file_'+field).innerHTML = '';
					document.getElementById('post_'+field).onclick = function() {
					set_upload_param(uploader, '', false);
					return false;
					};
				},

				FilesAdded: function(up, files) {
					plupload.each(files, function(file) {
						document.getElementById('file_'+field).innerHTML += '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ')<b></b>'
						+'<div class="progress"><div class="progress-bar" style="width: 0%"></div></div>'
						+'</div>';
					});
				},

				BeforeUpload: function(up, file) {
					check_object_radio();
					set_upload_param(up, file.name, true);
				},

				UploadProgress: function(up, file) {
					var d = document.getElementById(file.id);
					d.getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
					var prog = d.getElementsByTagName('div')[0];
					var progBar = prog.getElementsByTagName('div')[0]
					progBar.style.width= 2*file.percent+'px';
					progBar.setAttribute('aria-valuenow', file.percent);
				},

				FileUploaded: function(up, file, data) { 
				 if(upload_type==1){
					var src=domain_url + get_uploaded_object_name(file.name);
				 }
					else{
					   var data = eval("(" + data.response + ")");  
					   var src=data.path;
					}
				 
					if(data.status == 200){  
						$("#"+field).parents(".form-group").find(".ipt").val(src);
						$("#"+field).parents(".form-group").find('video').attr("src",src);
						if(upload_type==1){
							   Setvideo(filed,src);
						}else{    
							  $("input[name='"+field+"']").val(data.id);
						}
					 
					  }else{  
						 document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = data.response;
					  }  
				},

				Error: function(up, err) {
					if (err.code == -600) {
						document.getElementById('console').appendChild(document.createTextNode("\n选择的文件太大了,可以根据应用情况，在upload.js 设置一下上传的最大大小"));
					}
					else if (err.code == -601) {
						document.getElementById('console').appendChild(document.createTextNode("\n选择的文件后缀不对,可以根据应用情况，在upload.js进行设置可允许的上传文件类型"));
					}
					else if (err.code == -602) {
						document.getElementById('console').appendChild(document.createTextNode("\n这个文件已经上传过一遍了"));
					}
					else 
					{
					   alert("\nError xml:" + err.response);
					}
				}
			}
		});

uploader.init();
}
//媒体文件上传保存
   function Setvideo(filed,src){
		  $.post(insert_url,{path:path},function(data){
			     $("input[name='"+field+"']").val(data.id);  
		  });
  
  }