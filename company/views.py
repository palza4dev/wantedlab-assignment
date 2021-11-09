import json

from itertools              import permutations
from django.views           import View
from django.db.models       import Q
from django.http            import JsonResponse
from django.db              import transaction

from .models      import Company, CompanyLanguage, RelatedCompany, Tag, Language

class CompanyView(View):
    def post(self, request):
        try:
            data = json.loads(request.body)
            related_company = []
            with transaction.atomic():
                for language in data['company_name']:
                    languages, created = Language.objects.get_or_create(name=language)
                    company            = Company.objects.create(
                        name = data['company_name'][language]
                    )
                    related_company.append(company.id)
                    languages.companylanguage_set.create(
                        company = company
                    )
                    for tag in data['tags']:
                        tags, created = Tag.objects.get_or_create(name=tag['tag_name'][language])
                        tags.companytag_set.create(
                            company = company
                        )
                        tags.taglanguage_set.create(
                            language = languages
                        )
                related_company_list = permutations(related_company, 2)
                [RelatedCompany.objects.create(
                    company_id         = company_id[0],
                    related_company_id = company_id[1]
                ) for company_id in related_company_list]

            x_wanted_language = request.headers.get('x-wanted-language')
            
            if x_wanted_language not in data['company_name']:
                x_wanted_language = list(data['company_name'].keys())[0]
            company_list      = {
                'company_name' : data['company_name'][x_wanted_language],
                'tags'         : [tag['tag_name'][x_wanted_language] for tag in data['tags']]
            }
            return JsonResponse(company_list, status = 201)
        except KeyError:
            JsonResponse({'message' : 'KEY_ERROR'}, status = 400)
            
    def get(self, request):
        try:
            query = request.GET.get('query', '')
            x_wanted_language=request.headers.get("x-wanted-language")
            language_id = Language.objects.get(name=x_wanted_language).id
            company_filter=Q()
            if query:
                company_filter.add(Q(name__contains = query), company_filter.AND)
            company_list = [company.id for company in Company.objects.filter(company_filter)]
            companies = [Company.objects.filter(company_filter, companylanguage__language_id=language_id)]
            if not companies[0]:
                companies = [Company.objects.filter(related_company__company_id=company_id, companylanguage__language_id=language_id) for company_id in company_list]
            searched_companies = [{
                'company_name' : com.name,
            }for company in companies for com in company]
            return JsonResponse({'searched_companies' : searched_companies}, status=200)
        except ValueError:
            return JsonResponse({'message' : 'VALUE_ERROR'}, status = 400)
        except Language.DoesNotExist:
            return JsonResponse({'message' : 'LANGUAGE_DOES_NOT_EXIST'}, status = 400)
            
class CompanySearchView(View):
    def get(self, request, company_name):
        try:
            language = Language.objects.get(name=request.headers.get('x-wanted-language'))
            company  = Company.objects.get(name=company_name)

            if CompanyLanguage.objects.get(company_id=company.id).language_id != language.id:
                company_info = Company.objects.get(related_company__company_id=company.id, companylanguage__language_id=language.id)
            else:
                company_info = Company.objects.get(name=company_name)

            tags = Tag.objects.filter(taglanguage__language_id=language.id, companytag__company_id=company_info)
            
            result = {
                'company_name' : company_info.name,
                'tags'         : [tag.name for tag in tags]
            }
            return JsonResponse(result, status=200)

        except Language.DoesNotExist:
            return JsonResponse({'message' : 'DOES_NOT_EXIST'}, status=404)
        
        except Company.DoesNotExist:
            return JsonResponse({'message' : 'DOES_NOT_EXIST'}, status=404)