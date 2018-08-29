<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendEmail extends Mailable
{
    use Queueable, SerializesModels;
    //public $data;
    protected $user;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($user)
    {
        //
        $this->user=$user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
       
        //return $this->view('view.name');
        /*return  $this->view('email.verifikasi')
                    ->from('waviq.subkhi@gmail.com')
                    ->subject('Verifikasi Akun');*/

        return $this->view('email.verifikasi')->with([
            'activation_token' => $this->user->activation_token,
            ]);
    }
}
