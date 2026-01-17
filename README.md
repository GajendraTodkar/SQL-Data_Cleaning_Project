# Data_Cleaning_Using_SQL_Server
This project simulates real data engineering challenges and demonstrates how to prepare raw data for reliable analytics.

---

<div style="overflow-x:auto;">
<table style="font-size:6px !important;">
    <thead>
      <tr>
        <th align="center" style="font-weight:bold; white-space:nowrap;">order_id</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">customer_name</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">email</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">order_date</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">product_name</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">quantity</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">price</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">country</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">order_status</th>
        <th align="center" style="font-weight:bold; white-space:nowrap;">notes</th>
      </tr>
    </thead>
    <tbody>
      <!-- your existing rows here (unchanged) -->
      <tr>
            <td>1001</td>
            <td>John Smith</td>
            <td>john.smith@gmail.com</td>
            <td>02-11-2023</td>
            <td>Apple Watch</td>
            <td>1</td>
            <td>399.99</td>
            <td>usa</td>
            <td>Delivered</td>
            <td>-</td>
        </tr>
        <tr>
            <td>1002</td>
            <td>john smith</td>
            <td>john.smith@gmail.com</td>
            <td>11-02-2023</td>
            <td>apple watch</td>
            <td>1</td>
            <td>$399.99</td>
            <td>USA</td>
            <td>delivered</td>
            <td>Duplicate name?</td>
        </tr>
        <tr>
            <td>1003</td>
            <td>SARAH THOMPSON</td>
            <td>sarah.t@gmail.com</td>
            <td>30-10-2023</td>
            <td>Samsung Galaxy S22</td>
            <td>two</td>
            <td>799</td>
            <td>United States</td>
            <td>shipped</td>
            <td>customer requested refund</td>
        </tr>
        <tr>
            <td>1004</td>
            <td>Tom O&#39;Brien</td>
            <td></td>
            <td>05-11-2023</td>
            <td>Google Pixel</td>
            <td>1</td>
            <td>599</td>
            <td>UK</td>
            <td>Delivered</td>
            <td>NULL</td>
        </tr>
        <tr>
            <td>1005</td>
            <td>Mary Johnson</td>
            <td>mary.j@gmail.com</td>
            <td>06-11-2023</td>
            <td>Samsung Galaxy S22</td>
            <td>2</td>
            <td>800</td>
            <td>United Kingdom</td>
            <td>returned</td>
            <td>Return due to defect</td>
        </tr>
        <tr>
            <td>1006</td>
            <td>Ankit Patel</td>
            <td>ankit@@patel.com</td>
            <td>07-11-2023</td>
            <td>NULL</td>
            <td>1</td>
            <td>0</td>
            <td>india</td>
            <td>pending</td>
            <td>no stock</td>
        </tr>
        <tr>
            <td>1007</td>
            <td>John Smith</td>
            <td>john.smith@gmail.com</td>
            <td>02-11-2023</td>
            <td>Apple Watch</td>
            <td>1</td>
            <td>399.99</td>
            <td>usa</td>
            <td>delivered</td>
            <td>Duplicate?</td>
        </tr>
        <tr>
            <td>1008</td>
            <td>Carlos Hernﾃ｡ndez</td>
            <td>carlos@hernandez.com</td>
            <td>08-11-2023</td>
            <td>Iphone 14</td>
            <td>1</td>
            <td>1,099.00</td>
            <td>spain</td>
            <td>DELIVERED</td>
            <td>-</td>
        </tr>
        <tr>
            <td>1009</td>
            <td>NULL</td>
            <td>jessica@abc.com</td>
            <td>09-11-2023</td>
            <td>Macbook Pro</td>
            <td>1</td>
            <td>1299.99</td>
            <td>canada</td>
            <td>returned</td>
            <td>Missing name</td>
        </tr>
        <tr>
            <td>1010</td>
            <td>Aisha Khan</td>
            <td>aisha.khan@outlook</td>
            <td>10-11-2023</td>
            <td>MacBook Pro</td>
            <td>1</td>
            <td>1299.99</td>
            <td>CANADA</td>
            <td>Returned</td>
            <td>check eligibility</td>
        </tr>
        <tr>
            <td>1011</td>
            <td>Sarah Thompson</td>
            <td>sarah.t@gmail.com</td>
            <td>30-10-2023</td>
            <td>Samsung Galaxy S22</td>
            <td>2</td>
            <td>799</td>
            <td>US</td>
            <td>refunded</td>
            <td>updated payment method</td>
        </tr>
        <tr>
            <td>1012</td>
            <td>tom o&#39;brien</td>
            <td>tom.obrien@gmail.com</td>
            <td>05-11-2023</td>
            <td>Google pixel</td>
            <td>1</td>
            <td>599</td>
            <td>uk</td>
            <td>Delivered</td>
            <td>no comment</td>
        </tr>
        <tr>
            <td>1013</td>
            <td>Mary Johnson</td>
            <td>mary.j@gmail.com</td>
            <td>06-11-2023</td>
            <td>SAMSUNG GALAXY S22</td>
            <td>2</td>
            <td>800</td>
            <td>UK</td>
            <td>Returned</td>
            <td></td>
        </tr>
        <tr>
            <td>1014</td>
            <td>Ankit Patel</td>
            <td>ankit@patel.com</td>
            <td>07-11-2023</td>
            <td>Samsung Galaxy S22</td>
            <td>1</td>
            <td></td>
            <td>India</td>
            <td>Pending</td>
            <td>missing price</td>
        </tr>
        <tr>
            <td>1015</td>
            <td>Carlos Hernﾃ｡ndez</td>
            <td>carlos@hernandez.com</td>
            <td>08-11-2023</td>
            <td>iPhone 14</td>
            <td>1</td>
            <td>1099</td>
            <td>Spain</td>
            <td>delivered</td>
            <td>duplicate product format</td>
        </tr>
    </tbody>
  </table>
</div>
