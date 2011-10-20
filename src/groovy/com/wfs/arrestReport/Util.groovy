package com.wfs.arrestReport

class Util
{
	public static Date getDate(String format, String input)
	{
		if (input.length() == 0 || input.every { Character.isWhitespace(it.charAt(0))}) return null
		Date date = null
		try
		{
			date = Date.parse(format, input)
		}
		catch(Exception e){}
		return date
	}
}
