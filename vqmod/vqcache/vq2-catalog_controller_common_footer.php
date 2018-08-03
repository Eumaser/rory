<?php
class ControllerCommonFooter extends Controller {
	public function index() {
if (version_compare(VERSION, '2.0') < 0) {
					$this->data['mailchimp_integration'] = ($this->config->get('mailchimp_integration_modules_popup')) ? $this->getChild('module/mailchimp_integration') : '';
				} else {
					$data['mailchimp_integration'] = ($this->config->get('mailchimp_integration_modules_popup')) ? $this->load->controller('module/mailchimp_integration') : '';
				}
		$this->load->language('common/footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');

		$data['text_fb'] = $this->language->get('text_fb');
		$data['text_tw'] = $this->language->get('text_tw');
		$data['text_ig'] = $this->language->get('text_ig');

		$data['text_contact'] = $this->language->get('text_contact');
		$data['fb_link'] = $this->config->get('config_fb_url');
		$data['ins_link'] = $this->config->get('config_ig_url');
		$data['address'] = nl2br($this->config->get('config_address'));
		$data['config_email'] = $this->config->get('config_email');
		$data['telephone'] = $this->config->get('config_telephone');

		$data['home'] = $this->url->link('common/home');
		$data['new_arrival'] = 	$this->url->link('product/category', 'path=63');
		$data['shop_all'] = $this->url->link('product/category');
		$data['about_us']= $this->url->link('information/information','information_id=4');
		$data['news'] = $this->url->link('news/ncategory');
		$data['faq'] =  $this->url->link('information/faq');
		$data['contact'] = $this->url->link('information/contact');
		$data['privacy'] = $this->url->link('information/information','information_id=3');
		$data['terms']= $this->url->link('information/information','information_id=5');
		$data['return'] = $this->url->link('information/information','information_id=6');

		$data['text_home'] = $this->language->get('text_home');
		$data['text_new'] = $this->language->get('text_new');
		$data['text_shop'] = $this->language->get('text_shop');
		$data['text_about'] = $this->language->get('text_about');
		$data['text_article'] = $this->language->get('text_article');
		$data['text_faq'] = $this->language->get('text_faq');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_help'] = $this->language->get('text_help');
		$data['text_privacy'] = $this->language->get('text_privacy');
		$data['text_terms'] = $this->language->get('text_terms');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_follow'] =  $this->language->get('text_follow');
		//print_r($data);die();



		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');

		$this->language->load('module/news');
		$data['blog_url'] = $this->url->link('news/ncategory');
		$data['blog_name'] = $this->language->get('text_blogpage');
		
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');

		$data['url_fb'] = $this->config->get('config_fb_url');
		$data['url_tw'] = $this->config->get('config_tw_url');
		$data['url_ig'] = $this->config->get('config_ig_url');

		$data['powered'] = sprintf($this->language->get('text_powered'), date('Y', time()), $this->config->get('config_name'));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}

		$data['content_footer'] = $this->load->controller('common/content_footer');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		//	return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}
