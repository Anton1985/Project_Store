# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100404183932) do

  create_table "articulos", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.string   "codigo_alterno"
    t.string   "marca"
    t.string   "descrip_alternativo"
    t.text     "coment"
    t.boolean  "afecta_stock"
    t.boolean  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "screenshot_file_name"
    t.string   "screenshot_content_type"
    t.integer  "screenshot_file_size"
    t.datetime "screenshot_updated_at"
    t.integer  "tipo_articulo_id"
    t.integer  "unid_medida_id"
    t.integer  "color_id"
    t.integer  "familia_id"
    t.integer  "linea_id"
    t.integer  "grupo_id"
  end

  create_table "clientes", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.string   "ruc"
    t.string   "dni"
    t.string   "direccion1"
    t.string   "numero"
    t.string   "interior"
    t.string   "tefl1"
    t.string   "telf2"
    t.string   "fax"
    t.string   "email"
    t.string   "giro_negocio"
    t.string   "representante"
    t.string   "referencias"
    t.string   "nro_cuenta"
    t.string   "vendedor_asignado"
    t.string   "limite_cred"
    t.text     "nota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "familias", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.boolean  "arancel_estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "arancel_monto"
  end

  create_table "grupos", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lineas", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proveedors", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.string   "descripcion_comercial"
    t.string   "ruc"
    t.string   "dni"
    t.string   "direccion1"
    t.string   "direccion2"
    t.string   "tefl1"
    t.string   "telf2"
    t.string   "fax"
    t.string   "email"
    t.string   "giro_negocio"
    t.string   "representante"
    t.string   "referencias"
    t.string   "nro_cuenta"
    t.string   "vendedor_asignado"
    t.string   "limite_cred"
    t.text     "nota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_articulos", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transportistas", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.string   "nro_incripcion"
    t.string   "ruc"
    t.string   "dni"
    t.string   "nro_brevete"
    t.string   "direc1"
    t.string   "direc2"
    t.string   "telf1"
    t.string   "telf2"
    t.string   "fax"
    t.string   "modelo_marca"
    t.string   "placa"
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unid_medidas", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendedors", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.string   "ruc"
    t.string   "dni"
    t.string   "direc1"
    t.string   "direc2"
    t.string   "telf1"
    t.string   "telf2"
    t.string   "fax"
    t.string   "email"
    t.string   "ref"
    t.string   "zona_venta"
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
