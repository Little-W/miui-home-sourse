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

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/RetainedList;->MIHOME_MANAGER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/RetainedList;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/RetainedList;->init()V

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public contain(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 41
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

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public contain(Ljava/lang/String;)Z
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 1

    .line 45
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$RetainedList$WC6eIdUsf0bUtZrWSGYGBhIoJso;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$RetainedList$WC6eIdUsf0bUtZrWSGYGBhIoJso;-><init>(Lcom/miui/home/launcher/RetainedList;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$init$0$RetainedList(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 p1, 0x0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/RetainedList;->mContext:Landroid/content/Context;

    const-string v1, "com.xiaomi.mihomemanager"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->isSameSignatureWhitHome(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/RetainedList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 52
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

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 53
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 54
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz p1, :cond_3

    .line 62
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_3
    throw p0

    :catch_0
    move-object v0, p1

    :catch_1
    if-eqz v0, :cond_4

    .line 62
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings;->OPERATOR_RETAINED_LIST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 75
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 80
    iget-object v2, p0, Lcom/miui/home/launcher/RetainedList;->mSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 87
    :catch_2
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :catch_4
    :goto_4
    return-object p1
.end method
