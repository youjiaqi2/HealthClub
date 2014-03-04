var newItemNumber = 1;
    	function  addMember(){
        	 var newDiv1= document.createElement('div');
        	 newDiv1.className="roundField";
        	 newDiv1.id="roundField";
        	 newDiv1.innerHTML = document.getElementById('roundField').innerHTML;
        	 
        	 var newDiv2= document.createElement('div');
        	 newDiv2.className="field";
        	 newDiv2.id="roundBegin";
        	 newDiv2.innerHTML = document.getElementById('roundBegin').innerHTML; 
        	 document.getElementById('add').appendChild(newDiv1).appendChild(newDiv2);
    	}
    
    	function deleteMember(obj){
      		 obj.parentNode.parentNode.removeChild(obj.parentNode);
    	}