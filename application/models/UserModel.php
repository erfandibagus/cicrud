<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserModel extends CI_Model {

	public function userAll()
	{
		return $this->db->order_by('id', 'DESC')->get('users')->result();
	}

	public function userId($id)
	{
		return $this->db->where('id', $id)->get('users')->row_array();
	}

	public function userAdd()
	{
		$data = [
			'names' 	=> $this->input->post('names'),
			'address' 	=> $this->input->post('address'),
			'region' 	=> $this->input->post('region'),
			'country' 	=> $this->input->post('country'),
			'email' 	=> $this->input->post('email'),
			'phone' 	=> $this->input->post('phone')
		];
		$this->db->insert('users', $data);
		return $this->db->affected_rows();
	}

	public function userUpdate()
	{
		$id = $this->input->post('id');
		$data = [
			'names' 	=> $this->input->post('names'),
			'address' 	=> $this->input->post('address'),
			'region' 	=> $this->input->post('region'),
			'country' 	=> $this->input->post('country'),
			'email' 	=> $this->input->post('email'),
			'phone' 	=> $this->input->post('phone')
		];
		$this->db->where('id', $id)->update('users', $data);
		return $this->db->affected_rows();
	}

	public function userDelete()
	{
		$id = $this->input->post('id');
		$this->db->where('id', $id)->delete('users');
		return $this->db->affected_rows();
	}

	public function truncate()
	{
		$this->db->truncate('users');
		return $this->db->affected_rows();
	}
}
