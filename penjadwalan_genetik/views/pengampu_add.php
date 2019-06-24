<div class="content">
   <div class="header">
      <h1 class="page-title"><?php echo $page_title;?></h1>
   </div>
   <ul class="breadcrumb">
      <li><a href="<?php echo base_url();?>">Beranda</a> <span class="divider">/</span></li>
      <li><a href="<?php echo base_url();?>web/pengampu">Modul Pengampu</a> <span class="divider">/</span></li>
      <li class="active">Tambah Data</li>
   </ul>
   
   <div class="container-fluid">
      <div class="row-fluid">
        <?php if(isset($msg)) { ?>                        
              <div class="alert alert-error">
                <button type="button" class="close" data-dismiss="alert">×</button>                
                <?php echo $msg;?>
              </div>  
        <?php } ?>   

        <form id="tab" method="POST" >
          
            <label>Semester</label>
            <select id = "semester_tipe" name="semester_tipe" class="input-xlarge" onchange="get_matapelajaran();">            
              <option value="1" <?php echo isset($semester_tipe) ? ($semester_tipe === '1' ? 'selected':'') : '' ;?> /> GANJIL
              <option value="0" <?php echo isset($semester_tipe) ? ($semester_tipe === '0' ? 'selected':'') : '' ;?> /> GENAP
            </select>
          
            <label>Matapelajaranelajaran</label>
            <select name="kode_mk" class="input-xlarge" id="option_matapelajaran">
              <?php foreach($rs_mk->result() as $mk) { ?>
                <option value="<?php echo $mk->kode;?>" <?php echo set_select('kode_mk',$mk->kode);?> /> <?php echo $mk->nama;?>
              <?php } ?>            
            </select>
            
            <label>Guru</label>
            <select name="kode_guru" class="input-xlarge">
              <?php foreach($rs_guru->result() as $guru) { ?>
                <option value="<?php echo $guru->kode;?>" <?php echo set_select('kode_guru',$guru->kode);?> /> <?php echo $guru->nama;?>
              <?php } ?>
            </select>
            
            <label>Kelas</label>
            <select id="kelas" name="kelas" class="input-xlarge">
              <option value="<?php echo set_value('kelas');?>"><?php echo set_value('kelas');?></option>
              <option value="10 RPL 1"/> 10 RPL 1
              <option value="10 RPL 2"/> 10 RPL 2
              <option value="10 RPL 3"/> 10 RPL 3
              <option value="11 RPL 1"/> 11 RPL 1
              <option value="11 RPL 2"/> 11 RPL 2
              <option value="11 RPL 3"/> 11 RPL 3
              <option value="12 RPL 1"/> 12 RPL 1
              <option value="10 ANM 1"/> 10 ANM 1
              <option value="10 ANM 2"/> 10 ANM 2
              <option value="11 ANM 1"/> 11 ANM 1
              <option value="11 ANM 2"/> 11 ANM 2
              <option value="12 ANM"/> 12 ANM
              <option value="10 TKR 1"/> 10 TKR 1
              <option value="10 TKR 2"/> 10 TKR 2
              <option value="10 TKR 1"/> 10 TKR 1
              <option value="11 TKR 1"/> 11 TKR 1
              <option value="11 TKR 2"/> 11 TKR 2
              <option value="12 TKR"/> 12 TKR
              <option value="10 TPL"/> 10 TPL
              <option value="11 TPL"/> 11 TPL
              <option value="12 TPL"/> 12 TPL

            </select>
            
            <label>Tahun Akademik</label>
            <select id="tahun_akademik" name="tahun_akademik" class="input-xlarge">
              <option value="2011-2012" <?php echo set_select('tahun_akademik','2011-2012');?> /> 2011-2012
              <option value="2012-2013"  /> 2012-2013
              <option value="2013-2014" /> 2013-2014
              <option value="2014-2015" /> 2014-2015
              <option value="2015-2016" /> 2015-2016
              <option value="2016-2017"  /> 2016-2017
              <option value="2017-2018"  /> 2017-2018
              <option value="2018-2019"  /> 2018-2019
              <option value="2019-2020" /> 2019-2020            
            </select>
			
            <div class="form-actions">
              <button type="submit" class="btn btn-primary">Save</button>
              <a href="<?php echo base_url() .'web/pengampu'; ?>"><button type="button" class="btn">Cancel</button></a>
            </div>
        </form>

        <footer>
          <hr />
          <p class="pull-right">Design by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
          <p>&copy; 2012 <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
        </footer>

      </div>
   </div>
</div>      