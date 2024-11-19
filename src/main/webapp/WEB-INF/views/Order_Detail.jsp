<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Oder detail</title>
    <!-- Fonts -->
    <link href="../assets/fonts/stylesheet.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Styles -->
    <link href="../assets/css/styles.css" rel="stylesheet" />
    <link href="../assets/css/acount.css" rel="stylesheet" />
    <!-- Bootstrap JS -->
    <script src="../assets/js/bootstrap.min.js"></script>
    <!-- Scripts -->
    <script src="../assets/events/loadtemplate.js"></script>
  </head>

  <body>
    <!-- header -->
    <header id="header" class="header"></header>
    <script>
      load("#header", "./header.html");
    </script>
    <div class="container mt-3">
      <div class="row">
        <div class="col-md-8 mx-auto">
          <h2>Order Detail</h2>
          <div class="order-summary">
            <h4>Order #1050486</h4>
            <p><strong>Placed On:</strong> 2023/04/15</p>
            <p><strong>Total:</strong> $543.02</p>
            <p><strong>Status:</strong> Processing</p>
          </div>

          <h4>Order Items</h4>
          <table class="table table-bordered order-table">
            <thead>
              <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Price</th>
              </tr>
            </thead>
            <tbody>
              <tr class="order-item">
                <td>
                  <img src="https://via.placeholder.com/50" alt="Product 1" />
                  Product 1
                </td>
                <td>1</td>
                <td>$200.00</td>
              </tr>
              <tr class="order-item">
                <td>
                  <img src="https://via.placeholder.com/50" alt="Product 2" />
                  Product 2
                </td>
                <td>2</td>
                <td>$150.00</td>
              </tr>
              <tr class="order-item">
                <td>
                  <img src="https://via.placeholder.com/50" alt="Product 3" />
                  Product 3
                </td>
                <td>1</td>
                <td>$193.02</td>
              </tr>
            </tbody>
          </table>

          <h4>Shipping Information</h4>
          <p><strong>Recipient:</strong> Jimmy Smith</p>
          <p><strong>Address:</strong> 123 Main St, Cityville, USA</p>
          <p><strong>Phone:</strong> (123) 456-7890</p>

          <a href="Orders.jsp" class="btn btn-primary mt-3"
            >Back to Orders</a
          >
        </div>
      </div>
    </div>
    <!-- Footer -->
    <footer id="footer" class="footer"></footer>
    <script>
      load("#footer", "./footer.html");
    </script>
  </body>
</html>
