xml.instruct!
xml.instruct! 'xml-stylesheet', {:href => 'style.xsl', :type => 'text/xsl'}
xml.posts do
  xml.post do
    xml.title "Titre"
    xml.body "Contenu de l'article."
    xml.published_at "21/12/42"
    xml.comments do
      xml.comment do
        xml.body "Un commentaire a propos de l'article."
      end
    end
  end
end
