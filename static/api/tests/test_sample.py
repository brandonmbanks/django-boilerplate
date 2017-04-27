from django.test import TestCase


class SampleTestCase(TestCase):
    def test_two_plus_two_equals_four(self):
        self.assertEqual(4, 2 + 2)
