<?php
namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Ivory\CKEditorBundle\Form\Type\CKEditorType;
class PaymentType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $builder->add('currency',null,array("label"=>"Currency Code"));
        $builder->add('paypal',ChoiceType::class, array(
                'choices' => array(
                    true => "Enable PayPal Payment",
                    false => "Disable PayPal Payment",
                )));
        $builder->add('paypalaccount',null,array("label"=>"PayPal Account"));
        $builder->add('paypalclientid',null,array("label"=>"PayPal Client id"));
        $builder->add('paypalclientsecret',null,array("label"=>"PayPal Client secret"));
        $builder->add('paypalsandbox',ChoiceType::class, array(
                'choices' => array(
                    true => "Enable Sandbox Mode",
                    false => "Disable Sandbox Mode",
                )));
        $builder->add('stripe',ChoiceType::class, array(
                'choices' => array(
                    true => "Enable Stripe Payment",
                    false => "Disable Stripe Payment",
                )));
        $builder->add('gpay',ChoiceType::class, array(
                'choices' => array(
                    true => "Enable Google Play Payment",
                    false => "Disable Google Play Payment",
                )));
        $builder->add('stripeapikey',null,array("label"=>"Stripe Api Key"));
        $builder->add('stripepublickey',null,array("label"=>"Stripe Public Key"));
        $builder->add('manual',ChoiceType::class, array(
                'choices' => array(
                    true => "Enable Cash Payment",
                    false => "Disable Cash Payment",
                )));
        $builder->add('cashaccount',null,array("label"=>"Cash Account Infos"));

        $builder->add('save', 'submit',array("label"=>"SAVE"));
    }
    public function getName()
    {
        return 'Payment';
    }
}
?>