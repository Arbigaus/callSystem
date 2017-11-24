<?php
class callController extends Controller {
  public function __construct(){
    parent::__construct();
  }

  public function index($id){
    Area::ReadByField('id',$id);
    $area = Area::getResult();
    self::setData($area[0],'area');

    $this->loadTemplate('call/callhome',self::getData());
  }

  public function open($id){
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

  public function new(){
    $data = array();

    $dados_form = filter_input_array(INPUT_POST,FILTER_SANITIZE_MAGIC_QUOTES);
    unset($dados_form['_wysihtml5_mode']);

    if(isset($dados_form['call_title']) && !empty($dados_form['call_title'])):

      if(isset($_SESSION['img_id'])):
        $dados_form['call_imgs'] = $_SESSION['img_id'];
        unset($_SESSION['img_id']);
      endif;

      Call::Create($dados_form);
      if(Call::getResult()):
        $data['return'] = $this->ajaxSuccess("Solicitação enviada com sucesso, favor aguardar retorno do departamento.");
      else:
        $data['return'] = $this->ajaxDanger("Ocorreu algum erro, favor entrar em contato.");
      endif;
    else:
      $data['return'] = $this->ajaxWarning("Favor preencher todos os campos.");
    endif;

    echo json_encode($data);
  }



}
