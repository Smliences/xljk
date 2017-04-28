window.onload = function(){
				var btn = document.getElementsByTagName("button")[0];
				var txt = document.getElementsByTagName("textarea")[0];
				var ul = document.createElement("ul");
				var box = document.getElementsByClassName("details_content")[0];
				box.appendChild(ul);
				btn.onclick = function(){
					if(txt.value == ""){
						alert("输入不能为空");
						return false;
					}
					//创建一个li，并吧输入框的内容填充
					var newli = document.createElement("li"); 
					/*获取时间*/
					var  date = new Date();
					var time = date.getFullYear () +"年"+(date.getMonth ()+1)+"月"+date.getDate() + "日" +date.getHours()+ "时"+(date.getMinutes()+1) +"分"+(date.getSeconds()+1)+"秒";
					
					newli.innerHTML = txt.value+"<a href='javascript:;'>删除</a>"+"<span class='time'>"+time+"</span>";
					
					txt.value = "";//清空输入框
					var lis = ul.children;//获取所有li的个数
					if(lis.length == 0){	//如果li的个数为0，在ul后添加第一个li
						ul.appendChild(newli);
					}
					else{	//不为0的话，在第一个li的前面插入一个新的li
						ul.insertBefore(newli,lis[0]);
					}
					var as = document.getElementsByTagName("a");	//获取所有的a标签，即删除键
				
					for(var i = 0;i < as.length;i++){
						as[i].onclick = function(){
							ul.removeChild(this.parentNode);	//移除a的父元素，即移除li
						}
					}
				}
				
			}