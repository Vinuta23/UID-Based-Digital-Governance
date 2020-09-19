	function validate( f )
	{

		var size;
		size=f.elements.length;

		var i;

		for(i=0; i<size; i++)
		{


			if( f.elements[i].type=="select-one" )
			{

				if( f.elements[i].selectedIndex==0 )
				{
				alert(f.elements[i].id );
				f.elements[i].focus();
				return(false);
				}


			}
				

			
			if( f.elements[i].value=="" )
			{
			
			alert( f.elements[i].id+" can't empty" );
			f.elements[i].focus();
			return(false);
			}

		}

	}

	function isDigit()
	{
		
		var k=event.keyCode;

		if( !(k>=48 && k<=57) )
		{
		return(false); // 0 is ascci value of null
		}	
	}


	function changeCase( t ) 
	{

		
		t.value=t.value.toUpperCase();
	}

	function isAlpha()
	{
		
		var k=event.keyCode;

		

		if( !((k>=97 && k<=122) || (k>=65 && k<=90) || k==32 ) )
		{
		return(false); // 0 is ascci value of null
		}	
	}	


	function initCase( t )
	{
		var fl=t.value.substring(0,1).toUpperCase();
		var rl=t.value.substring(1,t.value.length);

		var res=fl+rl;

		t.value=res;
	}
		
		function minLength( t,len )
	{
    
		var size=t.value.length;
	
		if( size < len )
		{
			alert("it must have "+len+" digits");
			t.focus();
		}
	
	}

	
	function emailVeri(t)
	{
		var x=t.value;
		var atpos=x.indexOf("@");
		var dotpos=x.lastIndexOf(".");
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
		{
			alert("Not a valid e-mail address");
			return false;
		}
	
	}
		

