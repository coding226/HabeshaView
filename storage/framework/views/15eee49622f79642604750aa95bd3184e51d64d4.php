<?php $__env->startSection('title',"Player Sttings"); ?>
<?php $__env->startSection('content'); ?>
  <div class="admin-form-main-block">
    <h4 class="admin-form-text"><a href="<?php echo e(url('admin/')); ?>" data-toggle="tooltip" data-original-title="Go back" class="btn-floating"><i class="material-icons">reply</i></a> Player Settings</h4>
    <div class="row">
      <div class="col-md-6">
        <div class="admin-form-block z-depth-1">       
          <?php echo Form::model($ps, ['method' => 'POST', 'action' => ['PlayerSettingController@update', $ps->id], 'files' => true]); ?>


          <div class="row">
           <div class="form-group<?php echo e($errors->has('logo_enable') ? ' has-error' : ''); ?>">
              <div class="row">
                <div class="col-xs-4">
                  <?php echo Form::label('logo_enable', 'Logo Enable: '); ?>

                </div>
                <div class="col-xs-5 pad-0">
                  <label class="switch">                
                    <?php echo Form::checkbox('logo_enable', 1, $ps->share_opt, ['class' => 'checkbox-switch', 'id'=>'logo_enable']); ?>

                    <span class="slider round"></span>
                  </label>
                </div>
              </div>
              <div class="col-xs-12">
                <small class="text-danger"><?php echo e($errors->first('logo_enable')); ?></small>
              </div>
            </div>
             <div class="col-md-6 " >
                  <div class="logobox form-group<?php echo e($errors->has('logo') ? ' has-error' : ''); ?> input-file-block">
                   <?php echo Form::label('logo', 'logo'); ?> - <p class="info">Help block text</p>
                    <?php echo Form::file('logo', ['class' => 'input-file', 'id'=>'logo']); ?>

                    <label for="logo" class="btn btn-danger js-labelFile" data-toggle="tooltip" data-original-title="logo">
                      <i class="icon fa fa-check"></i>
                      <span class="js-fileName">Choose a File</span>
                    </label>
                    <p class="info">Choose custom logo</p>
                    <small class="text-danger"><?php echo e($errors->first('logo')); ?></small>
                  </div>
                </div>
                </div>
            <div class="form-group<?php echo e($errors->has('cpy_text') ? ' has-error' : ''); ?>">
              <?php echo Form::label('cpy_text', 'Copyright Text'); ?>

              <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter your Copyright Text"></i>
              <?php echo Form::text('cpy_text', null, ['class' => 'form-control', 'required' => 'required',]); ?>

              <small class="text-danger"><?php echo e($errors->first('cpy_text')); ?></small>
            </div>
           
            <div class="form-group<?php echo e($errors->has('share_opt') ? ' has-error' : ''); ?>">
              <div class="row">
                <div class="col-xs-4">
                  <?php echo Form::label('share_opt', 'Share Option: '); ?>

                </div>
                <div class="col-xs-5 pad-0">
                  <label class="switch">                
                    <?php echo Form::checkbox('share_opt', 1, $ps->share_opt, ['class' => 'checkbox-switch']); ?>

                    <span class="slider round"></span>
                  </label>
                </div>
              </div>
              <div class="col-xs-12">
                <small class="text-danger"><?php echo e($errors->first('share_opt')); ?></small>
              </div>
            </div>
             <div class="form-group<?php echo e($errors->has('auto_play') ? ' has-error' : ''); ?>">
              <div class="row">
                <div class="col-xs-4">
                  <?php echo Form::label('auto_play', 'Auto Play: '); ?>

                </div>
                <div class="col-xs-5 pad-0">
                  <label class="switch">                
                    <?php echo Form::checkbox('auto_play', 1, $ps->auto_play, ['class' => 'checkbox-switch']); ?>

                    <span class="slider round"></span>
                  </label>
                </div>
              </div>
              <div class="col-xs-12">
                <small class="text-danger"><?php echo e($errors->first('speed')); ?></small>
              </div>
            </div>
             <div class="form-group<?php echo e($errors->has('speed') ? ' has-error' : ''); ?>">
              <div class="row">
                <div class="col-xs-4">
                  <?php echo Form::label('speed', 'Speed Options: '); ?>

                </div>
                <div class="col-xs-5 pad-0">
                  <label class="switch">                
                    <?php echo Form::checkbox('speed', 1, $ps->speed, ['class' => 'checkbox-switch']); ?>

                    <span class="slider round"></span>
                  </label>
                </div>
              </div>
              <div class="col-xs-12">
                <small class="text-danger"><?php echo e($errors->first('speed')); ?></small>
              </div>
            </div>
             
              <div class="form-group<?php echo e($errors->has('info_window') ? ' has-error' : ''); ?>">
              <div class="row">
                <div class="col-xs-4">
                  <?php echo Form::label('info_window', 'Info-Window Option: '); ?>

                </div>
                <div class="col-xs-5 pad-0">
                  <label class="switch">                
                    <?php echo Form::checkbox('info_window', 1, $ps->info_window, ['class' => 'checkbox-switch']); ?>

                    <span class="slider round"></span>
                  </label>
                </div>
              </div>
              <div class="col-xs-12">
                <small class="text-danger"><?php echo e($errors->first('info_window')); ?></small>
              </div>
            </div>
            <div class="form-group<?php echo e($errors->has('skin') ? ' has-error' : ''); ?>">
              <div class="row">
                <div class="col-xs-4">
                  <?php echo Form::label('skin', 'Player Select Skin: '); ?>

                </div>
                <div class="col-xs-5 pad-0">
                  <select class="select2" name="skin" id="skin">
                    <?php if($ps->skin=='minimal_skin_dark'): ?>
                    <option value="minimal_skin_dark" selected="true">Minimal Dark</option>
                    <?php else: ?>
                      <option value="minimal_skin_dark">Minimal Dark</option>
                    <?php endif; ?>
                     <?php if($ps->skin=='minimal_skin_white'): ?>
                    <option value="minimal_skin_white" selected="true">Minimal White</option>
                    <?php else: ?>
                      <option value="minimal_skin_white">Minimal White</option>
                    <?php endif; ?>
                     <?php if($ps->skin=='classic_skin_dark'): ?>
                   <option value="classic_skin_dark" selected="true">Classic Dark</option>
                    <?php else: ?>
                     
                    <option value="classic_skin_dark">Classic Dark</option>
                    <?php endif; ?>
                     <?php if($ps->skin=='classic_skin_white'): ?>
                    <option value="classic_skin_white" selected="true">Classic White</option>
                    <?php else: ?>
                     
                    <option value="classic_skin_white">Classic White</option>
                    <?php endif; ?>
                     <?php if($ps->skin=='modern_skin_dark'): ?>
                    <option value="modern_skin_dark" selected="true">Modern Dark</option>
                    <?php else: ?>
                     
                     <option value="modern_skin_dark">Modern Dark</option>
                    <?php endif; ?>
                     <?php if($ps->skin=='modern_skin_white'): ?>
                    <option value="modern_skin_white" selected="true">Modern White</option>
                    <?php else: ?>
                     
                     <option value="modern_skin_white" >Modern White</option>
                    <?php endif; ?>
                   
                  </select>
                </div>
              </div>
              <div class="col-xs-12">
                <small class="text-danger"><?php echo e($errors->first('skin')); ?></small>
              </div>
            </div>
             <div class="form-group<?php echo e($errors->has('loop_video') ? ' has-error' : ''); ?>">
              <div class="row">
                <div class="col-xs-4">
                  <?php echo Form::label('loop_video', 'Loop-Video Option: '); ?>

                </div>
                <div class="col-xs-5 pad-0">
                  <label class="switch">                
                    <?php echo Form::checkbox('loop_video', 1, $ps->loop_video, ['class' => 'checkbox-switch']); ?>

                    <span class="slider round"></span>
                  </label>
                </div>
              </div>
              <div class="col-xs-12">
                <small class="text-danger"><?php echo e($errors->first('loop_video')); ?></small>
              </div>
            </div>
             <div class="form-group<?php echo e($errors->has('is_resume') ? ' has-error' : ''); ?>">
              <div class="row">
                <div class="col-xs-4">
                  <?php echo Form::label('is_resume', 'Resume/Playback Option: '); ?>

                </div>
                <div class="col-xs-5 pad-0">
                  <label class="switch">                
                    <?php echo Form::checkbox('is_resume', 1, $ps->is_resume, ['class' => 'checkbox-switch']); ?>

                    <span class="slider round"></span>
                  </label>
                </div>
              </div>
              <div class="col-xs-12">
                <small class="text-danger"><?php echo e($errors->first('is_resume')); ?></small>
              </div>
            </div>
            <div class="btn-group pull-right">
              <button type="submit" class="btn btn-success">Update</button>
            </div>
          <div class="clear-both"></div>
          <?php echo Form::close(); ?>

        </div>  
      </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('custom-script'); ?>
<script>
  $(function(){
    $('form').on('submit', function(event){
      $('.loading-block').addClass('active');
    });
  });

 $('#logo_enable').on('switchChange.bootstrapSwitch', function (event, state) {

          if (state == true) {

             $('#logobox').show();
          

          } else if (state == false) {

            $('#logobox').hide();
          

          };

      });

  
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>