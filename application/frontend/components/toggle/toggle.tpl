{$component = 'toggle'}
{component_define_params params=['title', 'items', 'mods', 'classes', 'attributes' ]}

{$buttons=[
    [  
        'text' => $title,  
        'type'=>'button', 
        'isDisabled' => true
    ]
    
]}

{foreach $items as $item}
    {$buttons[] = $item}
{/foreach}

{component 'button' template='group' classes="{$classes} ls-toggle" attributes=$attributes buttons=$buttons}