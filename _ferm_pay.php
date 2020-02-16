<?PHP
######################################
# Скрипт Fruit Farm
# Автор Rufus
# ICQ: 819-374
# Skype: Rufus272
######################################
$_OPTIMIZATION["title"] = "Платящие фермы";
$_OPTIMIZATION["description"] = "Платящие фермы";
$_OPTIMIZATION["keywords"] = "Платящие фермы";
$user_id = $_SESSION["user_id"];
?>



<div class="silver-bk"><div class="clr"></div>  
<?PHP

                           
$db->Query("SELECT * FROM db_users_a, db_users_b WHERE db_users_a.id = db_users_b.id AND db_users_a.id = '$user_id'");
$prof_data = $db->FetchArray();


$db->Query("SELECT * FROM db_progect WHERE status = 4 ORDER BY id DESC");

if($db->NumRows() > 0){

    while($new = $db->FetchArray()){

      # Считаем процент выплат #
     $vipla_procent = (($new["viplat"] / $new["vklad"]) * 100);

    ?>

<!-- -->

<style>
  .sstat{
    font-size: 11px;
    display: inline-block;
    color: white;
    font-weight: bold;
    padding: 2px 12px;
    position: relative;
    margin: 0 0px 0px -17px;
  }
</style>

<?

if ($new["status"] == 3 ) {
  $status = "<div style='background: orange' class='sstat'>zzz1</div>";
}

if ($new["status"] == 4 ) {
  $status = "<div style='background: green;' class='sstat'>ПЛАТИТ</div>";
}
if ($new["status"] == 5 ) {
  $status = "<div style='background: #ff8f8f;' class='sstat'>ПРОБЛЕМНЫЕ</div>";
}
if ($new["status"] == 6 ) {
  $status = "<div style='background: red;' class='sstat'>НЕ ПЛАТЯТ</div>";
}
if ($new["status"] == 7 ) {
  $status = "<div style='background: black;' class='sstat'>ЗАКРЫЛИСЬ</div>";
}

$but_vip = "
    background: gray;
    text-decoration: none;
    padding: 7px;
    color: white;
    width: 122px;
    text-align: center;
    margin: -29px 2px 0px 240px;
    position: absolute;
    border-bottom-right-radius: 6px; ";
$border = 'border: 2px solid #ffffff;';
$vip = '';
if ( $new["vip"] != 0 ) {
$border = 'border: 2px solid #3db39e;';
$vip = "<div style='
    float: right;
    margin-right: 34px;
    color: white;
    margin-top: -11px;
    background: #3db39e;
    padding: 5px 16px;
    border-bottom-right-radius: 8px;
    border-bottom-left-radius: 8px;
'>VIP</div>";
$but_vip = "
    background: #3db39e;
    text-decoration: none;
    padding: 7px;
    color: white;
    width: 122px;
    text-align: center;
    margin: -31px 2px 0px 240;
    position: absolute;
    border-bottom-right-radius: 6px; ";
}
if ( $new["tarif"] == 1000 ) {
$border = 'border: 2px solid #f74877;';
$vip = "<div style='
    float: right;
    margin-right: 34px;
    color: white;
    margin-top: -11px;
    background: linear-gradient(to bottom,#fa6f63 0,#f9536f 100%);
    padding: 5px 16px;
    border-bottom-right-radius: 8px;
    border-bottom-left-radius: 8px;
'>GOLD</div>";
$but_vip = "
    background: linear-gradient(to bottom,#fa6f63 0,#f9536f 100%);
    text-decoration: none;
    padding: 7px;
    color: white;
    width: 122px;
    text-align: center;
    margin: -31px 2px 0px 240;
    position: absolute;
    border-bottom-right-radius: 6px; ";
}


if ($new["bal"] == 2) {
   $bal = " <div class='tex-farm'> 
        <img src='/img/bal.png' style='width: 64;'> 
        <p style='font-size: 11px;'>БЕЗ БАЛЛОВ</p>
    </div>";
}
$paym = "Ручные";
if ($new["paym"] == 1) {
   $paym = "Автоматические";
}
if ($new["serf"] == 1) {
   $serf = "/img/checkuy.png";
}
if ($new["serf"] == 2) {
   $serf = "/img/nocheckuy.png";
}

if ($new["orig"] == 1) {
   $orig = "/img/checkuy.png";
}
if ($new["orig"] == 2) {
   $orig = "/img/nocheckuy.png";
}
$data_add = date("d.m.Y", $new['data_add']);
?>

<div class="monit_ferm" style="
    <?=$border;?>
" >
    <div class="name_farm"> <?=$status;?> <?=$new["name_farm"];?> <?=$vip;?></div><br><br>
    <img src="<?=$new["src_banner"];?>">
     <div class="fawawe">
         
            <div class="title_farm">
             <div>Дата старта: <?=$new["data_start"];?></div>
             <div>Мониторим с : <?=$data_add;?></div>
             <div>Наш вклад: <b><?=$new["summa_pay"];?> &#8381; </b></div>
             <div>Выплачено: <b><?=$new["vivod"];?> &#8381; </b></div>
             <div>Выплаты: <b><?=$paym;?></b></div>
              <div class="views"><i class="views_i"></i> <p style="text-align: right;position: absolute;margin: -1px 27px;color:   #000000;"><?=$new["views"];?></p></div>
             <div class="views"><i class="like_i"></i> <p style="text-align: right;position: absolute;margin: -1px 27px;color:   #000000;"><?=$new["likee"];?></p></div>
            </div>
     </div>
     <hr>
     <div style="text-align: center;" >


<div class="dregew"><?=$new['activ'];?>р<div class="driegew">Активация</div></div>
<div class="dregew" style="color: rgba(255, 255, 255, 0);background: url('<?=$serf;?>');background-repeat: no-repeat;background-position: 18px 14px;
">`<div class="driegew" style="margin: -15 -17px;width: 84;
">Серфинг</div></div>
<div class="dregew" style="color: rgba(255, 255, 255, 0);background: url('<?=$orig;?>');background-repeat: no-repeat;background-position: 18px 14px;
">`<div class="driegew" style="margin: -15 -17px;width: 84;
">Оригинал</div></div>    <br></br>

    </div>
    <br></br>
    <a href="<?=$new["src_farm"];?>" target="_blank" style="background: #ffffff;text-decoration: none;padding: 6px;font-size: 11px;color: #3d465e;text-align: center;margin: -25px 2px 0px 103px;position: absolute;
">ЗАРЕГИСТРИРОВАТЬСЯ</a>
    <a href="/ferma-info/<?=$new['id'];?>" style="<?=$but_vip;?>

">ПОДРОБНЕЕ</a>
</div>
<!-- -->


    <?PHP
    
    }

}else echo "<div class='not_farm'><img src='/img/browser-n.png'><p>В данном разделе нашего мониторинга еще нет модерируемых проектов. В скором времени данный раздел пополнится новыми проектами.</p></div>";

?>

</div>
<div class="clr"></div> 
