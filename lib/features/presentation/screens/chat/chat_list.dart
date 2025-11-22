import 'package:flutter/material.dart';
import 'package:office_app/features/presentation/widgets/appbar/appbar.dart';

import '../../../../core/themes/color_theme.dart';

// Chat model
class Chat {
  final String id;
  final String name;
  final String lastMessage;
  final String time;
  final String? avatarUrl;
  final bool isOnline;
  final int unreadCount;

  Chat({
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.time,
    this.avatarUrl,
    this.isOnline = false,
    this.unreadCount = 0,
  });
}

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  // Sample chat data
  final List<Chat> chats = [
    Chat(
      id: '1',
      name: 'John Doe',
      lastMessage: 'Hey, how are you doing today?',
      time: '10:30 AM',
      isOnline: true,
      unreadCount: 2,
    ),
    Chat(
      id: '2',
      name: 'Sarah Wilson',
      lastMessage: 'The project report is ready for review',
      time: '9:45 AM',
      isOnline: true,
      unreadCount: 0,
    ),
    Chat(
      id: '3',
      name: 'Mike Johnson',
      lastMessage: 'Can we schedule a meeting tomorrow?',
      time: 'Yesterday',
      isOnline: false,
      unreadCount: 5,
    ),
    Chat(
      id: '4',
      name: 'Emily Brown',
      lastMessage: 'Thanks for your help!',
      time: 'Yesterday',
      isOnline: false,
      unreadCount: 0,
    ),
    Chat(
      id: '5',
      name: 'David Lee',
      lastMessage: 'I sent you the files via email',
      time: 'Monday',
      isOnline: true,
      unreadCount: 1,
    ),
    Chat(
      id: '6',
      name: 'Lisa Anderson',
      lastMessage: 'Let me know when you are available',
      time: 'Sunday',
      isOnline: false,
      unreadCount: 0,
    ),
    Chat(
      id: '7',
      name: 'Tom Harris',
      lastMessage: 'Great work on the presentation!',
      time: 'Saturday',
      isOnline: false,
      unreadCount: 0,
    ),
    Chat(
      id: '8',
      name: 'Anna Martinez',
      lastMessage: 'See you at the conference',
      time: 'Friday',
      isOnline: true,
      unreadCount: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Messages', role: 'Admin', showRole: false),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return _buildChatItem(chat);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }

  Widget _buildChatItem(Chat chat) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return InkWell(
      onTap: () {
        // Navigate to chat detail screen
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDetailScreen(chat: chat)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade200, width: 1),
          ),
        ),
        child: Row(
          children: [
            // Avatar with online indicator
            Stack(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.green[100],
                  backgroundImage: chat.avatarUrl != null
                      ? NetworkImage(chat.avatarUrl!)
                      : null,
                  child: chat.avatarUrl == null
                      ? Text(
                          chat.name[0].toUpperCase(),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: colors.primary,
                          ),
                        )
                      : null,
                ),
                if (chat.isOnline)
                  Positioned(
                    right: 2,
                    bottom: 2,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: colors.primary,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 12),
            // Name and message
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chat.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: chat.unreadCount > 0
                              ? FontWeight.bold
                              : FontWeight.w600,
                        ),
                      ),
                      Text(
                        chat.time,
                        style: TextStyle(
                          fontSize: 12,
                          color: chat.unreadCount > 0
                              ? colors.primary
                              : Colors.grey.shade600,
                          fontWeight: chat.unreadCount > 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          chat.lastMessage,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: chat.unreadCount > 0
                                ? colors.primaryText
                                : Colors.grey.shade600,
                            fontWeight: chat.unreadCount > 0
                                ? FontWeight.w500
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      if (chat.unreadCount > 0) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            chat.unreadCount.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ],
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
