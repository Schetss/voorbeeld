<?php

namespace Backend\Modules\Projects\Actions;

/*
 * This file is part of Fork CMS.
 *
 * For the full copyright and license information, please view the license
 * file that was distributed with this source code.
 */
use Backend\Core\Engine\Base\Action as BackendBaseAction;
use Backend\Core\Engine\Model as BackendModel;
use Backend\Modules\Projects\Engine\Model as BackendProjectsModel;

/**
 * This action is used to perform mass actions on project media (delete, ...)
 *
 * @author Bart De Clercq <info@lexxweb.be>
 * @author Tim van Wolfswinkel <tim@webleads.nl>
 */
class MassAction extends BackendBaseAction
{
	/**
	 * Execute the action
	 */
	public function execute()
	{
		parent::execute();
		
		// action to execute
		$action = \SpoonFilter::getGetValue('action', array('deleteImages', 'deleteFiles', 'deleteVideos'), 'delete');
		
		if(!isset($_GET['id'])) $this->redirect(BackendModel::createURLForAction('index') . '&error=no-selection');
		
		// at least one id
		else
		{
			// redefine id's
			$aIds = (array) $_GET['id'];
			$slideshowID = (int) $_GET['project_id'];

			// delete media
			if($action == 'deleteImages'){
				BackendProjectsModel::deleteImage($aIds);
			} else if($action == 'deleteFiles'){
				BackendProjectsModel::deleteFile($aIds);
			} else if($action == 'deleteVideos'){
				BackendProjectsModel::deleteVideo($aIds);
			}
		}

		$this->redirect(BackendModel::createURLForAction('media') . '&project_id=' . $slideshowID . '&report=deleted');
	}
}
