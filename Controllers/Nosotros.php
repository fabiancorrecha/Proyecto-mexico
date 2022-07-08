<?php 

	class Nosotros extends Controllers{
		public function __construct()
		{
			parent::__construct();
		}

		public function nosotros()
		{
			$data['page_id'] = 2;
			$data['page_tag'] = "Nosotros";
			$data['page_title'] = "Acerca De Nosotros";
			$data['page_name'] = "nosotros";
			$this->views->getView($this,"nosotros",$data);
		}

	}
 ?>