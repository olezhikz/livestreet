{$component = 'toggle'}
{component_define_params params=['label', 'items', 'mods', 'classes', 'attributes', 'hook', 'activeItem' ]}

{* Получаем пункты установленные плагинами *}
{if $hook}
    {hook run="toggle_{$hook}" assign='hookItems' params=$hookParams items=$items array=true}
    {$items = ( $hookItems ) ? $hookItems : $items}
{/if}

{* Smarty-блок для изменения опций *}
{block 'toggle_options'}{/block}

{$buttons=[
    [  
        'text' => $label,  
        'type'=>'button', 
        'isDisabled' => true
    ]
    
]}

{foreach $items as $item}
    {$item.classes = "js-item-toggle"}
    {$item.type = "button"}
    {$item.attributes['name'] = $item.name}
    {if $item.name == $activeItem}
        {$item.classes = "{$item.classes} active"}
    {/if}
    {$buttons[] = $item}
{/foreach}

{component 'button' template='group' classes="{$classes} ls-toggle" attributes=$attributes buttons=$buttons}