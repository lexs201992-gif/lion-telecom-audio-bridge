package com.android.networkstack.android.net.dhcp;
import java.nio.ByteBuffer;
import java.lang.String;
import java.lang.Object;
import android.os.Handler;
import java.net.SocketAddress;
import java.lang.Exception;
import java.io.FileDescriptor;
import com.android.networkstack.android.net.dhcp.DhcpClient;

public class DhcpClient$DhcpPacketHandler extends PacketReader
{
/*
 * Field Definitions.
 */
      private FileDescriptor mPacketSock;
      final DhcpClient this$0;
/*
 * Declared Constructors.
 */
    public DhcpClient$DhcpPacketHandler(DhcpClient, Handler) { ... }
    protected FileDescriptor createFd() { ... }
    protected volatile void handlePacket(Object, int) { ... }
    protected void handlePacket(byte[], int) { ... }
    protected void logError(String, Exception) { ... }
    public volatile int readPacket(FileDescriptor, Object) { ... }
    public int readPacket(FileDescriptor, byte[]) { ... }
    public int transmitPacket(ByteBuffer, SocketAddress) { ... }

} 