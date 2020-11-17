<?php

namespace App\Imports;

use App\Lead;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Auth;

class LeadsImport implements ToCollection, WithStartRow
{

	private $data; 

    public function __construct(array $data = [])
    {
        $this->data = $data; 
    }

	/**
    * @param Collection $rows
    */
	public function collection(Collection $rows)
    {
		$row_count = count($rows);

		$company_id = company_id();
		$user_id = Auth::id();
		
		$i = 0;
        $j = 1;
	
        foreach ($rows as $row) 
        {
        	if($row->filter()->isEmpty()){
	            continue;
	    	}

			Validator::make($rows->toArray(), [
	            "$i.0" => 'required|max:50',
	            "$i.2" => 'nullable|email',
	            "$i.3" => 'required',
	            "$i.7" => 'required|max:3',
	        ],[
			    "$i.0.required"     => 'شماره ردیف'." $j - ".'فیلد نام الزامی می باشد',
			    "$i.0.max"          => 'شماره ردیف'." $j - ".'طول فیلد نام باید حداکثر 50 کاراکتر باشد',
			    "$i.2.email"        => 'شماره ردیف'." $j - ".'ایمیل باید معتبر باشد',
			    "$i.3.required"     => 'شماره ردیف'." $j - ".'تاریخ تماس الزامی می باشد',
			    "$i.7.required"     => 'شماره ردیف'." $j - ".'فیلد واحد ارز الزامی می باشد',
			    "$i.7.max" 			=> 'شماره ردیف'." $j - ".'فیلد واحد ارز باید 3 کاراکتر باشد',
			])->validate();

			$i++;
			$j++;			
			
			$lead = new Lead();
			$lead->name = $row[0];
			$lead->company_name = $row[1];
			$lead->email = $row[2];

			$lead->lead_status_id = $this->data['lead_status_id'];
			$lead->lead_source_id = $this->data['lead_source_id'];
			$lead->assigned_user_id = $this->data['assigned_user_id'];

			$lead->created_user_id = $user_id;
			$lead->contact_date = date('Y-m-d', strtotime($row[3]));
			$lead->phone = '+'.$row[4];
			$lead->website = $row[5];
			$lead->country = $row[6];
			$lead->currency = $row[7];
			$lead->vat_id = $row[8];
			$lead->reg_no = $row[9];
			$lead->city = $row[10];
			$lead->state = $row[11];
			$lead->zip = $row[12];
			$lead->address = $row[13];
			$lead->company_id = $company_id;
			$lead->save();

			create_log('leads', $lead->id, 'لید ساخته شد');
        	create_log('leads', $lead->id, 'مربوط به'.' '.$lead->assigned_user->name);
        }
  
    }
	
	/**
     * @return int
    */
    public function startRow(): int
    {
        return 2;
    }
	
}
