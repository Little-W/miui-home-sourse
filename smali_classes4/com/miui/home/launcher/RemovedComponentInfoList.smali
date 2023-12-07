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

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Lcom/miui/home/launcher/RemovedComponentInfoList$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/RemovedComponentInfoList$1;-><init>(Lcom/miui/home/launcher/RemovedComponentInfoList;)V

    const/4 p0, 0x0

    invoke-static {p1, p0, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/RemovedComponentInfoList;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/RemovedComponentInfoList;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 25
    sput-boolean p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoReady:Z

    return p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;
    .locals 2

    const-class v0, Lcom/miui/home/launcher/RemovedComponentInfoList;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/miui/home/launcher/RemovedComponentInfoList;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    .line 37
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

.method private getRemovedInfo(Landroid/content/ComponentName;Z)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 6

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    monitor-enter v0

    .line 130
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

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getPackageNameFromComponentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 136
    :try_start_1
    new-instance v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "cellX"

    .line 137
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const-string v3, "cellY"

    .line 138
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const-string v3, "screen"

    .line 139
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    const-string v3, "container"

    .line 140
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    if-eqz p2, :cond_1

    .line 142
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->writeBackToFile()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v3, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 147
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    :cond_2
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static waitingForReady()V
    .locals 2

    .line 87
    sget-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoReady:Z

    if-eqz v1, :cond_0

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 92
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

    .line 94
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 96
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
.method public checkRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    const/4 v0, 0x1

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z
    .locals 4

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "componentName"

    .line 103
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cellX"

    const/16 v2, 0xb

    .line 104
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cellY"

    const/16 v2, 0xc

    .line 105
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "screen"

    const/16 v2, 0xa

    .line 106
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 106
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "container"

    const/4 v2, 0x7

    .line 108
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public writeBackToFile()V
    .locals 3

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherSettings;->getRemovedComponentInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 166
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v0, 0xa

    .line 168
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
