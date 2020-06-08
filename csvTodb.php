<?php
include "connection.php";

    if (($handle = fopen("SAMPLE-CSV-from-DT82EM-dataloger (1).csv", "r")) !== FALSE) {
		$row = 0;
		
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {

				$timestamp =  $data[0];
				$tz = $data[1];
				$solar = $data[2];
                $rainfall = $data[3];
				$wind_speed = $data[4];
			    $wind_direction = $data[5];
                $air_temperature = $data[6];
                $vapour_pressure = $data[7];
                $atm_pressure = $data[8];
                $relative_humidity = $data[9];
				$tb_count = $data[10];
                $tb_rainfall = $data[11]; 
			
				$sqlInsert = "INSERT into data_records (id,tz,solar,rainfall,wind_speed,
                            wind_direction,air_temperature,vapour_pressure,atm_pressure,
                            relative_humidity,tb_count,tb_rainfall,timing)
                            values ($row,'$tz','$solar','$rainfall','$wind_speed',
                                    '$wind_direction','$air_temperature',
                                    '$vapour_pressure','$atm_pressure','$relative_humidity',
                                    '$tb_count','$tb_rainfall','$timestamp')";
			
			$insertId = $con->query($sqlInsert);
			$row++;
        }
   
        if (! empty($insertId)) {
                $type = "success";
                $message = "CSV Data Imported into the Database";
        } else {
                $type = "error";
                $message = "Problem in Importing CSV Data";
        }
		
        fclose($handle);
    }
?>