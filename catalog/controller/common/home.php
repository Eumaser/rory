<?php
class ControllerCommonHome extends Controller {
	public function index() {

		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		$this->load->model('catalog/category');
		$this->load->model('custom/custom');
		$this->load->model('tool/image');


		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		$data['subscribed'] = $this->customer->getNewsletter();
		$data['instagram'] = array();
		$data['instagram'] = $this->model_design_banner->getBanner(9);
		$results = $this->model_catalog_category->getCategories(0);
		$data['shop_all'] = $this->url->link('product/category');

		$y = 0;
		//$this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
		foreach ($results as $v) {
		//	print_r($v['category_id']);die();
		//	$data['dicks'][] =  $this->model_custom_custom->getProducts($v['category_id'] );
			$x =  $this->model_custom_custom->getProducts($v['category_id'] );
			foreach ($x as $key=>$value) {
					$link = $this->url->link('product/product', 'path=' . $v['category_id'] . '&product_id=' . $value['true_product_id'] );
					$thumb = $this->model_tool_image->resize($value['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));

					$data['altproduct'][] =  array(
						'product_id'=>$value['true_product_id'],
						'category_id'=>$value['category_id'],
						'special'=>$value['special'],
						'default_price'=>$value['price'],
						'name'=>$value['name'],
						'view_href'=> $link,
						'thumb'=>$thumb,
						'image'=>'image/'.$value['image'],
					);

			}

		}

		//echo '<pre>';
	//	print_r($data['altproduct']);die();
		//	print_r($data);die();
		foreach ($results as $v) {
				$data['categories'][] = array(
					'category_id'	=> $v['category_id'],
					'name'     		=> $v['name'],
					'href'     		=> $this->url->link('product/category', 'path=' . $v['category_id'])
				);
		}


		$data['curr'] = $this->currency->getCode();
	//echo '<pre>';
	//	print_r($data);die();


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.php')) {
	//		$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));

			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.php', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}
}
