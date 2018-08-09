<?php

class ModelCustomCustom extends Model {
  public function getProducts($id){
  //  print_r($id);die();
    $sql = "SELECT d.product_id as true_product_id, d.category_id,p.*,n.*,s.price as special FROM product_to_category as d
        LEFT JOIN product as p ON d.product_id = p.product_id
        LEFT JOIN product_description as n ON d.product_id = n.product_id
        LEFT JOIN product_special as s ON s.product_id = d.product_id
        WHERE d.category_id = $id";

      //  print_r($sql);die();
    //    $sql = "SELECT * FROM product_to_category";



    $query = $this->db->query($sql);
//    echo '<pre>';
//    print_r($query->rows);
//    die();

    //$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");
    return $query->rows;
  //  echo '<pre>';
  //  print_r($sql);die();
  }
}


 ?>
