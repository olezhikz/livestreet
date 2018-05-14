{$component = 'toggle'}
{component_define_params params=['label', 'items', 'mods', 'classes', 'attributes' ]}

{$buttons=[
    [  
        'text' => $label,  
        'type'=>'button', 
        'isDisabled' => true
    ]
    
]}

{foreach $items as $item}
    {$item.classes = "js-item-toggle"}
    {$buttons[] = $item}
{/foreach}

{component 'button' template='group' classes="{$classes} ls-toggle" attributes=$attributes buttons=$buttons}