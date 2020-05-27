<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Emails extends Admin_Controller
{
	/**
	 * Constructor for the class
	 */
	public function __construct()
	{
		parent::__construct();

		$this->load->model('email_model', 'emails');
	}

	/**
	 * Loads the list of templates.
	 */
	public function index()
	{
		$this->set_page_title('Email Templates');

		$this->load_default_templates();

		$data['templates'] = $this->emails->get_all();
		$data['content']   = $this->load->view('admin/settings/emails/index', $data, TRUE);
		$this->load->view('admin/layouts/index', $data);
	}

	/**
	 * Updates the email template
	 *
	 * @param int  $id  The template id
	 */
	public function email_template($id = '')
	{
		$this->set_page_title('Email Templates | Edit');

		if ($id)
		{
			$data['template'] = $this->emails->get($id);

			if ($this->input->post())
			{
				$data = array
					(
					'subject' => $this->input->post('subject'),
					'message' => $this->input->post('message')
				);

				$update = $this->emails->update($id, $data);

				if ($update)
				{
					set_alert('success', _l('_updated_successfully', 'Email template'));
					log_activity("Email Template Updated [ID:$id]");
					redirect('admin/emails');
				}
			}
			else
			{
				$data['content'] = $this->load->view('admin/settings/emails/email_template', $data, TRUE);
				$this->load->view('admin/layouts/index', $data);
			}
		}
		else
		{
			redirect('admin/emails');
		}
	}

	/**
	 * Loads default templates data into the database if not already exists.
	 */
	private function load_default_templates()
	{
		$templates = $this->default_templates();

		foreach ($templates as $template)
		{
			$template_exists = $this->emails->count_by(['slug' => $template['slug']]);

			if ($template['name'] != '' && $template['slug'] != '')
			{
				if ($template_exists == 0)
				{
					$data = [
						'name'         => $template['name'],
						'slug'         => $template['slug'],
						'placeholders' => serialize($template['placeholders'])
					];

					$this->emails->insert($data);
				}
				else
				{
					$data = [
						'name'         => $template['name'],
						'placeholders' => serialize($template['placeholders'])
					];

					$this->emails->update_by(array('slug' => $template['slug']), $data);
				}
			}
		}
	}

	/**
	 * Contains the Default Email Templates to be used in the system.
	 * You can add or remove Templates in this function & it will reflect  * on the Email Templates Module
	 *
	 * @return [array]      The default email templates with their placeholders information
	 */
	public function default_templates()
	{
		$templates = [
			[
				'name'         => 'Forgot Password',
				'slug'         => 'forgot-password',
				'placeholders' => [
					'{firstname}'          => 'User Firstname',
					'{lastname}'           => 'User Lastname',
					'{email}'              => 'User Email',
					'{reset_password_url}' => 'Reset Password URL',
					'{email_signature}'    => 'Email Signature',
					'{company_name}'       => 'Company Name'
				]
			],
			[
				'name'         => 'New User Sign Up',
				'slug'         => 'new-user-signup',
				'placeholders' => [
					'{firstname}'              => 'User Firstname',
					'{lastname}'               => 'User Lastname',
					'{email_verification_url}' => 'Email Verification URL',
					'{email_signature}'        => 'Email Signature',
					'{company_name}'           => 'Company Name'
				]
			],
			[
				'name'         => 'Renew Subscription Plan',
				'slug'         => 'renew-subscription-plan',
				'placeholders' => [
					'{firstname}'       => 'User Firstname',
					'{lastname}'        => 'User Lastname',
					'{url}'             => 'Update Subscriptions',
					'{email_signature}' => 'Email Signature',
					'{company_name}'    => 'Company Name',
					'{expired_date}'    => 'Expired Date'
				]
			],
			[

				'name'         => 'Thanks For Product Review',
				'slug'         => 'thanks-for-product-review',
				'placeholders' => [
					'{firstname}'           => 'User Firstname',
					'{lastname}'            => 'User Lastname',
					'{image_url}'           => 'Product image url',
					'{products_detail_url}' => 'Products detail page',
					'{email_signature}'     => 'Email Signature',
					'{company_name}'        => 'Company Name',
					'{review_date}'         => 'Products review date',
					'{star_rating}'         => 'Star rating',
					'{review_msg}'          => 'Products review msg',
					'{product_name}'        => 'Products Name'
				]
			],
			[
				'name'         => 'Confirm Order',
				'slug'         => 'confirm-order',
				'placeholders' => [
					'{company_name}'    => 'Company Name',
					'{firstname}'       => 'User Firstname',
					'{frist_date}'      => 'Order delivery firstdate',
					'{second_date}'     => 'Order delivery seconddate',
					'{house_no}'        => 'User house number',
					'{societyname}'     => 'User society name',
					'{city}'            => 'User city',
					'{state}'           => 'User state',
					'{pincode}'         => 'User pincode',
					'{order_number}'    => 'Order number',
					'{order_date}'      => 'Order date',
					'{products_data}'   => 'Products detail',
					'{sub_total}'       => 'Sub total',
					'{shipping_amount}' => 'Shipping amount',
					'{coupon_amount}'   => 'Coupon amount',
					'{grand_total}'     => 'Grand total',
					'{email_signature}' => 'Email Signature',
					'{landmark}'        => 'Landmark'

				]
			]
		];

		return $templates;
	}
}
