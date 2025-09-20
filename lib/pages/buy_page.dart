import 'package:flutter/material.dart';
import '../utils/products.dart';
import '../styles/style.dart';
import '../constants/theme.dart';

class BuyPage extends StatefulWidget {
  final ProductList product;
  const BuyPage({super.key, required this.product});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameCtl = TextEditingController();
  final TextEditingController _emailCtl = TextEditingController();
  final TextEditingController _companyCtl = TextEditingController();
  final TextEditingController _mobileCtl = TextEditingController();
  final TextEditingController _messageCtl = TextEditingController();
  String? _selectedProduct;

  @override
  void initState() {
    super.initState();
    _selectedProduct = widget.product.title;
  }

  @override
  void dispose() {
    _nameCtl.dispose();
    _emailCtl.dispose();
    _companyCtl.dispose();
    _mobileCtl.dispose();
    _messageCtl.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final subject = 'Purchase enquiry: ${_selectedProduct ?? ''}';
    final body = '''
Name: ${_nameCtl.text}
Email: ${_emailCtl.text}
Company: ${_companyCtl.text}
Mobile: ${_mobileCtl.text}

Product: ${_selectedProduct ?? ''}
Message:
${_messageCtl.text}

Product page: ${widget.product.downloadlink}
''';

    final uri = Uri(
      scheme: 'mailto',
      path: '',
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    final mailto = uri.toString();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Prepared mailto link.')),
    );

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Mail link (copy / open in mail client)'),
        content: SelectableText(mailto),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Buy / Enquiry'),
        backgroundColor: theme.colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Container(
              decoration: kGlassCardDecoration.copyWith(
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product header
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: widget.product.image.isNotEmpty
                            ? Image.asset(
                                widget.product.image,
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              )
                            : Container(
                                width: 140,
                                height: 140,
                                color: Colors.grey[200]),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.product.title,
                                style: theme.textTheme.headlineSmall
                                    ?.copyWith(color: AppTheme.primaryBlue)),
                            const SizedBox(height: 8),
                            Text(widget.product.subtitle,
                                style: theme.textTheme.bodyMedium),
                            const SizedBox(height: 8),
                            Text(widget.product.price,
                                style: theme.textTheme.titleMedium
                                    ?.copyWith(color: AppTheme.secondaryTeal)),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 12),

                  // Form
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameCtl,
                          decoration: const InputDecoration(
                              labelText: 'Name', border: OutlineInputBorder()),
                          validator: (v) => (v == null || v.trim().isEmpty)
                              ? 'Required'
                              : null,
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _emailCtl,
                          decoration: const InputDecoration(
                              labelText: 'Email', border: OutlineInputBorder()),
                          keyboardType: TextInputType.emailAddress,
                          validator: (v) {
                            if (v == null || v.trim().isEmpty)
                              return 'Required';
                            final emailRegex = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@"
                                r"[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");
                            if (!emailRegex.hasMatch(v))
                              return 'Enter valid email';
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _companyCtl,
                          decoration: const InputDecoration(
                              labelText: 'Company',
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _mobileCtl,
                          decoration: const InputDecoration(
                              labelText: 'Mobile',
                              border: OutlineInputBorder()),
                          keyboardType: TextInputType.phone,
                          validator: (v) {
                            if (v == null || v.trim().isEmpty)
                              return 'Required';
                            if (v.trim().length < 7)
                              return 'Enter valid mobile';
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),
                        DropdownButtonFormField<String>(
                          value: _selectedProduct,
                          items: [
                            ...productList.map(
                              (p) => DropdownMenuItem(
                                value: p.title,
                                child: Text(p.title),
                              ),
                            ),
                            ...serviceList.map(
                              (p) => DropdownMenuItem(
                                value: p.title,
                                child: Text(p.title),
                              ),
                            ),
                          ],
                          onChanged: (v) =>
                              setState(() => _selectedProduct = v),
                          decoration: const InputDecoration(
                              labelText: 'Product / Service',
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _messageCtl,
                          decoration: const InputDecoration(
                              labelText: 'Message',
                              border: OutlineInputBorder()),
                          minLines: 4,
                          maxLines: 7,
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: _submit,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: theme.colorScheme.primary,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                child: const Text('Submit'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
