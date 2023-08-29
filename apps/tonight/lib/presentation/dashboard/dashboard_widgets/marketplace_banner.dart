import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class MarketplaceBanner extends StatelessWidget {
  const MarketplaceBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(
        // TODO - get from db
        MarketplaceProductRoute(url: 'https://sklep.tonightapp.pl/'),
      ),
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6B5FE7),
              Colors.purple.shade300, // Dodatkowy kolor gradientu
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.6,
                child: Image.network(
                  'https://scontent.fqyy1-1.fna.fbcdn.net/v/t1.6435-9/133847545_685580328800220_7594081977589282224_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a26aad&_nc_ohc=EcsfW9pRb9kAX-pMgpw&_nc_ht=scontent.fqyy1-1.fna&oh=00_AfBXDC57X-IuVRboxdtT5MO_hHhQneBecP_F2ZP9ueH3aQ&oe=650F226A',
                  // Ścieżka do twojego zdjęcia w assets
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Podnieś poziom swojej imprezy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Odkryj nasz sklep.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 2.0,
                          color: Colors.black.withOpacity(0.15),
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
