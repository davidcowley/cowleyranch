HayType.delete_all
CuttingCode.delete_all
BailCode.delete_all
FieldType.delete_all
FieldAcre.delete_all
Field.delete_all
Acre.delete_all
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
{ :description => 'LR East', :abbreviation => 'LR E', :status => 1, :number_of_acres => 60, :field_type_id => hg.id },
{ :description => 'LR Middle', :abbreviation => 'LR Mid', :status => 1, :number_of_acres => 80, :field_type_id => hg.id },
{ :description => 'LR West', :abbreviation => 'LR W', :status => 1, :number_of_acres => 50, :field_type_id => hg.id },
{ :description => 'HC Neck', :abbreviation => 'HC N', :status => 1, :number_of_acres => 15, :field_type_id => hay.id },
{ :description => 'M Canal', :abbreviation => 'M C', :status => 1, :number_of_acres => 100, :field_type_id => hg.id },
{ :description => 'M Montague', :abbreviation => 'M M', :status => 1, :number_of_acres => 75, :field_type_id => hg.id },
{ :description => 'M Pond', :abbreviation => 'M P', :status => 1, :number_of_acres => 100, :field_type_id => hg.id },
{ :description => 'C House', :abbreviation => 'C House', :status => 1, :number_of_acres => 45, :field_type_id => hay.id },
{ :description => 'C Flood 1', :abbreviation => 'C F1', :status => 1, :number_of_acres => 75, :field_type_id => hay.id },
{ :description => 'C Flood 2', :abbreviation => 'C F2', :status => 1, :number_of_acres => 35, :field_type_id => hay.id },
{ :description => 'C Flood 3', :abbreviation => 'C F3', :status => 1, :number_of_acres => 30, :field_type_id => hay.id },
{ :description => 'C Flood Big', :abbreviation => 'C FB', :status => 1, :number_of_acres => 80, :field_type_id => hay.id },
])

Field.create([
{ :description => 'Lower Road', :abbreviation => 'LowRd', :status => 1},
{ :description => 'Harry Cash', :abbreviation => 'HC', :status => 1},
{ :description => 'Main Ranch', :abbreviation => 'Main', :status => 1},
{ :description => 'Crebbian', :abbreviation => 'Creb', :status => 1},
])

Acre.create([
{ :field_id => Field.find_by_description('Lower Road').id, :field_acres_id => FieldAcre.find_by_description('LR East').id },
{ :field_id => Field.find_by_description('Lower Road').id, :field_acres_id => FieldAcre.find_by_description('LR Middle').id },
{ :field_id => Field.find_by_description('Lower Road').id, :field_acres_id => FieldAcre.find_by_description('LR West').id },
{ :field_id => Field.find_by_description('Harry Cash').id, :field_acres_id => FieldAcre.find_by_description('HC Neck').id },
{ :field_id => Field.find_by_description('Main Ranch').id, :field_acres_id => FieldAcre.find_by_description('M Canal').id },
{ :field_id => Field.find_by_description('Main Ranch').id, :field_acres_id => FieldAcre.find_by_description('M Montague').id },
{ :field_id => Field.find_by_description('Main Ranch').id, :field_acres_id => FieldAcre.find_by_description('M Pond').id },
{ :field_id => Field.find_by_description('Crebbian').id, :field_acres_id => FieldAcre.find_by_description('C House').id },
{ :field_id => Field.find_by_description('Crebbian').id, :field_acres_id => FieldAcre.find_by_description('C Flood 1').id },
{ :field_id => Field.find_by_description('Crebbian').id, :field_acres_id => FieldAcre.find_by_description('C Flood 2').id },
{ :field_id => Field.find_by_description('Crebbian').id, :field_acres_id => FieldAcre.find_by_description('C Flood 3').id },
{ :field_id => Field.find_by_description('Crebbian').id, :field_acres_id => FieldAcre.find_by_description('C Flood Big').id },
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
prod2.field = Field.find_by_description('Harry Cash')
prod2.number_of_bales = 150
prod2.production_at = Time.now
prod2.save

prod3 = Production.new
prod3.bail_code = BailCode.find_by_description('Three Twine')
prod3.cutting_code = CuttingCode.find_by_description('First Cutting')
prod3.hay_type = HayType.find_by_description('Grain')
prod3.field = Field.find_by_description('Main Ranch')
prod3.number_of_bales = 500
prod3.production_at = Time.now
prod3.save


