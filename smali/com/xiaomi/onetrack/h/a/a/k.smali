.class public Lcom/xiaomi/onetrack/h/a/a/k;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/xiaomi/onetrack/h/a/b/d;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/ServiceConnection;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/h/a/a/k;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 98
    new-instance v0, Lcom/xiaomi/onetrack/h/a/a/l;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/h/a/a/l;-><init>(Lcom/xiaomi/onetrack/h/a/a/k;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/h/a/a/k;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/xiaomi/onetrack/h/a/a/k;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 v2, 0x40

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 71
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 75
    array-length v2, p2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 76
    aget-object p2, p2, v2

    invoke-virtual {p2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2

    :try_start_1
    const-string v3, "SHA1"

    .line 78
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    array-length v4, p2

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 88
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    :cond_1
    :goto_2
    iput-object v1, p0, Lcom/xiaomi/onetrack/h/a/a/k;->d:Ljava/lang/String;

    .line 94
    :cond_2
    iget-object p2, p0, Lcom/xiaomi/onetrack/h/a/a/k;->a:Lcom/xiaomi/onetrack/h/a/b/d;

    check-cast p2, Lcom/xiaomi/onetrack/h/a/b/d$a$a;

    iget-object v1, p0, Lcom/xiaomi/onetrack/h/a/a/k;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/xiaomi/onetrack/h/a/b/d$a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)Z
    .locals 6

    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.heytap.openid"

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 126
    :cond_0
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return v1

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ""

    .line 35
    iget-object v2, p0, Lcom/xiaomi/onetrack/h/a/a/k;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/h/a/a/k;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/h/a/a/k;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1

    .line 42
    :cond_0
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/a/b/d$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/h/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/h/a/a/k;->a:Lcom/xiaomi/onetrack/h/a/b/d;

    .line 43
    iget-object v0, p0, Lcom/xiaomi/onetrack/h/a/a/k;->a:Lcom/xiaomi/onetrack/h/a/b/d;

    if-eqz v0, :cond_1

    const-string v0, "OUID"

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/onetrack/h/a/a/k;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 52
    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/onetrack/h/a/a/k;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 49
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 52
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/onetrack/h/a/a/k;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 55
    :catch_2
    throw v0

    :catch_3
    :cond_2
    :goto_2
    return-object v1
.end method
