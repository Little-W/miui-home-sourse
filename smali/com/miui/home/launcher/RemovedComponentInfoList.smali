.class public Lcom/miui/home/launcher/RemovedComponentInfoList;
.super Ljava/lang/Object;
.source "RemovedComponentInfoList.java"


# static fields
.field private static final sPrepareLock:Ljava/lang/Object;

.field private static sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

.field private static sRemovedInfoReady:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    .line 44
    new-instance p1, Lcom/miui/home/launcher/RemovedComponentInfoList$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/RemovedComponentInfoList$1;-><init>(Lcom/miui/home/launcher/RemovedComponentInfoList;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/RemovedComponentInfoList;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/RemovedComponentInfoList;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 26
    sput-boolean p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoReady:Z

    return p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;
    .locals 2

    const-class v0, Lcom/miui/home/launcher/RemovedComponentInfoList;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/miui/home/launcher/RemovedComponentInfoList;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    .line 38
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static waitingForReady()V
    .locals 2

    .line 88
    sget-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoReady:Z

    if-eqz v1, :cond_0

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 93
    :cond_0
    :try_start_1
    sget-object v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 95
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 97
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 6

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getPackageNameFromComponentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 129
    :try_start_1
    new-instance v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "cellX"

    .line 130
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const-string v3, "cellY"

    .line 131
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const-string v3, "screen"

    .line 132
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    const-string v3, "container"

    .line 133
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 134
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->writeBackToFile()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v3, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 138
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z
    .locals 4

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "componentName"

    .line 104
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cellX"

    const/16 v2, 0xb

    .line 105
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cellY"

    const/16 v2, 0xc

    .line 106
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "screen"

    const/16 v2, 0xa

    .line 107
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 107
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "container"

    const/4 v2, 0x7

    .line 109
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public writeBackToFile()V
    .locals 3

    .line 149
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherSettings;->getRemovedComponentInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v2, 0xa

    .line 159
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
