from django.contrib import admin
from import_export.admin import ImportExportModelAdmin

from pro.models import airportstable,finalAirlines,routes,retards

@admin.register(airportstable)
class airport(ImportExportModelAdmin):
    pass

@admin.register(finalAirlines)
class airlien(ImportExportModelAdmin):
    pass

@admin.register(routes)
class dataroute(ImportExportModelAdmin):
    pass

@admin.register(retards)
class dataretard(ImportExportModelAdmin):
    pass