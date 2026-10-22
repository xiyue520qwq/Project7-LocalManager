package com.project7.localmanager;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
final class ProtoLite {

    static final class EntityMessage {

        /* renamed from: id */
        byte[] f20id = new byte[0];
        byte[] methodMd5 = new byte[0];
        byte[] parameters = new byte[0];

        EntityMessage() {
        }
    }

    private ProtoLite() {
    }

    static byte[] connectReply() {
        return new byte[]{16, 1};
    }

    static byte[] entityInfo(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeBytes(byteArrayOutputStream, 2, md5OrIndex(bArr));
        writeBytes(byteArrayOutputStream, 3, bArr2);
        writeBytes(byteArrayOutputStream, 4, bArr3);
        return byteArrayOutputStream.toByteArray();
    }

    static byte[] entityMessage(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeBytes(byteArrayOutputStream, 2, bArr);
        writeBytes(byteArrayOutputStream, 3, md5OrIndex(bArr2));
        writeBytes(byteArrayOutputStream, 4, bArr3);
        return byteArrayOutputStream.toByteArray();
    }

    static EntityMessage parseEntityMessage(byte[] bArr) throws IOException {
        EntityMessage entityMessage = new EntityMessage();
        Cursor cursor = new Cursor(bArr);
        while (cursor.hasRemaining()) {
            int readVarint = cursor.readVarint();
            int i = readVarint >>> 3;
            int i2 = readVarint & 7;
            if (i2 != 2) {
                cursor.skip(i2);
            } else {
                byte[] readBytes = cursor.readBytes();
                if (i == 2) {
                    entityMessage.f20id = readBytes;
                } else if (i == 3) {
                    entityMessage.methodMd5 = parseMd5(readBytes);
                } else if (i == 4) {
                    entityMessage.parameters = readBytes;
                }
            }
        }
        return entityMessage;
    }

    private static byte[] md5OrIndex(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeBytes(byteArrayOutputStream, 1, bArr);
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] parseMd5(byte[] bArr) throws IOException {
        Cursor cursor = new Cursor(bArr);
        while (cursor.hasRemaining()) {
            int readVarint = cursor.readVarint();
            int i = readVarint >>> 3;
            int i2 = readVarint & 7;
            if (i == 1 && i2 == 2) {
                return cursor.readBytes();
            }
            cursor.skip(i2);
        }
        return new byte[0];
    }

    private static void writeBytes(ByteArrayOutputStream byteArrayOutputStream, int i, byte[] bArr) {
        writeVarint(byteArrayOutputStream, (i << 3) | 2);
        writeVarint(byteArrayOutputStream, bArr.length);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    private static void writeVarint(ByteArrayOutputStream byteArrayOutputStream, int i) {
        while ((i & (-128)) != 0) {
            byteArrayOutputStream.write((i & 127) | 128);
            i >>>= 7;
        }
        byteArrayOutputStream.write(i);
    }

    private static final class Cursor {
        private final byte[] data;
        private int offset;

        Cursor(byte[] bArr) {
            this.data = bArr;
        }

        boolean hasRemaining() {
            return this.offset < this.data.length;
        }

        int readVarint() throws IOException {
            int i = 0;
            for (int i2 = 0; i2 < 32; i2 += 7) {
                int i3 = this.offset;
                byte[] bArr = this.data;
                if (i3 >= bArr.length) {
                    break;
                }
                this.offset = i3 + 1;
                int i4 = bArr[i3] & 255;
                i |= (i4 & 127) << i2;
                if ((i4 & 128) == 0) {
                    return i;
                }
            }
            throw new IOException("invalid protobuf varint");
        }

        byte[] readBytes() throws IOException {
            int readVarint = readVarint();
            if (readVarint >= 0) {
                byte[] bArr = this.data;
                int length = bArr.length;
                int i = this.offset;
                if (readVarint <= length - i) {
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i + readVarint);
                    this.offset += readVarint;
                    return copyOfRange;
                }
            }
            throw new IOException("invalid protobuf byte field");
        }

        void skip(int i) throws IOException {
            if (i == 0) {
                readVarint();
            } else if (i == 1) {
                this.offset += 8;
            } else {
                if (i == 2) {
                    int readVarint = readVarint();
                    if (readVarint >= 0) {
                        int length = this.data.length;
                        int i2 = this.offset;
                        if (readVarint <= length - i2) {
                            this.offset = i2 + readVarint;
                        }
                    }
                    throw new IOException("invalid protobuf skipped field");
                }
                if (i == 5) {
                    this.offset += 4;
                } else {
                    throw new IOException("unsupported protobuf wire type " + i);
                }
            }
            if (this.offset > this.data.length) {
                throw new IOException("protobuf field exceeds message");
            }
        }
    }
}
