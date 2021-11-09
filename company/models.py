from django.db import models

class Language(models.Model):
    name = models.CharField(max_length=45, unique=True)

    class Meta:
        db_table = 'languages'

class Tag(models.Model):
    name = models.CharField(max_length=45)

    class Meta:
        db_table = 'tags'

class Company(models.Model):
    name = models.CharField(max_length=45)

    class Meta:
        db_table = 'companies'

class CompanyTag(models.Model):
    tag     = models.ForeignKey(Tag, on_delete=models.PROTECT)
    company = models.ForeignKey(Company, on_delete=models.PROTECT)

    class Meta:
        db_table = 'companies_tags'

class CompanyLanguage(models.Model):
    language = models.ForeignKey(Language, on_delete=models.PROTECT)
    company  = models.ForeignKey(Company, on_delete=models.PROTECT)

    class Meta:
        db_table = 'companies_languages'

class TagLanguage(models.Model):
    tag      = models.ForeignKey(Tag, on_delete=models.PROTECT)
    language = models.ForeignKey(Language, on_delete=models.PROTECT)

    class Meta:
        db_table = 'tags_languages'