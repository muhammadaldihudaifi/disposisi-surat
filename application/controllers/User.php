<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->library('form_validation');
    }
    public function index()
    {
        $data = array(
            'title' => 'View Data User',
            'user' => $this->User_model->getAll(),
            'content' => 'user/index'
        );
        $this->load->view('admin/template/main', $data);
    }

    public function add()
    {
        $data = array(
            'title' => 'Tambah Data User',
            'content' => 'user/add_form'
        );
        $this->load->view('admin/template/main', $data);
    }
    public function save()
    {
        $this->User_model->Save();
        if ($this->db->affected_rows() > 0) {
            $this->session->set_flashdata("success", "Data user Berhasil Di Simpan");
        }
        redirect('admin/user');
    }

    public function getedit($id)
    {
        $data = array(
            'title' => 'Update Data user',
            'user' => $this->User_model->getById($id),
            'content' => 'user/edit_form'
        );
        $this->load->view('admin/template/main', $data);
    }

    public function edit()
    {
        $this->User_model->editData();
        if ($this->db->affected_rows() > 0) {
            $this->session->set_flashdata("success", "Data user Berhasil Di Update");
        }
        redirect('admin/user');
    }
    function delete($id)
    {
        $this->User_model->delete($id);
        redirect('admin/user');
    }
}
