.class public Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;
.super Ljava/lang/Object;
.source "TaskSnapshotCompatVS.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/ITaskSnapshot;


# static fields
.field private static sCurrentId:J

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

    .line 25
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sLruCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.window.TaskSnapshot"

    .line 47
    invoke-static {p1}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    if-nez v0, :cond_1

    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-string v2, "getHardwareBuffer"

    const-class v3, Landroid/graphics/GraphicBuffer;

    const/4 p1, 0x0

    new-array v4, p1, [Ljava/lang/Class;

    new-array v5, p1, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/HardwareBuffer;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method

.method public static create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 1

    .line 28
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->getTaskSnapshotInstance(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getTaskSnapshotInstance(I)Ljava/lang/Object;
    .locals 9

    const-string v0, "android.window.TaskSnapshot"

    .line 32
    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    const-class v1, Landroid/app/IActivityTaskManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const-string v3, "getTaskSnapshot"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v6, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v6, v8

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-string v4, "getId"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Class;

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    .line 66
    sget-wide v2, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sCurrentId:J

    cmp-long v2, v5, v2

    if-nez v2, :cond_2

    .line 67
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 68
    sget-object v1, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sLruCache:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 70
    :cond_2
    sput-wide v5, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sCurrentId:J

    .line 71
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-string v4, "getColorSpace"

    const-class v5, Landroid/graphics/ColorSpace;

    new-array v6, v0, [Ljava/lang/Class;

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorSpace;

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    :try_start_1
    invoke-static {v3, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    sget-object v4, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->sLruCache:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_3

    .line 76
    :try_start_2
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    return-object v2

    :catch_0
    move-exception v0

    if-eqz v3, :cond_4

    .line 72
    :try_start_3
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-object v1
.end method

.method public getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .locals 11

    .line 83
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 86
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    .line 88
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    .line 89
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-string v4, "getOrientation"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Class;

    new-array v8, v1, [Ljava/lang/Object;

    .line 89
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    .line 91
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-string v5, "getContentInsets"

    const-class v6, Landroid/graphics/Rect;

    new-array v7, v1, [Ljava/lang/Class;

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    .line 93
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-string v5, "getAppearance"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    new-array v9, v1, [Ljava/lang/Object;

    .line 93
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->appearance:I

    .line 96
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-string v5, "getTaskSize"

    const-class v6, Landroid/graphics/Point;

    new-array v7, v1, [Ljava/lang/Class;

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    if-eqz v2, :cond_1

    .line 98
    iget v3, v2, Landroid/graphics/Point;->y:I

    if-eqz v3, :cond_1

    .line 99
    iget v3, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const-string v6, "getWindowingMode"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Class;

    new-array v10, v1, [Ljava/lang/Object;

    .line 101
    invoke-static/range {v4 .. v10}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
