.class public Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;
.super Ljava/lang/Object;
.source "TaskSnapshotCompatVS.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/ITaskSnapshot;


# static fields
.field private static sCurrentId:J

.field private static sIsStartCache:Z

.field private static final sLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private mTaskSnapshot:Ljava/lang/Object;

.field private mTaskSnapshotClazz:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sLruCache:Landroid/util/LruCache;

    .line 27
    sput-boolean v1, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sIsStartCache:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.window.TaskSnapshot"

    .line 53
    invoke-static {p1}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    if-nez v0, :cond_1

    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-class v3, Landroid/graphics/GraphicBuffer;

    const/4 p1, 0x0

    new-array v4, p1, [Ljava/lang/Class;

    new-array v5, p1, [Ljava/lang/Object;

    const-string v2, "getHardwareBuffer"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/HardwareBuffer;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method

.method public static create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 1

    .line 30
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->getTaskSnapshotInstance(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getTaskSnapshotInstance(I)Ljava/lang/Object;
    .locals 10

    const-string v0, "android.window.TaskSnapshot"

    .line 34
    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    .line 40
    :cond_0
    :try_start_0
    const-class v1, Landroid/app/IActivityTaskManager;

    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getTaskSnapshot"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    new-array v7, v5, [Ljava/lang/Object;

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v7, v9

    move-object v5, v6

    move-object v6, v7

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static startCache()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    sput-boolean v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sIsStartCache:Z

    return-void
.end method

.method public static stopCache()V
    .locals 2

    .line 95
    sget-object v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    const-wide/16 v0, -0x1

    .line 96
    sput-wide v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sCurrentId:J

    const/4 v0, 0x0

    .line 97
    sput-boolean v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sIsStartCache:Z

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .line 64
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Class;

    new-array v7, v0, [Ljava/lang/Object;

    const-string v4, "getId"

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 72
    :goto_0
    sget-boolean v2, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sIsStartCache:Z

    if-eqz v2, :cond_2

    cmp-long v3, v5, v3

    if-eqz v3, :cond_2

    .line 73
    sget-wide v3, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sCurrentId:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_2

    .line 74
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 75
    sget-object p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sLruCache:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 77
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v8, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-class v10, Landroid/graphics/ColorSpace;

    new-array v11, v0, [Ljava/lang/Class;

    new-array v12, v0, [Ljava/lang/Object;

    const-string v9, "getColorSpace"

    invoke-static/range {v7 .. v12}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorSpace;

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    invoke-static {p0, v3}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_3

    .line 81
    sput-wide v5, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sCurrentId:J

    .line 82
    sget-object v2, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sLruCache:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p0, :cond_4

    .line 85
    :try_start_2
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-object v3

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_5

    .line 78
    :try_start_3
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v1
.end method

.method public getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .locals 11

    .line 102
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    .line 107
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    .line 108
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Class;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v4, "getOrientation"

    .line 108
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    .line 110
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-class v6, Landroid/graphics/Rect;

    new-array v7, v1, [Ljava/lang/Class;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v5, "getContentInsets"

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    .line 112
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    new-array v9, v1, [Ljava/lang/Object;

    const-string v5, "getAppearance"

    .line 112
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->appearance:I

    .line 115
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-class v6, Landroid/graphics/Point;

    new-array v7, v1, [Ljava/lang/Class;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v5, "getTaskSize"

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    if-eqz v2, :cond_1

    .line 117
    iget v3, v2, Landroid/graphics/Point;->y:I

    if-eqz v3, :cond_1

    .line 118
    iget v3, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Class;

    new-array v10, v1, [Ljava/lang/Object;

    const-string v6, "getWindowingMode"

    .line 120
    invoke-static/range {v4 .. v10}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
