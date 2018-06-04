{$valueType = $property->getValueTypeObject()}
{$imagePreviewItems = []}
    
{component 'field' template='imageset-ajax'
        name       = "property[{$property->getId()}]"
        label      = 'Фотосет'
        modalTitle = 'Выбор фото'
        targetType = 'imageset'
        rules   = $property->getValidateRulesForm()
        targetId   = $valueType->getValueForForm()
        classes    = 'js-imageset-field'}