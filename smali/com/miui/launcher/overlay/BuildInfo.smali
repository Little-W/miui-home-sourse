.class public Lcom/miui/launcher/overlay/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field public static final CLIENT_VERSION_CODE:I = 0x3

.field public static final SERVER_VERSION_CODE:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p0, "    BuildInfo.CLIENT_VERSION_CODE : 3"

    .line 39
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    BuildInfo.SERVER_VERSION_CODE : 5"

    .line 40
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
