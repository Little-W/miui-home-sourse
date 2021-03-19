.class public Lcom/miui/maml/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/SoundManager$SoundOptions;,
        Lcom/miui/maml/SoundManager$Command;
    }
.end annotation


# static fields
.field private static final ADVANCE:Ljava/lang/String; = "advance/"

.field private static final LOCKSCREEN_AUDIO:Ljava/lang/String; = "lockscreen_audio/"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlSoundManager"

.field private static final MAX_FILE_SIZE:I = 0x80000

.field private static final MAX_STREAMS:I = 0x8


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInitSignal:Ljava/lang/Object;

.field private mInitialized:Z

.field private mPendingSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/miui/maml/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenContext;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 89
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 91
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/SoundManager;)Landroid/media/SoundPool;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/maml/SoundManager;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    return p1
.end method

.method private init()V
    .locals 4

    .line 95
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 101
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    goto :goto_1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/maml/SoundManager$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/SoundManager$1;-><init>(Lcom/miui/maml/SoundManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    if-eqz v1, :cond_2

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    .line 121
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 125
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private declared-synchronized playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I
    .locals 9

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 224
    monitor-exit p0

    return v1

    .line 226
    :cond_0
    :try_start_1
    iget-boolean v0, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    :try_start_3
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    iget v5, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    const/4 v6, 0x1

    iget-boolean p2, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mLoop:Z

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    move v7, p2

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    .line 233
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 235
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception p1

    :try_start_6
    const-string p2, "MamlSoundManager"

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 239
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    if-nez p3, :cond_0

    .line 259
    iget-object p1, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/SoundManager$SoundOptions;

    invoke-direct {p0, p2, p1}, Lcom/miui/maml/SoundManager;->playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pause()V
    .locals 0

    .line 265
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V

    return-void
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I
    .locals 11

    monitor-enter p0

    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/miui/maml/SoundManager;->init()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 160
    monitor-exit p0

    return v1

    .line 162
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    .line 164
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    const/16 v5, 0x200

    const/4 v6, 0x2

    if-ge v2, v3, :cond_4

    .line 165
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p2, "MamlSoundManager"

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the sound does not exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    monitor-exit p0

    return v1

    .line 169
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result v2

    const/high16 v3, 0x80000

    if-le v2, v3, :cond_3

    const-string p2, "MamlSoundManager"

    const-string v0, "the sound file is larger than %d KB: %s"

    .line 171
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    monitor-exit p0

    return v1

    .line 174
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->MemoryFile_getFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    goto/16 :goto_1

    .line 178
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "lockscreen_audio/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "advance/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p2, "MamlSoundManager"

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the sound does not exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    monitor-exit p0

    return v1

    .line 182
    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x80000

    cmp-long v3, v7, v9

    if-lez v3, :cond_6

    const-string p2, "MamlSoundManager"

    const-string v0, "the sound file is larger than %d KB: %s"

    .line 184
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    monitor-exit p0

    return v1

    :cond_6
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    .line 189
    :try_start_5
    invoke-static {v2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 192
    iget-object v4, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v0

    goto :goto_0

    :cond_7
    move-object v2, v0

    .line 198
    :goto_0
    :try_start_6
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v0

    :try_start_7
    const-string v0, "MamlSoundManager"

    const-string v4, "fail to load sound. "

    .line 196
    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 201
    :goto_1
    :try_start_8
    iget-object p1, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 202
    monitor-exit p0

    return v1

    .line 198
    :goto_2
    :try_start_9
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 199
    throw p1

    .line 205
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/SoundManager;->playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized playSound(ILcom/miui/maml/SoundManager$Command;)V
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/miui/maml/SoundManager;->init()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    if-gtz p1, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    sget-object v0, Lcom/miui/maml/SoundManager$2;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    invoke-virtual {p2}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 147
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 143
    :pswitch_1
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->pause(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    :goto_0
    :pswitch_3
    monitor-exit p0

    return-void

    .line 134
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 209
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 210
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V

    .line 213
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 215
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 216
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 217
    iput-object v1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopAllPlaying()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 249
    iget-object v3, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 253
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
