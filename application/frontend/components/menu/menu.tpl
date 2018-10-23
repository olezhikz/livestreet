{**
 * Главное меню
 *
 * @param string  $mods
 * @param string  $classes
 * @param array   $attributes
 *}

{component_define_params params=[ 'items', 'mods', 'classes', 'attributes', 'activeItem', 'mods' ]}

{component 'nav' hook='main' activeItem=$activeItem mods=$mods params=$params}
