<?php

namespace App\Imports;

use App\Product;
use App\Item;
use App\Stock;
use App\Tax;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Illuminate\Support\Facades\Validator;

class ProductsImport implements ToCollection, WithStartRow
{
    /**
    * @param Collection $rows
    */
    public function collection(Collection $rows)
    {   

		$company_id = company_id();
        $i = 0;
        $j = 1;

        foreach ($rows as $row) 
        {
        	if($row->filter()->isEmpty()){
	            continue;
	    	}

	    	Validator::make($rows->toArray(), [
	            "$i.0" => 'required',
	            "$i.1" => 'required',
	            "$i.2" => 'required',
	            "$i.3" => 'required',
	            "$i.4" => 'required',
	            "$i.5" => 'required|in:inclusive,exclusive',
	        ],[
			    "$i.0.required" => 'شماره ردیف'." $j - ".'تام کالا الزامی می باشد',
			    "$i.1.required" => 'شماره ردیف'." $j - ".'قیمت خرید کالا الزامی می باشد',
			    "$i.2.required" => 'شماره ردیف'." $j - ".'قیمت فروش کالا الزامی می باشد',
			    "$i.3.required" => 'شماره ردیف'." $j - ".'فیلد واحد کالا الزامی می باشد',
			    "$i.4.required" => 'شماره ردیف'." $j - ".'موجودی اولیه الزامی می باشد',
			    "$i.5.required" => 'شماره ردیف'." $j - ".'روش مالیات الزامی می باشد',
			    "$i.5.in" 		=> 'شماره ردیف'." $j - ".'روش مالیات فقط باید (شامل می شود) و (شامل نمیشود) باشد',
			])->validate();

			$i++;
			$j++;

			//Create Item
			$item = Item::create([
				'item_name'   => $row[0],
				'item_type'   => 'product',
				'company_id'  => $company_id,
			]);

			$tax = Tax::where('tax_name',$row[5])->first();
	        
			//Create Product
			$product = Product::create([
				'item_id'        => $item['id'],
				'product_cost'   => $row[1],
				'product_price'  => $row[2],
				'product_unit'   => $row[3],
				'tax_method'     => $row[5],
				'tax_id'         => $tax ? $tax->id : '',
				'description'    => $row[7],
			
			]);

			//Create Stock Row
			Stock::create([
				'product_id'  => $item->id,
				'quantity'    => $row[4],
				'company_id'  => $company_id,
			]);

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
