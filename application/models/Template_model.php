<?php defined('BASEPATH') or exit('No direct script access allowed');
class Template_model extends CI_Model
{
    protected $_table = 'tb_template_surat';
    protected $primary = 'id';
    public function getAll()
    {
        return $this->db->where('is_active', 1)->get($this->_table)->result();
    }
    public function save()
    {
        $data = [
            'nama' => $this->input->post('nama'),
            'tujuan_surat' => $this->input->post('tujuan_surat'),
            'tgl_kirim' => $this->input->post('tgl_kirim'),
            'perihal' => $this->input->post('perihal'),
            'keterangan' => $this->input->post('keterangan'),
            'is_active' => '1',
        ];
        $this->db->insert($this->_table, $data);
    }
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }

    public function editData()
    {
        $id = $this->input->post('id');
        $data = [
            'nama' => $this->input->post('nama'),
            'tujuan_surat' => $this->input->post('tujuan_surat'),
            'tgl_kirim' => $this->input->post('tgl_kirim'),
            'perihal' => $this->input->post('perihal'),
            'keterangan' => $this->input->post('keterangan'),
            'is_active' => '1',
        ];
        return $this->db->set($data)->where($this->primary, $id)->update($this->_table);
        // if($this->db->affected_rows()>0){
        // $this->session->set_flashdata("success","Data user Berhasil DiUpdate");
        // }
    }

    public function delete($id)
    {
        $this->db->where('id', $id)->delete($this->_table);
        if ($this->db->affected_rows() > 0) {
            $this->session->set_flashdata("success", "Data View History Berhasil Di Delete");
        }
    }
}
