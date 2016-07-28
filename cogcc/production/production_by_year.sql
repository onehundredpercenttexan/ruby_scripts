COPY (
select 
	w.attrib_1 as well_api_number, 
	w.api_county, 
	w.api_seq_nu as api_sequence, 
	w.attrib_3 as well_number_name, 
	w.facility_s as well_status_code, 
	w.locationid as location_id, 
	w.attrib_2 as operator_name, 
	w.operator_n as operator_number, 
	w.field_name, 
	w.field_code, 
	w.lat as latitude, 
	w.long as longitude, 
	coalesce(sum(case p.prod_year when 1999 then p.oil_bom else 0 end),0) as oil_bom_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.oil_bom else 0 end),0) as oil_bom_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.oil_bom else 0 end),0) as oil_bom_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.oil_bom else 0 end),0) as oil_bom_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.oil_bom else 0 end),0) as oil_bom_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.oil_bom else 0 end),0) as oil_bom_2004,
	coalesce(sum(case p.prod_year when 2005 then p.oil_bom else 0 end),0) as oil_bom_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.oil_bom else 0 end),0) as oil_bom_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.oil_bom else 0 end),0) as oil_bom_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.oil_bom else 0 end),0) as oil_bom_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.oil_bom else 0 end),0) as oil_bom_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.oil_bom else 0 end),0) as oil_bom_2010,
	coalesce(sum(case p.prod_year when 2011 then p.oil_bom else 0 end),0) as oil_bom_2011,
	coalesce(sum(case p.prod_year when 2012 then p.oil_bom else 0 end),0) as oil_bom_2012,
	coalesce(sum(case p.prod_year when 2013 then p.oil_bom else 0 end),0) as oil_bom_2013,
	coalesce(sum(case p.prod_year when 2014 then p.oil_bom else 0 end),0) as oil_bom_2014,
	coalesce(sum(case p.prod_year when 1999 then p.oil_produced else 0 end),0) as oil_produced_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.oil_produced else 0 end),0) as oil_produced_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.oil_produced else 0 end),0) as oil_produced_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.oil_produced else 0 end),0) as oil_produced_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.oil_produced else 0 end),0) as oil_produced_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.oil_produced else 0 end),0) as oil_produced_2004,
	coalesce(sum(case p.prod_year when 2005 then p.oil_produced else 0 end),0) as oil_produced_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.oil_produced else 0 end),0) as oil_produced_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.oil_produced else 0 end),0) as oil_produced_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.oil_produced else 0 end),0) as oil_produced_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.oil_produced else 0 end),0) as oil_produced_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.oil_produced else 0 end),0) as oil_produced_2010,
	coalesce(sum(case p.prod_year when 2011 then p.oil_produced else 0 end),0) as oil_produced_2011,
	coalesce(sum(case p.prod_year when 2012 then p.oil_produced else 0 end),0) as oil_produced_2012,
	coalesce(sum(case p.prod_year when 2013 then p.oil_produced else 0 end),0) as oil_produced_2013,
	coalesce(sum(case p.prod_year when 2014 then p.oil_produced else 0 end),0) as oil_produced_2014,
	coalesce(sum(case p.prod_year when 1999 then p.oil_sold else 0 end),0) as oil_sold_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.oil_sold else 0 end),0) as oil_sold_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.oil_sold else 0 end),0) as oil_sold_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.oil_sold else 0 end),0) as oil_sold_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.oil_sold else 0 end),0) as oil_sold_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.oil_sold else 0 end),0) as oil_sold_2004,
	coalesce(sum(case p.prod_year when 2005 then p.oil_sold else 0 end),0) as oil_sold_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.oil_sold else 0 end),0) as oil_sold_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.oil_sold else 0 end),0) as oil_sold_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.oil_sold else 0 end),0) as oil_sold_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.oil_sold else 0 end),0) as oil_sold_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.oil_sold else 0 end),0) as oil_sold_2010,
	coalesce(sum(case p.prod_year when 2011 then p.oil_sold else 0 end),0) as oil_sold_2011,
	coalesce(sum(case p.prod_year when 2012 then p.oil_sold else 0 end),0) as oil_sold_2012,
	coalesce(sum(case p.prod_year when 2013 then p.oil_sold else 0 end),0) as oil_sold_2013,
	coalesce(sum(case p.prod_year when 2014 then p.oil_sold else 0 end),0) as oil_sold_2014,
	coalesce(sum(case p.prod_year when 1999 then p.oil_adj else 0 end),0) as oil_adj_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.oil_adj else 0 end),0) as oil_adj_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.oil_adj else 0 end),0) as oil_adj_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.oil_adj else 0 end),0) as oil_adj_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.oil_adj else 0 end),0) as oil_adj_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.oil_adj else 0 end),0) as oil_adj_2004,
	coalesce(sum(case p.prod_year when 2005 then p.oil_adj else 0 end),0) as oil_adj_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.oil_adj else 0 end),0) as oil_adj_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.oil_adj else 0 end),0) as oil_adj_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.oil_adj else 0 end),0) as oil_adj_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.oil_adj else 0 end),0) as oil_adj_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.oil_adj else 0 end),0) as oil_adj_2010,
	coalesce(sum(case p.prod_year when 2011 then p.oil_adj else 0 end),0) as oil_adj_2011,
	coalesce(sum(case p.prod_year when 2012 then p.oil_adj else 0 end),0) as oil_adj_2012,
	coalesce(sum(case p.prod_year when 2013 then p.oil_adj else 0 end),0) as oil_adj_2013,
	coalesce(sum(case p.prod_year when 2014 then p.oil_adj else 0 end),0) as oil_adj_2014,
	coalesce(sum(case p.prod_year when 1999 then p.oil_eom else 0 end),0) as oil_eom_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.oil_eom else 0 end),0) as oil_eom_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.oil_eom else 0 end),0) as oil_eom_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.oil_eom else 0 end),0) as oil_eom_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.oil_eom else 0 end),0) as oil_eom_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.oil_eom else 0 end),0) as oil_eom_2004,
	coalesce(sum(case p.prod_year when 2005 then p.oil_eom else 0 end),0) as oil_eom_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.oil_eom else 0 end),0) as oil_eom_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.oil_eom else 0 end),0) as oil_eom_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.oil_eom else 0 end),0) as oil_eom_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.oil_eom else 0 end),0) as oil_eom_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.oil_eom else 0 end),0) as oil_eom_2010,
	coalesce(sum(case p.prod_year when 2011 then p.oil_eom else 0 end),0) as oil_eom_2011,
	coalesce(sum(case p.prod_year when 2012 then p.oil_eom else 0 end),0) as oil_eom_2012,
	coalesce(sum(case p.prod_year when 2013 then p.oil_eom else 0 end),0) as oil_eom_2013,
	coalesce(sum(case p.prod_year when 2014 then p.oil_eom else 0 end),0) as oil_eom_2014,
	coalesce(sum(case p.prod_year when 1999 then p.gas_production else 0 end),0) as gas_production_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.gas_production else 0 end),0) as gas_production_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.gas_production else 0 end),0) as gas_production_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.gas_production else 0 end),0) as gas_production_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.gas_production else 0 end),0) as gas_production_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.gas_production else 0 end),0) as gas_production_2004,
	coalesce(sum(case p.prod_year when 2005 then p.gas_production else 0 end),0) as gas_production_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.gas_production else 0 end),0) as gas_production_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.gas_production else 0 end),0) as gas_production_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.gas_production else 0 end),0) as gas_production_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.gas_production else 0 end),0) as gas_production_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.gas_production else 0 end),0) as gas_production_2010,
	coalesce(sum(case p.prod_year when 2011 then p.gas_production else 0 end),0) as gas_production_2011,
	coalesce(sum(case p.prod_year when 2012 then p.gas_production else 0 end),0) as gas_production_2012,
	coalesce(sum(case p.prod_year when 2013 then p.gas_production else 0 end),0) as gas_production_2013,
	coalesce(sum(case p.prod_year when 2014 then p.gas_production else 0 end),0) as gas_production_2014,
	coalesce(sum(case p.prod_year when 1999 then p.gas_flared else 0 end),0) as gas_flared_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.gas_flared else 0 end),0) as gas_flared_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.gas_flared else 0 end),0) as gas_flared_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.gas_flared else 0 end),0) as gas_flared_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.gas_flared else 0 end),0) as gas_flared_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.gas_flared else 0 end),0) as gas_flared_2004,
	coalesce(sum(case p.prod_year when 2005 then p.gas_flared else 0 end),0) as gas_flared_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.gas_flared else 0 end),0) as gas_flared_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.gas_flared else 0 end),0) as gas_flared_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.gas_flared else 0 end),0) as gas_flared_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.gas_flared else 0 end),0) as gas_flared_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.gas_flared else 0 end),0) as gas_flared_2010,
	coalesce(sum(case p.prod_year when 2011 then p.gas_flared else 0 end),0) as gas_flared_2011,
	coalesce(sum(case p.prod_year when 2012 then p.gas_flared else 0 end),0) as gas_flared_2012,
	coalesce(sum(case p.prod_year when 2013 then p.gas_flared else 0 end),0) as gas_flared_2013,
	coalesce(sum(case p.prod_year when 2014 then p.gas_flared else 0 end),0) as gas_flared_2014,
	coalesce(sum(case p.prod_year when 1999 then p.gas_used else 0 end),0) as gas_used_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.gas_used else 0 end),0) as gas_used_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.gas_used else 0 end),0) as gas_used_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.gas_used else 0 end),0) as gas_used_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.gas_used else 0 end),0) as gas_used_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.gas_used else 0 end),0) as gas_used_2004,
	coalesce(sum(case p.prod_year when 2005 then p.gas_used else 0 end),0) as gas_used_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.gas_used else 0 end),0) as gas_used_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.gas_used else 0 end),0) as gas_used_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.gas_used else 0 end),0) as gas_used_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.gas_used else 0 end),0) as gas_used_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.gas_used else 0 end),0) as gas_used_2010,
	coalesce(sum(case p.prod_year when 2011 then p.gas_used else 0 end),0) as gas_used_2011,
	coalesce(sum(case p.prod_year when 2012 then p.gas_used else 0 end),0) as gas_used_2012,
	coalesce(sum(case p.prod_year when 2013 then p.gas_used else 0 end),0) as gas_used_2013,
	coalesce(sum(case p.prod_year when 2014 then p.gas_used else 0 end),0) as gas_used_2014,
	coalesce(sum(case p.prod_year when 1999 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2004,
	coalesce(sum(case p.prod_year when 2005 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2010,
	coalesce(sum(case p.prod_year when 2011 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2011,
	coalesce(sum(case p.prod_year when 2012 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2012,
	coalesce(sum(case p.prod_year when 2013 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2013,
	coalesce(sum(case p.prod_year when 2014 then p.gas_shrinkage else 0 end),0) as gas_shrinkage_2014,
	coalesce(sum(case p.prod_year when 1999 then p.gas_sold else 0 end),0) as gas_sold_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.gas_sold else 0 end),0) as gas_sold_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.gas_sold else 0 end),0) as gas_sold_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.gas_sold else 0 end),0) as gas_sold_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.gas_sold else 0 end),0) as gas_sold_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.gas_sold else 0 end),0) as gas_sold_2004,
	coalesce(sum(case p.prod_year when 2005 then p.gas_sold else 0 end),0) as gas_sold_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.gas_sold else 0 end),0) as gas_sold_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.gas_sold else 0 end),0) as gas_sold_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.gas_sold else 0 end),0) as gas_sold_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.gas_sold else 0 end),0) as gas_sold_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.gas_sold else 0 end),0) as gas_sold_2010,
	coalesce(sum(case p.prod_year when 2011 then p.gas_sold else 0 end),0) as gas_sold_2011,
	coalesce(sum(case p.prod_year when 2012 then p.gas_sold else 0 end),0) as gas_sold_2012,
	coalesce(sum(case p.prod_year when 2013 then p.gas_sold else 0 end),0) as gas_sold_2013,
	coalesce(sum(case p.prod_year when 2014 then p.gas_sold else 0 end),0) as gas_sold_2014,
	coalesce(sum(case p.prod_year when 1999 then p.gas_btu else 0 end),0) as gas_btu_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.gas_btu else 0 end),0) as gas_btu_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.gas_btu else 0 end),0) as gas_btu_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.gas_btu else 0 end),0) as gas_btu_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.gas_btu else 0 end),0) as gas_btu_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.gas_btu else 0 end),0) as gas_btu_2004,
	coalesce(sum(case p.prod_year when 2005 then p.gas_btu else 0 end),0) as gas_btu_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.gas_btu else 0 end),0) as gas_btu_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.gas_btu else 0 end),0) as gas_btu_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.gas_btu else 0 end),0) as gas_btu_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.gas_btu else 0 end),0) as gas_btu_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.gas_btu else 0 end),0) as gas_btu_2010,
	coalesce(sum(case p.prod_year when 2011 then p.gas_btu else 0 end),0) as gas_btu_2011,
	coalesce(sum(case p.prod_year when 2012 then p.gas_btu else 0 end),0) as gas_btu_2012,
	coalesce(sum(case p.prod_year when 2013 then p.gas_btu else 0 end),0) as gas_btu_2013,
	coalesce(sum(case p.prod_year when 2014 then p.gas_btu else 0 end),0) as gas_btu_2014,
	coalesce(sum(case p.prod_year when 1999 then p.water_production else 0 end),0) as produced_water_1999, 
	coalesce(sum(case p.prod_year when 2000 then p.water_production else 0 end),0) as produced_water_2000, 
	coalesce(sum(case p.prod_year when 2001 then p.water_production else 0 end),0) as produced_water_2001, 
	coalesce(sum(case p.prod_year when 2002 then p.water_production else 0 end),0) as produced_water_2002, 
	coalesce(sum(case p.prod_year when 2003 then p.water_production else 0 end),0) as produced_water_2003, 
	coalesce(sum(case p.prod_year when 2004 then p.water_production else 0 end),0) as produced_water_2004,
	coalesce(sum(case p.prod_year when 2005 then p.water_production else 0 end),0) as produced_water_2005, 
	coalesce(sum(case p.prod_year when 2006 then p.water_production else 0 end),0) as produced_water_2006, 
	coalesce(sum(case p.prod_year when 2007 then p.water_production else 0 end),0) as produced_water_2007, 
	coalesce(sum(case p.prod_year when 2008 then p.water_production else 0 end),0) as produced_water_2008, 
	coalesce(sum(case p.prod_year when 2009 then p.water_production else 0 end),0) as produced_water_2009, 
	coalesce(sum(case p.prod_year when 2010 then p.water_production else 0 end),0) as produced_water_2010,
	coalesce(sum(case p.prod_year when 2011 then p.water_production else 0 end),0) as produced_water_2011,
	coalesce(sum(case p.prod_year when 2012 then p.water_production else 0 end),0) as produced_water_2012,
	coalesce(sum(case p.prod_year when 2013 then p.water_production else 0 end),0) as produced_water_2013,
	coalesce(sum(case p.prod_year when 2014 then p.water_production else 0 end),0) as produced_water_2014
from 
	cogcc_production_amounts p 
inner join 
	cogcc_well_surface_locations w on p.well_id = w.well_id 
where 
	 w.api_county in ('007','067')
group by 
	w.attrib_1, 
	w.api_county, 
	w.api_seq_nu, 
	w.attrib_3, 
	w.facility_s, 
	w.locationid, 
	w.attrib_2, 
	w.operator_n, 
	w.field_name, 
	w.field_code, 
	w.lat, 
	w.long
order by 
	w.attrib_1 
) TO '/Users/troyburke/Data/cogcc/cogcc_san_juan_production_by_year.csv' WITH CSV HEADER;