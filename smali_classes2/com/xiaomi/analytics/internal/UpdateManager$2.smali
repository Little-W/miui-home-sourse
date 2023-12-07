.class Lcom/xiaomi/analytics/internal/UpdateManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/UpdateManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "UpdateManager"

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$400(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget v2, Lcom/xiaomi/analytics/internal/Constants;->CONNECT_TIME_OUT_MILLIS:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/IOUtil;->inputStream2ByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$300(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$300(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "download apk success."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v5}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$800(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$000(Lcom/xiaomi/analytics/internal/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getSignature(Landroid/content/Context;Ljava/io/File;)[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/CertificateUtils;->isXiaomiPlatformCertificate([Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "verify signature success"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$800(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$900(Lcom/xiaomi/analytics/internal/UpdateManager;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "verify signature failed"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    invoke-static {v3}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_5
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mDownloader e"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_2
    :try_start_6
    invoke-static {v3}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDownloader exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return-void
.end method
