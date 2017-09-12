<?php
	defined('BASEPATH') OR exit('no direct script access allowed');

	require APPPATH . '/libraries/REST_Controller.php';
	use Restserver\Libraries\REST_Controller;

	class Ktp extends REST_Controller	{

		function __construct( $config = 'rest'){

			parent::__construct($config);
			$this->load->database();
		}

		function index_get()
		{
			$id = $this->get('nik');
			if($id =="")
			{
				$Ktp = $this->db->get('kartu_penduduk')->result();
			}else{
				$this->db->where('nik', $id);
				$Ktp = $this->db->get('kartu_penduduk')->result();
			}
			$this->response($Ktp, 200);
		}

		function index_post()
		{
			$data = array(
					'nik' => $this->post('nik'),
					'nama' => $this->post('nama'),
					'tempat_lahir' => $this->post('tempat_lahir'),
					'tanggal_lahir' => $this->post('tanggal_lahir'),
					'jenis_kelamin' => $this->post('jenis_kelamin'),
					'alamat' => $this->post('alamat'),
					'rt' => $this->post('rt'),
					'rw' => $this->post('rw'),
					'desa' => $this->post('desa'),
					'kecamatan' => $this->post('kecamatan'),
					'agama' => $this->post('agama'),
					'status' => $this->post('status'),
					'pekerjaan' => $this->post('pekerjaan'),
					'berlaku_hingga' => $this->post('berlaku_hingga'),
				);

			$insert = $this->db->insert('kartu_penduduk', $data);

			if($insert)
			{
				$this->response($insert, 200);
			}else{
				$this->response(array('status'=>'fail', 201));
			}
		}

		function index_put()	{

			$id = $this->put('nik');

			$data = array(
					'nik' => $this->put('nik'),
					'nama' => $this->put('nama'),
					'tempat_lahir' => $this->put('tempat_lahir'),
					'tanggal_lahir' => $this->put('tanggal_lahir'),
					'jenis_kelamin' => $this->put('jenis_kelamin'),
					'alamat' => $this->put('alamat'),
					'rt' => $this->put('rt'),
					'rw' => $this->put('rw'),
					'desa' => $this->put('desa'),
					'kecamatan' => $this->put('kecamatan'),
					'agama' => $this->put('agama'),
					'status' => $this->put('status'),
					'pekerjaan' => $this->put('pekerjaan'),
					'berlaku_hingga' => $this->put('berlaku_hingga')
				);

			$this->db->where('nik', $id);

			$update = $this->db->update('kartu_penduduk', $data);

			if($update)	{
				$this->response($update, 200);
			}else{

				$this->response($update,array('status'=>'fail', 502));
			}
		}

		function index_delete()	{

			$id = $this->delete('nik');

			$this->db->where('nik', $id);
			$delete = $this->db->delete('kartu_penduduk');

			if ($delete) {
            	$this->response(array('status' => 'success'), 201);
		    } else {
		        $this->response(array('status' => 'fail', 502));
		    }

		}

	}