<?php

namespace Backend\Modules\Projects\Actions;

/*
 * This file is part of Fork CMS.
 *
 * For the full copyright and license information, please view the license
 * file that was distributed with this source code.
 */

use Backend\Core\Engine\Base\ActionEdit as BackendBaseActionEdit;
use Backend\Core\Engine\Model as BackendModel;
use Backend\Core\Engine\Form as BackendForm;
use Backend\Core\Engine\Language as BL;
use Backend\Modules\Projects\Engine\Model as BackendProjectsHelper;
use Backend\Modules\Projects\Engine\Model as BackendProjectsModel;
 
/**
 * This is the edit image action, it will display a form to edit an existing project image.
 *
 * @author Bart De Clercq <info@lexxweb.be>
 * @author Tim van Wolfswinkel <tim@webleads.nl>
 */
class EditImage extends BackendBaseActionEdit
{
	/**
	 * Execute the action
	 */
	public function execute()
	{
		$this->id = $this->getParameter('id', 'int');
		if($this->id !== null && BackendProjectsModel::existsImage($this->id))
		{
			parent::execute();

			$this->getData();
			$this->loadForm();
			$this->validateForm();
			$this->parse();
			$this->display();
		}
		// the item does not exist
		else $this->redirect(BackendModel::createURLForAction('index') . '&error=non-existing');
	}

	/**
	 * Get the data
	 */
	protected function getData()
	{
		$this->project = BackendProjectsModel::get($this->getParameter('project_id', 'int'));
		$this->image = BackendProjectsModel::getImage($this->getParameter('id', 'int'));
		$this->image['data'] = unserialize($this->record['data']);
		$this->image['link'] = $this->record['data']['link'];
	}

	/**
	 * Load the form
	 */
	protected function loadForm()
	{
		$this->frm = new BackendForm('editImage');
		$this->frm->addText('title', $this->image['title']);
		$this->frm->addImage('image');
	}

	/**
	 * Parse the form
	 */
	protected function parse()
	{
		parent::parse();
				
		$this->tpl->assign('project', $this->project);
		$this->tpl->assign('id', $this->id);
		$this->tpl->assign('item', $this->image);
	}

	/**
	 * Validate the form
	 */
	protected function validateForm()
	{
		// is the form submitted?
		if($this->frm->isSubmitted())
		{
			// cleanup the submitted fields, ignore fields that were added by hackers
			$this->frm->cleanupFields();

			// validate fields
			$image = $this->frm->getField('image');

			$this->frm->getField('title')->isFilled(BL::err('NameIsRequired'));
			if($this->image['filename'] === null) $image->isFilled(BL::err('FieldIsRequired'));

			// no errors?
			if($this->frm->isCorrect())
			{
				// build image record to insert
				$item['id'] = $this->id;
				$item['title'] = $this->frm->getField('title')->getValue();
				$item['filename'] = $this->image['filename'];

				// set files path for this record
				$path = FRONTEND_FILES_PATH . '/' . $this->module . '/' . $this->project['id'];
				$formats = array();
				$formats[] = array('size' => '64x64', 'force_aspect_ratio' => false);
				$formats[] = array('size' => '128x128', 'force_aspect_ratio' => false);
                $formats[] = array('size' => BackendModel::getModuleSetting($this->URL->getModule(), 'width1') . 'x' . BackendModel::getModuleSetting($this->URL->getModule(), 'height1'), 'allow_enlargement' => BackendModel::getModuleSetting($this->URL->getModule(), 'allow_enlargment1'), 'force_aspect_ratio' => BackendModel::getModuleSetting($this->URL->getModule(), 'force_aspect_ratio1'));
                $formats[] = array('size' => BackendModel::getModuleSetting($this->URL->getModule(), 'width2') . 'x' . BackendModel::getModuleSetting($this->URL->getModule(), 'height2'), 'allow_enlargement' => BackendModel::getModuleSetting($this->URL->getModule(), 'allow_enlargment2'), 'force_aspect_ratio' => BackendModel::getModuleSetting($this->URL->getModule(), 'force_aspect_ratio2'));
                $formats[] = array('size' => BackendModel::getModuleSetting($this->URL->getModule(), 'width3') . 'x' . BackendModel::getModuleSetting($this->URL->getModule(), 'height3'), 'allow_enlargement' => BackendModel::getModuleSetting($this->URL->getModule(), 'allow_enlargment3'), 'force_aspect_ratio' => BackendModel::getModuleSetting($this->URL->getModule(), 'force_aspect_ratio3'));
                //$formats[] = array('size' => BackendModel::getModuleSetting($this->URL->getModule(), 'width4') . 'x' . BackendModel::getModuleSetting($this->URL->getModule(), 'height4'), 'allow_enlargement' => BackendModel::getModuleSetting($this->URL->getModule(), 'allow_enlargment4'), 'force_aspect_ratio' => BackendModel::getModuleSetting($this->URL->getModule(), 'force_aspect_ratio4'));

				if($image->isFilled())
				{
					// overwrite the filename
					if($item['filename'] === null)
					{
						$item['filename'] = time() . '.' . $image->getExtension();
					}

					// add images
					BackendProjectsHelper::addImages($image, $path, $item['filename'], $formats);
				}
				
				// save the item
				$id = BackendProjectsModel::saveImage($item);

				// trigger event
				BackendModel::triggerEvent($this->getModule(), 'after_edit_image', array('item' => $item));

				// everything is saved, so redirect to the overview
				$this->redirect(BackendModel::createURLForAction('media') . '&project_id=' . $this->project['id'] . '&report=edited&var=' . urlencode($item['title']) . '&highlight=row-' . $item['id']);
			}
		}
	}
}
