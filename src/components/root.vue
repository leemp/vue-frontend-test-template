<template>
  <span>Root</span>
</template>

<script>
export default {
  name: "Root",
  data() {
    return {
      dataGroups: [
        {
          id: 1,
          name: "Customers",
          schema: {
            customer_name: {
              element_label: "Name",
              sequence_order: 20
            },
            customer_email: {
              element_label: "Email Address",
              sequence_order: 100
            },
            customer_phone: {
              element_label: "Phone Number",
              sequence_order: 90
            },
            customer_postcode: {
              element_label: "Postcode",
              sequence_order: 80
            },
            customer_company_name: {
              element_label: "Company",
              sequence_order: 30
            },
            customer_address_line_1: {
              element_label: "Building / House No.",
              sequence_order: 40
            },
            customer_address_line_2: {
              element_label: "Street",
              sequence_order: 50
            },
            customer_address_line_3: {
              element_label: "Town",
              sequence_order: 60
            },
            customer_address_line_4: {
              element_label: "Region",
              sequence_order: 70
            }
          },
          data_group_id: null
        },
        {
          id: 2,
          name: "Job addresses",
          schema: {
            name: {
              element_label: "Name",
              sequence_order: 20
            },
            email: {
              element_label: "Email Address",
              sequence_order: 100
            },
            postcode: {
              element_label: "Postcode",
              sequence_order: 80
            },
            address_line_1: {
              element_label: "Building / House No.",
              sequence_order: 40
            },
            address_line_2: {
              element_label: "Street",
              sequence_order: 50
            },
            address_line_3: {
              element_label: "Town",
              sequence_order: 60
            },
            address_line_4: {
              element_label: "Region",
              sequence_order: 70
            }
          },
          data_group_id: 1
        }
      ],
      recordGroups: [
        {
          id: 1,
          record_group_id: null,
          data: {
            customer_name: "Name",
            customer_email: "Email",
            customer_phone: "8 800 555 35 35",
            customer_postcode: "344058",
            customer_company_name: "Roga&Kopita",
            customer_address_line_1: "Line 1",
            customer_address_line_2: "Line 2",
            customer_address_line_3: "Line 3",
            customer_address_line_4: "Line 4"
          },
          data_group_id: 1
        },
        {
          id: 2,
          record_group_id: null,
          data: {
            customer_name: "Name 2",
            customer_email: "Email 2",
            customer_phone: "8 800 555 35 35",
            customer_postcode: "344058",
            customer_company_name: "Biba&Boba",
            customer_address_line_1: "Line 1",
            customer_address_line_2: "Line 2",
            customer_address_line_3: "Line 3",
            customer_address_line_4: "Line 4"
          },
          data_group_id: 1
        }
      ]
    };
  }
};
</script>