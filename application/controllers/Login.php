<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* login
*/
class Login extends CI_controller
{
	
	function index(){
		$this->template->load('login/index');
	}
}

?>