package com.wfs.arrestReport

import java.util.Date;

class GetDataJob
{
	def timeout = 14400000 // execute job once in 4 hours (this is milliseconds)
	
	def execute() 
	{
		getArrestData()
		getBookings()
	}
	
	public void getArrestData()
	{
		String line = ""
		try
		{
			boolean first = true
			def url = "http://www.jims.hctx.net/jimshome/jimsreports/jims1058.txt".toURL().eachLine
			{
				if (first)
				{
					first = false // skip first line
				}
				else
				{
					line = it
					def fields = line.split(";")
					def arrestData = new ArrestData
									(
									bookingNumber: Long.valueOf(fields[0]),
									name: fields[1],
									sex:  fields[2],
									race: fields[3],
									dob: com.wfs.arrestReport.Util.getDate("MM/dd/yy", fields[4]),
									arrestDate: com.wfs.arrestReport.Util.getDate("MMddyyyy", fields[5]),
									bookingDate: com.wfs.arrestReport.Util.getDate("MMddyyyy", fields[6]),
									addressNumber: fields[7],
									addressPrefix: fields[8],
									Street: fields[9],
									addressSuffix: fields[10],
									addressAli: fields[11],
									city: fields[12],
									state: fields[13],
									zip: fields[14],
									chargeCode: fields[15],
									chargeWording: fields[16],
									chargeLevel: fields[17],
									caseNumber: fields[18],
									disposition: fields[19]
									)
					if (arrestData.save())
					{
						// success!!
					}
					else
					{
						if (arrestData.hasErrors())
						{
							println("Errors during arrest data save:")
							println(arrestData.errors)
						}
					}
				}
			}
		}
		catch(Exception e)
		{
			println("Exception in getArrestData: " + e.getMessage())
			println("line = " + line)
		}
	}
	
	public void getBookings()
	{
		String line = null
		try
		{
			boolean foundSumary = false
			def url = "http://www.jims.hctx.net/jimshome/jimsreports/jims503.htm".toURL().eachLine
			{
				line = it
				if (line.contains("SUMMARY")) foundSumary = true
				else if ((! foundSumary) && (line.length() >10) && (line.substring(1,10).isNumber()))
				{
					def arrestData = ArrestData.findWhere(bookingNumber: Long.valueOf(line.substring(1,10)))
					// if arrestData instance does not exist then they were arrested before the data was gathered
					if (arrestData != null)
					{
						arrestData.spn = Long.valueOf(line.substring(11,19))
						arrestData.releaseDate = com.wfs.arrestReport.Util.getDate("MM/dd/yy", line.substring(67,75).toString())
						arrestData.reason = line.substring(87,92)
						long temp = Long.valueOf(line.substring(112,118))
						arrestData.bondAmount = temp
						arrestData.save()
					}
				}
			}
		}
		catch(Exception e)
		{
			println("Exception in getBookings: " + e.getMessage())
			println("line = " + line)
		}
	}
}
