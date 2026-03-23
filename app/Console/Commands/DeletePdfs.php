<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

class DeletePdfs extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'pdfs:delete';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Delete all files in the pdfs directory';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $files = Storage::disk('public')->files('pdfs');
        foreach ($files as $file) {
            Storage::disk('public')->delete($file);
        }
        $this->info('All files in pdfs directory have been deleted.');
    }
}
