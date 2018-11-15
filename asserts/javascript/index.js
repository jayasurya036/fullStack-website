
//navigation bar class
/*class navBar
{
	navBarCLick()
	{
		this.navigatorChange();
		this.navbarToggle();
	}

	 navigatorChange()
 	{
 		var element= document.getElementsByClassName('navigatorChild');
 		element[0].classList.toggle('navigatorChild1');
 		element[1].classList.toggle('navigatorChild2');
 	}

 	 navbarToggle()
 	{
 		var navbar=document.getElementsByClassName('navbar')[0];
 		navbar.classList.toggle('navbarShow');
 	}	
}

class reaction
{

}

//main class
class webSite extends navBar
{
	
	
	
}

 main= new webSite();
 */

 	function navBarCLick()
	{
		this.navigatorChange();
		this.navbarToggle();
	}

	 function navigatorChange()
 	{
 		var element= document.getElementsByClassName('navigatorChild');
 		var a=document.getElementsByClassName('navBarChild');
 		for(var i=0; i<a.length; i++)
 		{
 			
 			a[i].classList.toggle('hide');
 		}
 		element[0].classList.toggle('navigatorChild1');
 		element[1].classList.toggle('navigatorChild2');
 	}

 	 function navbarToggle()
 	{
 		var navbar=document.getElementsByClassName('navbar')[0];
 		navbar.classList.toggle('navbarShow');
 	}


 	function sideBarClick()
 	{
 		this.sideBarChanger();
 		this.sideNavigatorChanger();
 	}

 	function sideBarChanger()
	{
		var sideBar=document.getElementsByClassName('sideBar')[0];
		sideBar.classList.toggle('sideBarClick');
	}

	function sideNavigatorChanger()
	{
		var element1=document.getElementsByClassName('sideNavigatorChild')[0];
		var element2=document.getElementsByClassName('sideNavigatorChild')[1];
		var element3=document.getElementsByClassName('sideNavigatorChild')[2];

		element1.classList.toggle('sideNavigatorChildOpen1');
		element2.classList.toggle('sideNavigatorChildOpen2');
		element3.classList.toggle('sideNavigatorChildOpen3');

	}

	



	

	
