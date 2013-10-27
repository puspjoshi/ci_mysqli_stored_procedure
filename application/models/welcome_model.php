<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome_Model extends CI_Model {

	public function get_records()
	{	
		//return $this->db->get('emptable')->result();
		$procedure = "call get_records()";
		return $this->db->query($procedure)->result();
	}
	public function get_best_records()
	{
		$procedure = "call best_records()";
		return $this->db->query($procedure)->result();	
	}
}
?>