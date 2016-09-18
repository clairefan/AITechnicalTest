CREATE DEFINER=`root`@`localhost` FUNCTION `getCategoryPath`(x_categoryId    VARCHAR(10)) RETURNS varchar(255) CHARSET utf8
begin
	DECLARE categoryPath VARCHAR(255);
    DECLARE temp VARCHAR(10) default x_categoryId;
     select parentid,categoryname from aitest.demoweb_category where categoryid=temp into temp,categoryPath ;
      while temp!=0 do	
		 select parentid,concat(categoryname,'/',categoryPath) into temp, categoryPath
         from demoweb_category
        where categoryid=temp;
	 end while;
        return categoryPath;
end