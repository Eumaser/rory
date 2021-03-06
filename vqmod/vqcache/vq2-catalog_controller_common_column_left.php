<?php
class ControllerCommonColumnLeft extends Controller {
	public function index() {
		$this->load->model('design/layout');

		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}

		$layout_id = 0;


			if ($route == 'news/article' && isset($this->request->get['news_id'])) {
				$layout_id = $this->model_catalog_news->getNewsLayoutId($this->request->get['news_id']);
			}
			if ($route == 'news/ncategory' && isset($this->request->get['ncat'])) {
				$ncat = explode('_', (string)$this->request->get['ncat']);
				
				$layout_id = $this->model_catalog_ncategory->getncategoryLayoutId(end($ncat));			
			}
		
		if ($route == 'product/category' && isset($this->request->get['path'])) {
			$this->load->model('catalog/category');

			$path = explode('_', (string)$this->request->get['path']);

			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));
		}

		if ($route == 'product/product' && isset($this->request->get['product_id'])) {
			$this->load->model('catalog/product');

			$layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
		}

		if ($route == 'information/information' && isset($this->request->get['information_id'])) {
			$this->load->model('catalog/information');
$this->load->model('catalog/news');
			$this->load->model('catalog/ncategory');
			

			$layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
		}

		if ($route == 'gallery/gallery' && isset($this->request->get['gallimage_id'])) {
			$this->load->model('catalog/gallimage');

			$layout_id = $this->model_catalog_gallimage->getGalleryLayoutId($this->request->get['gallimage_id']);
		}

		if ($route == 'gallery/album' && isset($this->request->get['gcat'])) {
			$this->load->model('catalog/gallimage');

			$layout_id = $this->model_catalog_gallimage->getGalleryCategoryLayoutId($this->request->get['gcat']);
		}

		if (!$layout_id) {
			$layout_id = $this->model_design_layout->getLayout($route);
		}

		if (!$layout_id) {
			$layout_id = $this->config->get('config_layout_id');
		}

		$this->load->model('extension/module');

		$data['modules'] = array();

		$modules = $this->model_design_layout->getLayoutModules($layout_id, 'column_left');

		foreach ($modules as $module) {
			$part = explode('.', $module['code']);

			
				if( $part[0] == 'mega_filter' ) {
					if( ! isset( $part[1] ) ) {
						continue;
					}
				
					$mfp_setting = $this->config->get($part[0] . '_module');
					$mfp_setting['_idx'] = $part[1];
					$mfp_setting['position'] = $module['position'];
				
					if( NULL != ( $mfp = $this->load->controller('module/' . $part[0], $mfp_setting) ) ) {
						$data['modules'][] = $mfp;
					}
				} else if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
			
				$data['modules'][] = $this->load->controller('module/' . $part[0]);
			}

			if (isset($part[1])) {
				$setting_info = $this->model_extension_module->getModule($part[1]);

				if ($setting_info && $setting_info['status']) {
					$data['modules'][] = $this->load->controller('module/' . $part[0], $setting_info);
				}
			}
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/column_left.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/column_left.tpl', $data);
		} else {
			return $this->load->view('default/template/common/column_left.tpl', $data);
		}
	}
}