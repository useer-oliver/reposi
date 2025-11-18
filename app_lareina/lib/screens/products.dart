import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_lareina/screens/chats.dart';
import 'package:app_lareina/screens/detail_product.dart';


class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = '';
  int _currentIndex = 2;

  final List<String> categories = ['Música', 'Deporte', 'Arte', 'Cultuta', 'Tecnología', 'Social'];

  void _onTabTapped(int index) { //indice
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const PlaceholderScreen()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const ChatsScreen()),
      );
    } else {
      setState(() => _currentIndex = index);
    }
  }

  void _addProduct(BuildContext context) async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final priceController = TextEditingController();
    String selectedCategory = categories[0];

    await showDialog(
      context: context,
      builder: (context) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 400),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                const Text('Agregar actividad', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 24),
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: 'Título', border: OutlineInputBorder(), contentPadding: EdgeInsets.all(16)),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: descriptionController,
                  maxLines: 4,
                  decoration: const InputDecoration(labelText: 'Lugar', border: OutlineInputBorder(), contentPadding: EdgeInsets.all(16), alignLabelWithHint: true),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: selectedCategory,
                  decoration: const InputDecoration(labelText: 'Categoría', border: OutlineInputBorder(), contentPadding: EdgeInsets.all(16)),
                  items: categories.map((category) {
                    return DropdownMenuItem(value: category, child: Text(category));
                  }).toList(),
                  onChanged: (value) => selectedCategory = value!,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Precio reserva', border: OutlineInputBorder(), contentPadding: EdgeInsets.all(16)),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () async {
                        final title = titleController.text.trim();
                        final description = descriptionController.text.trim();
                        final price = double.tryParse(priceController.text.trim());

                        if (title.isNotEmpty && description.isNotEmpty && price != null) {
                          await FirebaseFirestore.instance.collection('products').add({ //sin coleccion de products
                            'title': title,
                            'description': description,
                            'price': price,
                            'category': selectedCategory,
                            'timestamp': FieldValue.serverTimestamp(),
                          });

                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Actividad agregada correctamente')),
                          );
                        }
                      },
                      child: const Text('Guardar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _editProduct(BuildContext context, String docId, Map<String, dynamic> data) async {
    final titleController = TextEditingController(text: data['title']);
    final descriptionController = TextEditingController(text: data['description']);
    final priceController = TextEditingController(text: data['price'].toString());
    String selectedCategory = data['category'] ?? categories[0];

    await showDialog(
      context: context,
      builder: (context) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 400),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                const Text('Editar actividad', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 24),
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: 'Título', border: OutlineInputBorder(), contentPadding: EdgeInsets.all(16)),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(labelText: 'Lugar', border: OutlineInputBorder(), contentPadding: EdgeInsets.all(16)),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: selectedCategory,
                  decoration: const InputDecoration(labelText: 'Categoría', border: OutlineInputBorder(), contentPadding: EdgeInsets.all(16)),
                  items: categories.map((category) {
                    return DropdownMenuItem(value: category, child: Text(category));
                  }).toList(),
                  onChanged: (value) => selectedCategory = value!,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Precio reserva', border: OutlineInputBorder(), contentPadding: EdgeInsets.all(16)),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () async {
                        final title = titleController.text.trim();
                        final description = descriptionController.text.trim();
                        final price = double.tryParse(priceController.text.trim());

                        if (title.isNotEmpty && description.isNotEmpty && price != null) {
                          await FirebaseFirestore.instance.collection('products').doc(docId).update({
                            'title': title,
                            'description': description,
                            'price': price,
                            'category': selectedCategory,
                          });

                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Actividad actualizada correctamente')),
                          );
                        }
                      },
                      child: const Text('Guardar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _deleteProduct(BuildContext context, String docId) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Eliminar actividad'),
        content: const Text('¿Estás seguro de que quieres eliminar esta actividad?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancelar')),
          ElevatedButton(onPressed: () => Navigator.pop(context, true), child: const Text('Eliminar')),
        ],
      ),
    );

    if (confirm == true) {
      await FirebaseFirestore.instance.collection('products').doc(docId).delete();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Actividad eliminada correctamente')),
      );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: const Text('Actividades'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              onChanged: (value) => setState(() => _searchText = value.toLowerCase()),
              decoration: InputDecoration(
                hintText: 'Búsqueda...',
                fillColor: Colors.white,
                filled: true,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addProduct(context),
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('products').orderBy('timestamp', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return const Center(child: Text('Error al cargar actividades'));
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

          final docs = snapshot.data!.docs;
          final filteredDocs = docs.where((doc) {
            final data = doc.data() as Map<String, dynamic>;
            final title = (data['title'] ?? '').toString().toLowerCase();
            return title.contains(_searchText);
          }).toList();

          if (filteredDocs.isEmpty) return const Center(child: Text('No hay actividades que coincidan'));

          return ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: filteredDocs.length,
            itemBuilder: (context, index) {
              final doc = filteredDocs[index];
              final data = doc.data() as Map<String, dynamic>;

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    final title = data['title'] ?? 'Sin título';
                    final description = data['description'] ?? 'Sin descripción';
                    final price = (data['price'] ?? 0).toDouble();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailProductScreen(
                          title: title,
                          description: description,
                          price: price,
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Text(data['title'] ?? '', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        Text(data['description'] ?? ''),
                        const SizedBox(height: 4),
                        Text('Categoría: ${data['category'] ?? 'Sin categoría'}'),
                        const SizedBox(height: 4),
                        Text('\$${data['price']?.toStringAsFixed(2) ?? '0.00'}'),
                      ],
                    ),
                    trailing: PopupMenuButton<String>(
                      icon: const Icon(Icons.more_vert),
                      onSelected: (value) {
                        if (value == 'editar') {
                          _editProduct(context, doc.id, data);
                        } else if (value == 'eliminar') {
                          _deleteProduct(context, doc.id);
                        }
                      },
                      itemBuilder: (context) => const [
                        PopupMenuItem(value: 'editar', child: Text('Editar')),
                        PopupMenuItem(value: 'eliminar', child: Text('Eliminar')),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Otros'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Fechas'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Actividades'),
        ],
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Pantalla "Otros" aún no implementada')));
  }
}
