#let static_data = toml("data.toml")

#show link: set text(fill: blue)
#show link: underline

#set text(fill: rgb("#3e1f0f"))

#set page(
  fill: rgb("#fffdf6"),
  margin: (top: 8cm, bottom: 5cm),
  header: [
    #rect(fill: rgb("#ecf7fc"), width: 100%, height: 100%, outset: (x:3cm, y:5mm))[
      #text(font: "Libre Baskerville", fill: rgb("#622303"))[
        = #static_data.sender.personal_name
        Programmer
      ]
  ]
  #rect( width: auto, height: 2em, fill: (rgb("#ecf7fc")), outset: (x:2mm,y:2mm))[
      #link("mailto:" + static_data.sender.email)[#strong[#static_data.sender.email]], #static_data.sender.phone
  ]
  ],
  footer: [
    #align(right, block(fill:rgb("#ecf7fc"), inset: 2em, outset: (right:7em, bottom:1em))[
    #set align(left)
    #static_data.sender.personal_name \
    #static_data.sender.address
  ])
]
)

#set text(font: "Vollkorn")
== Links
#v(3mm)
#columns(3)[
=== #static_data.links.developer_link_heading
#v(2mm)
#for item in static_data.links.developer_links {
  list(link(item.url)[#item.name])
}
#colbreak()
=== #static_data.links.project_link_heading
#v(2mm)
#for item in static_data.links.project_links {
  list(link(item.url)[#item.name])
}
#colbreak()
=== #static_data.links.social_link_heading
#v(2mm)
#for item in static_data.links.social_links {
  list(link(item.url)[#item.name])
}
]
#v(3em)
== #static_data.first_paragraph.title
#static_data.first_paragraph.body_text
== #static_data.second_paragraph.title
#static_data.second_paragraph.body_text
== #static_data.third_paragraph.title
#static_data.third_paragraph.body_text

#v(3em)
#text(2em)[#emph[#static_data.ending_statement.body_text]]
