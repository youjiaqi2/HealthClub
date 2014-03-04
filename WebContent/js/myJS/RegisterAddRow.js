 var newItemNumber = 1;
        function  addMember(){
	        	 var newDiv1= document.createElement('div');
	        	 newDiv1.className="memberField";
	        	 newDiv1.id="memberField";
	        	 newDiv1.innerHTML = document.getElementById('memberField').innerHTML;
	        	 
	        	 var newDiv2= document.createElement('div');
	        	 newDiv2.className="field";
	        	 newDiv2.id="memberBegin";
	        	 newDiv2.innerHTML = document.getElementById('memberBegin').innerHTML; 
	        	 document.getElementById('add').appendChild(newDiv1).appendChild(newDiv2);
        }
        
        function deleteMember(obj){
            obj.parentNode.parentNode.removeChild(obj.parentNode);
        }
