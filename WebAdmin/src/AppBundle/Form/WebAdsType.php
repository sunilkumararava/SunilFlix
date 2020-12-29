<?php
namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Ivory\CKEditorBundle\Form\Type\CKEditorType;
class WebAdsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $builder->add('homebanner',null,array());
        $builder->add('homebannertype',ChoiceType::class, array(
                "label"=>"Banner Ad Type",
                'choices' => array(
                    "none" => "Disable",
                    "image" => "Image",
                    "code" => "Html code"
                )));
        $builder->add('moviebanner',null,array());
        $builder->add('moviebannertype',ChoiceType::class, array(
                "label"=>"Banner Ad Type",
                'choices' => array(
                    "none" => "Disable",
                    "image" => "Image",
                    "code" => "Html code"
                )));
        $builder->add('seriebanner',null,array());
        $builder->add('seriebannertype',ChoiceType::class, array(
                "label"=>"Banner Ad Type",
                'choices' => array(
                    "none" => "Disable",
                    "image" => "Image",
                    "code" => "Html code"
                )));
        $builder->add('channelbanner',null,array());
        $builder->add('channelbannertype',ChoiceType::class, array(
                "label"=>"Banner Ad Type",
                'choices' => array(
                    "none" => "Disable",
                    "image" => "Image",
                    "code" => "Html code"
                )));
        $builder->add('save', 'submit',array("label"=>"SAVE"));
    }
    public function getName()
    {
        return 'WebAds';
    }
}
?>