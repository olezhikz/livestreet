<?php

/*
 * LiveStreet CMS
 * Copyright © 2018 OOO "ЛС-СОФТ"
 *
 * ------------------------------------------------------
 *
 * Official site: www.livestreetcms.com
 * Contact e-mail: office@livestreetcms.com
 *
 * GNU General Public License, version 2:
 * http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 *
 * ------------------------------------------------------
 *
 * @link http://www.livestreetcms.com
 * @copyright 2013 OOO "ЛС-СОФТ"
 * @author Oleg Demodov <boxmilo@gmail.com>
 *
 */

/**
 * Description of Item
 *
 * @author oleg
 */
class ModuleMenu_EntityItem extends EntityORM{
    
    protected $aRelations = [
        'menu' => [self::RELATION_TYPE_BELONGS_TO, "ModuleMenu_EntityMenu", 'menu_id'],
        self::RELATION_TYPE_TREE
    ];
    
    public function _getTreeParentKey()
    {
        return 'pid';
    }
}
