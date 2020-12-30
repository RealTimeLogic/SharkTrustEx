<?lsp
?>
<h2>Manage Zones</h2>

<?lsp
local zonesT={}
for zid,zname in db.getZonesT() do zonesT[zname]=true end
if not next(zonesT) then response:write'<p>No registered zones!</p>' return end
?>

<table class="table table-striped table-bordered">
  <thead class="thead-dark"><th>Domain</th><th>Zone Name</th></thead>
  <tbody class="devtab">
<?lsp
   local zname=page.zname
   for zname in pairs(zonesT) do
      response:write('<tr><td><a href="https://',zname,'">https://',zname,
                     '</a></td><td><a href="zone?name=',zname,'">',zname,
                     '</a></td></tr>')
   end
?>
  </tbody>
</table>



