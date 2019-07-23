<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Crud extends CI_Controller
{

	public function index()
	{
		$data['users'] = $this->usermodel->userAll();
		$this->load->view('crud', $data);
	}

	public function userid()
	{
		$id = $this->input->post('id');
		if ($id) {
			$data = $this->usermodel->userId($id);
			echo json_encode($data);
		} else {
			$data = ['status' => false];
			echo json_encode($data);
		}
	}

	public function add()
	{
		$config = [
			['field' => 'names', 'label' => 'names', 'rules' => 'required'],
			['field' => 'address', 'label' => 'address', 'rules' => 'required'],
			['field' => 'region', 'label' => 'region', 'rules' => 'required'],
			['field' => 'country', 'label' => 'country', 'rules' => 'required'],
			['field' => 'email', 'label' => 'email', 'rules' => 'required|valid_email'],
			['field' => 'phone', 'label' => 'phone', 'rules' => 'required|numeric']
		];
		$this->form_validation->set_rules($config);
		if ($this->form_validation->run() == TRUE) {
			$query = $this->usermodel->userAdd();
			if ($query) {
				$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-success" role="alert">Success</div>');
				redirect(base_url());
			} else {
				$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-danger" role="alert">Failed</div>');
				redirect(base_url());
			}
		} else {
			$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-danger" role="alert">Failed</div>');
			redirect(base_url());
		}
	}

	public function update()
	{
		$config = [
			['field' => 'id', 'label' => 'id', 'rules' => 'required'],
			['field' => 'names', 'label' => 'names', 'rules' => 'required'],
			['field' => 'address', 'label' => 'address', 'rules' => 'required'],
			['field' => 'region', 'label' => 'region', 'rules' => 'required'],
			['field' => 'country', 'label' => 'country', 'rules' => 'required'],
			['field' => 'email', 'label' => 'email', 'rules' => 'required|valid_email'],
			['field' => 'phone', 'label' => 'phone', 'rules' => 'required|numeric']
		];
		$this->form_validation->set_rules($config);
		if ($this->form_validation->run() == TRUE) {
			$query = $this->usermodel->userUpdate();
			if ($query) {
				$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-success" role="alert">Success</div>');
				redirect(base_url());
			} else {
				$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-danger" role="alert">Failed</div>');
				redirect(base_url());
			}
		} else {
			$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-danger" role="alert">Failed</div>');
			redirect(base_url());
		}
	}

	public function delete()
	{
		$id = $this->input->post('id');
		if ($id) {
			$query = $this->usermodel->userDelete($id);
			if ($query) {
				$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-success" role="alert">Success</div>');
				redirect(base_url());
			} else {
				$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-danger" role="alert">Failed</div>');
				redirect(base_url());
			}
		} else {
			$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-danger" role="alert">Failed</div>');
			redirect(base_url());
		}
	}

	public function truncate()
	{
		$id = $this->input->post('id');
		if ($id == 'truncate') {
			$this->usermodel->truncate();
			$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-success" role="alert">Success</div>');
			redirect(base_url());
		} else {
			$this->session->set_flashdata('msg', '<div class="alert mt-4 alert-danger" role="alert">Failed</div>');
			redirect(base_url());
		}
	}
}
