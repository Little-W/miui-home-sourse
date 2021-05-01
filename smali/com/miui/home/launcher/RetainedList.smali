.class public Lcom/miui/home/launcher/RetainedList;
.super Ljava/lang/Object;
.source "RetainedList.java"


# static fields
.field public static final MIHOME_MANAGER_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.xiaomi.mihomemanager.whitelistProvider/packageName"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/RetainedList;->MIHOME_MANAGER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/RetainedList;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/RetainedList;->init()V

    return-void
.end method

.method public static synthetic lambda$init$213(Lcom/miui/home/launcher/RetainedList;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 p1, 0x0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/RetainedList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 45
    sget-object v2, Lcom/miui/home/launcher/RetainedList;->MIHOME_MANAGER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 47
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_1
    if-eqz v0, :cond_2

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :catch_0
    move-object v0, p1

    :catch_1
    if-eqz v0, :cond_3

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings;->OPERATOR_RETAINED_LIST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 68
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 73
    iget-object v2, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 80
    :catch_2
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object p1

    :catch_4
    return-object p1
.end method


# virtual methods
.method public contain(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RetainedList;->contain(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public contain(Ljava/lang/String;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public init()V
    .locals 2

    .line 41
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$RetainedList$f6xHbtTaBKYMqUNT-0khzCFqg-Y;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$RetainedList$f6xHbtTaBKYMqUNT-0khzCFqg-Y;-><init>(Lcom/miui/home/launcher/RetainedList;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
