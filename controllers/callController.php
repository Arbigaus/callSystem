<?php
class callController extends Controller {
  public function __construct(){
    parent::__construct();
  }

  public function index($id){
    Area::ReadByField('id',$id);
    $area = Area::getResult();
    self::setData($area[0],'area');

    $this->loadTemplate('call/callHome',self::getData());
  }

  public function new($id){
    Area::ReadByField('id',$id);
    $area = Area::getResult();
    self::setData($area[0],'area');

    $this->loadTemplate('call/callopen',self::getData());
  }

  public function end($id){
    Area::ReadByField('id',$id);
    $area = Area::getResult();
    self::setData($area[0],'area');

    $this->loadTemplate('call/callend',self::getData());
  }

  public function forms($id){
    Area::ReadByField('id',$id);
    $area = Area::getResult();
    self::setData($area[0],'area');

    $this->loadTemplate('call/callforms',self::getData());
  }

  public function contact($id){
    Area::ReadByField('id',$id);
    $area = Area::getResult();
    self::setData($area[0],'area');

    $this->loadTemplate('call/callcontact',self::getData());
  }



}
