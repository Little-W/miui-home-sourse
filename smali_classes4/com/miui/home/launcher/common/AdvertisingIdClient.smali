.class public final Lcom/miui/home/launcher/common/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/miui/home/launcher/common/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/miui/home/launcher/common/AdvertisingIdClient$AdInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "unbindService: "

    const-string v1, "AdvertisingIdClient"

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "com.android.vending"

    .line 47
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 49
    new-instance v2, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingConnection;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/miui/home/launcher/common/AdvertisingIdClient$1;)V

    .line 50
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.google.android.gms"

    .line 51
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    .line 53
    :try_start_0
    invoke-virtual {p0, v4, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    new-instance v4, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 55
    new-instance v6, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v4

    invoke-direct {v6, v7, v4}, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v6

    .line 62
    :cond_0
    :try_start_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 64
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_3
    const-string v5, "bindService: "

    .line 59
    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    return-object v3

    :goto_2
    :try_start_5
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 64
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_3
    throw v3

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 145
    :try_start_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/miui/home/launcher/common/AdvertisingIdClient$AdInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method
