<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class ContactAccount extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
	private $account;
	
    public function __construct($account)
    {
        $this->account = $account;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
		$login_url = url('login');
		
        return (new MailMessage)
		            ->subject('دسترسی کاربر به پورتال')
                    ->line('این ایمیل برای کاربر دیگری در پورتال ثبت شده است')
                    ->line('شما هم اکنون میتوانید وارد پورتال شوید و جزئیات را دنبال کنید.')
                    ->line('ایمیل'.': '.$this->account->email)
                    ->line('کلمه عبور'.': '.$this->account->password)
                    ->action('ورود به پورتال', $login_url)
                    ->line('با تشکر از شما برای پیوستن به ما!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
