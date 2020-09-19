<?php
	
	include_once('db.php');
	include_once('navbar.php');
	
	session_start();
	if( !isset( $_SESSION['uname'] ) )
	{
	echo "<div class='container bg-info' style='padding:20px;' ><center><font color=green >Please <a href=login.php class='btn btn-danger btn-sm'>Login</a> to Continue</font></center></div>";
	exit();
	}
	else
	{
	$uname=$_SESSION['uname'];
	}


	if( isset($_REQUEST['submit'] ) )
	{

		$sql=insert('death',$_REQUEST );
		
		$res=execute($sql);

		echo "<div class='container bg-info' style='padding:20px;' ><center><font color=blue size=5>Your Request For Death Certificate is Accepted,Check Your Status after two Days</font><br><br><a href=index.php>Return</a></center></div>";

		exit();

	}
	else
	{
		$sql="select count(*)+1 as sino,curdate() as adate from death";
		$res=execute($sql);
		$row=$res->fetch_object();

		$sino=$row->sino;
		$adate=$row->adate;

		
		
	}
	
		

?>






<script src="check.js">
</script>

<style type="text/css" >
.capt{ text-transform:capitalize; }
</style>




<body>

<div class="container bg-info" style="padding:10px;" >
 
 <center><b><font color=blue>Application form for Death Certificate</font></b></center>
<form name="f1" action="?" method="post">
<table class="table table-condensed"  >



<tr>
<td>Sino</td>
<td>
<input type="text" value=<?php echo $sino;?> readonly name="sino" id="Sino" />
</td>
</tr>

<input type="hidden" name="uname" value=<?php echo $uname ?> />

<tr>
<td>
Name
</td>
<td>
<input type="text" name="name"  onkeypress="return isAlpha()" id="name" required=required />
</td>
</tr>


<tr>

<td>
Gender
</td>
<td>
<select name="gender" id="Gender" >
<option value=#>-- Choose --</option>
<option value=Male>Male</option>
<option value=Female>Female</option>
</select>
</td>
    
</tr>


<tr>
<td>
Date Of Death
</td>
<td>
<input type="date" name="ddate" id="ddate"  required=required />
</td>
</tr>

<tr>
<td>
Place Of Death
</td>
<td>
<input type="text" name="dplace"  onkeypress="return isAlpha()"  id="dplace" required=required />
</td>
</tr>


<tr>
<td>
Mother's Name
</td>
<td>
<input type="text" name="mname"  onkeypress="return isAlpha()" onblur="this.className='capt'" id="mname"  required=required />
</td>
</tr>


<tr>
<td>
Father's Name
</td>
<td><input type="text" name="fname"   onkeypress="return isAlpha()" onblur="this.className='capt'" id="fname"  required=required />
</td>
</tr>

<tr>
<td>
Address of Death Place
</td>
<td>
<textarea name="daddr" rows=4   onblur="this.className='capt'" id="daddr" required=required ></textarea>
</td>
</tr>


<tr>
<td>
Permanent Address
</td>
<td>
<textarea name="paddr" rows=4   id="paddr" required=required ></textarea>
</td>
</tr>

<input type="hidden" value=<?php echo $adate; ?> name="adate" id="adate"/>

<input type="hidden" value="APPLIED" name="status" id="Status"/>

<tr>
<td colspan=2 align=center>
<input type="submit" name="submit" value=" APPLY NOW " class="btn btn-primary btn-lg" />
</td>
</tr>

</table>
</form>

</div>

</body>



