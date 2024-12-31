<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %> <%@
taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery
  id="query01"
  jdbcDriver="com.mysql.jdbc.Driver"
  jdbcUrl="jdbc:mysql://localhost/dwh?user=root&password"
  catalogUri="/WEB-INF/queries/fact.xml"
>
  select
  {[Measures].[TotalPrice],[TotalQuantity],[TotalRevenue],[TotalHasilPenjualan]}
  ON COLUMNS, {([Invoice],[Customers],[Track],[Date])} ON ROWS from [Fact]
</jp:mondrianQuery>

<c:set var="title01" scope="session">Query SALES using Mondrian OLAP</c:set>
