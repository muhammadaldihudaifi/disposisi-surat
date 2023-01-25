<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Surat extends CI_Controller
{

	public function index()
	{
		$data = array(
			'content' => 'admin/dashboard/index.php'
		);
		$this->load->view('template_user/main', $data);
	}
}
