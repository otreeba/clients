# coding: utf-8

"""
    Otreeba Open Cannabis API

    This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).

    OpenAPI spec version: 1.0.0
    Contact: api@otreeba.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import os
import sys
import unittest

import swagger_client
from swagger_client.rest import ApiException
from swagger_client.apis.studies_api import StudiesApi


class TestStudiesApi(unittest.TestCase):
    """ StudiesApi unit test stubs """

    def setUp(self):
        self.api = swagger_client.apis.studies_api.StudiesApi()

    def tearDown(self):
        pass

    def test_get_studies(self):
        """
        Test case for get_studies

        Get a list of all current studies.
        """
        pass

    def test_get_studies_by_condition(self):
        """
        Test case for get_studies_by_condition

        Get a list of all current studies for a given condition.
        """
        pass

    def test_get_studies_conditions(self):
        """
        Test case for get_studies_conditions

        Get a list of all current conditions for studies.
        """
        pass

    def test_get_study_by_identifier(self):
        """
        Test case for get_study_by_identifier

        Find study by DOI, PubMed ID, or slug.
        """
        pass


if __name__ == '__main__':
    unittest.main()