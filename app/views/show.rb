<div class="row">
  <h1>Anagrams for <%= "#{@word}" %></h1>
</div>
<div class="row">
  <ul>
    <% @anagrams.each do |anagram| %>
      <li><%= "#{anagram}" %></li>
    <% end %>
  </ul>
</div>