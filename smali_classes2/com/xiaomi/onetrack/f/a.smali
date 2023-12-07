.class public Lcom/xiaomi/onetrack/f/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/Context;

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:J

.field private static volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/j;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/xiaomi/onetrack/f/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/j;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/onetrack/f/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/xiaomi/onetrack/f/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/onetrack/f/a;->g:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    sput-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/xiaomi/onetrack/f/a;->c:I

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    iget-wide v1, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v1, Lcom/xiaomi/onetrack/f/a;->f:J

    sget-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/xiaomi/onetrack/f/a;->g:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/xiaomi/onetrack/f/a;->c:I

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static f()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/onetrack/f/a;->f:J

    return-wide v0
.end method
