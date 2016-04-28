HayType.delete_all
CuttingCode.delete_all
BailCode.delete_all
FieldType.delete_all
FieldAcre.delete_all
Field.delete_all
Production.delete_all


HayType.create([
{ :description => 'Grass Stock', :abbreviation => 'Grass St', :status => 1},
{ :description => 'Grass Sale', :abbreviation => 'Grass Sl', :status => 1},
{ :description => 'Grass\Alfalfa', :abbreviation => 'G|A', :status => 1},
{ :description => 'Alfalfa', :abbreviation => 'Alfalfa', :status => 1},
{ :description => 'Grain', :abbreviation => 'Grain', :status => 1}
])

CuttingCode.create([
{ :description => 'First Cutting', :abbreviation => '1st', :status => 1},
{ :description => 'Second Cutting', :abbreviation => '2nd', :status => 1},
{ :description => 'Third Cutting', :abbreviation => '3rd', :status => 1},
{ :description => 'Fourth Cutting', :abbreviation => '4th', :status => 1}
])

BailCode.create([
{ :description => 'Three Twine', :abbreviation => '3Tw', :status => 1, :weight => 100},
{ :description => 'Four Twine', :abbreviation => '4Tw', :status => 1, :weight => 400},
{ :description => 'Eight Twine', :abbreviation => '8Tw', :status => 1, :weight => 1000},
{ :description => 'Big Bale', :abbreviation => 'BB', :status => 1, :weight => 1200}
])

FieldType.create([
{ :description => 'Graze', :abbreviation => 'Graze', :status => 1},
{ :description => 'Hay/Graze', :abbreviation => 'H&G', :status => 1},
{ :description => 'Hay', :abbreviation => 'Hay', :status => 1}
])

graze = FieldType.find_by_description('Graze')
hg = FieldType.find_by_description('Hay/Graze')
hay = FieldType.find_by_description('Hay')

FieldAcre.create([
{ :description => 'North', :abbreviation => 'North', :status => 1, :number_of_acres => 125, :field_type_id => graze.id },
{ :description => 'South', :abbreviation => 'South', :status => 1, :number_of_acres => 80, :field_type_id => hg.id },
{ :description => 'Middle', :abbreviation => 'Middle', :status => 1, :number_of_acres => 200, :field_type_id => hg.id },
{ :description => 'West', :abbreviation => 'West', :status => 1, :number_of_acres => 40, :field_type_id => hay.id },
{ :description => 'East', :abbreviation => 'East', :status => 1, :number_of_acres => 125, :field_type_id => graze.id },
{ :description => 'Middle', :abbreviation => 'Middle', :status => 1, :number_of_acres => 100, :field_type_id => hg.id },
{ :description => 'End', :abbreviation => 'End', :status => 1, :number_of_acres => 80, :field_type_id => hg.id },
{ :description => 'House', :abbreviation => 'House', :status => 1, :number_of_acres => 15, :field_type_id => hay.id },
])

north = FieldAcre.where(["number_of_acres = ? and description = ?", 125, "North"])
south = FieldAcre.where(["number_of_acres = ? and description = ?", 80, "South"])
middle = FieldAcre.where(["number_of_acres = ? and description = ?", 200, "Middle"])
ends = FieldAcre.where(["number_of_acres = ? and description = ?", 80, "End"])
house = FieldAcre.where(["number_of_acres = ? and description = ?", 15, "House"])

Field.create([
{ :description => 'Lower Road', :abbreviation => 'LowRd', :status => 1, :field_acres_id => north.first.id},
{ :description => 'Lower Road', :abbreviation => 'LowRd', :status => 1, :field_acres_id => south.first.id},
{ :description => 'Lower Road', :abbreviation => 'LowRd', :status => 1, :field_acres_id => middle.first.id},
{ :description => 'Neck', :abbreviation => 'Neck', :status => 1, :field_acres_id => ends.first.id},
{ :description => 'House', :abbreviation => 'House', :status => 1, :field_acres_id => house.first.id}
])


prod1 = Production.new
prod1.bail_code = BailCode.find_by_description('Three Twine')
prod1.cutting_code = CuttingCode.find_by_description('First Cutting')
prod1.hay_type = HayType.find_by_description('Grain')
prod1.field = Field.find_by_description('Lower Road')
prod1.number_of_bales = 400
prod1.production_at = Time.now
prod1.save

prod2 = Production.new
prod2.bail_code = BailCode.find_by_description('Three Twine')
prod2.cutting_code = CuttingCode.find_by_description('First Cutting')
prod2.hay_type = HayType.find_by_description('Grain')
prod2.field = Field.find_by_description('Neck')
prod2.number_of_bales = 150
prod2.production_at = Time.now
prod2.save

prod3 = Production.new
prod3.bail_code = BailCode.find_by_description('Three Twine')
prod3.cutting_code = CuttingCode.find_by_description('First Cutting')
prod3.hay_type = HayType.find_by_description('Grain')
prod3.field = Field.find_by_description('Neck')
prod3.number_of_bales = 500
prod3.production_at = Time.now
prod3.save


