<?php
class Template extends Model{
  protected static $Table;

  private static function setTable($table){
    self::$Table = $table;
  }

  private static function getTable(){
    return self::$table;
  }

  public static function getMenu(){
    self::setTable('tab_navbar');
    return self::ReadAll();
  }

  public static function getSubMenu(){
    self::setTable('tab_navbar_submenu');
    return self::ReadAll();
  }

}
