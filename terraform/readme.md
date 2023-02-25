## 0️⃣1️⃣ Create main.tf file and add version and provider
### ✅    [Demo](01-terraform-basics/main.tf)

---
## 0️⃣2️⃣ Initialize main.tf
### ✅ Run `terraform init`

---
## 0️⃣3️⃣ Set access and secret keys

### ✅ Run:  `$env:AWS_ACCESS_KEY_ID="your_aws_acces_key"`
### ✅ Run:  `$env:AWS_SECRET_ACCESS_KEY="your_aws_secret_key"`

---
## 0️⃣4️⃣ Add aws s3 bucket in main.tf

        resource "aws_s3_bucket" "first_s3_bucket" {
            bucket = "first-s3-bucket-mastercode-aqil-001"
        }

### ✅ Run `terraform plan`
### ✅ Run `terraform execute`

---
## 0️⃣5️⃣ Create new iam user

    resource "aws_iam_user" "new_iam_user" {
        name = "new_iam_user"
    }

### ✅ Run `terraform plan -out iam.tfplan` -> store plan to an output
### ✅ Run `terraform apply iam.tfplan` -> create iam user

---
## 0️⃣6️⃣ Output s3 bucket and iam user details

### ✅ Create file [Demo](01-terraform-basics/outputs.tf)
### ✅ Run `terraform apply -refresh=false` -> see the outputs
### ✅ Also you can see this details with terraform console


---
0️⃣7️⃣
0️⃣8️⃣