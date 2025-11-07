# Create an Amazon Connect instance
resource "aws_connect_instance" "this" {
  identity_management_type = "CONNECT_MANAGED"
  instance_alias           = var.instance_alias
  inbound_calls_enabled    = true
  outbound_calls_enabled   = true
}

# Optional: Create a Contact Flow
resource "aws_connect_contact_flow" "welcome_flow" {
  depends_on = [aws_connect_instance.this]

  instance_id = aws_connect_instance.this.id
  name        = "WelcomeFlow"
  type        = "CONTACT_FLOW"

  # Ensure this JSON file exists before running `terraform apply`
  # Example: modules/connect/amazon-connect/contact_flow.json
  content = file("${path.module}/contact_flow.json")
}

# Output the Amazon Connect instance ID
output "connect_instance_id" {
  description = "The ID of the created Amazon Connect instance"
  value       = aws_connect_instance.this.id
}
