.class public abstract Lmiuix/animation/IAnimTarget;
.super Ljava/lang/Object;
.source "IAnimTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/IAnimTarget$MonitorInfo;,
        Lmiuix/animation/IAnimTarget$ResetRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final sHandlerCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static sPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAnimRunnable:Lmiuix/animation/internal/AnimRunnable;

.field private mAnimTask:Lmiuix/animation/internal/AnimTask;

.field private mDefaultMinVisible:F

.field private mFlags:J

.field private mHandler:Landroid/os/Handler;

.field private final mId:Ljava/lang/Integer;

.field private mMinVisibleChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/property/FloatProperty;",
            "Lmiuix/animation/IAnimTarget$MonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/IAnimTarget;->sHandlerCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiuix/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lmiuix/animation/internal/AnimTask;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/AnimTask;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mAnimTask:Lmiuix/animation/internal/AnimTask;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 53
    iput v0, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mVelocityMap:Landroid/util/SparseArray;

    .line 60
    invoke-static {}, Lmiuix/animation/IAnimTarget;->getCurHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mHandler:Landroid/os/Handler;

    .line 95
    sget-object v0, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mId:Ljava/lang/Integer;

    .line 97
    new-instance v0, Lmiuix/animation/internal/AnimRunnable;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimRunnable;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mAnimRunnable:Lmiuix/animation/internal/AnimRunnable;

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mMonitors:Ljava/util/Map;

    const/4 v0, 0x3

    .line 100
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiuix/animation/IAnimTarget;

    const/4 v0, 0x4

    .line 102
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const/high16 v1, 0x3b800000    # 0.00390625f

    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiuix/animation/IAnimTarget;

    const/4 v0, 0x2

    .line 105
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiuix/animation/IAnimTarget;

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x4
        0xe
        0x7
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lmiuix/animation/IAnimTarget;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static declared-synchronized createAndCacheHandler(J)Landroid/os/Handler;
    .locals 3

    const-class v0, Lmiuix/animation/IAnimTarget;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lmiuix/animation/IAnimTarget;->sHandlerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 43
    new-instance v2, Landroid/os/Handler;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_0
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    sget-object v1, Lmiuix/animation/IAnimTarget;->sHandlerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 46
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCurHandler()Landroid/os/Handler;
    .locals 4

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 32
    sget-object v2, Lmiuix/animation/IAnimTarget;->sHandlerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 34
    invoke-static {v0, v1}, Lmiuix/animation/IAnimTarget;->createAndCacheHandler(J)Landroid/os/Handler;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method private getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget$MonitorInfo;
    .locals 2

    .line 302
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMonitors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/IAnimTarget$MonitorInfo;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lmiuix/animation/IAnimTarget$MonitorInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/IAnimTarget$MonitorInfo;-><init>(Lmiuix/animation/IAnimTarget$1;)V

    .line 305
    iget-object v1, p0, Lmiuix/animation/IAnimTarget;->mMonitors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiuix/animation/property/FloatProperty;"
        }
    .end annotation

    .line 253
    sget-object v0, Lmiuix/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/property/FloatProperty;

    if-nez v0, :cond_2

    .line 255
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lmiuix/animation/property/ValueProperty;

    invoke-direct {p2, p1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {p2, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v0, p2

    .line 258
    sget-object p2, Lmiuix/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public executeAnim(JJ)V
    .locals 6

    .line 110
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mAnimRunnable:Lmiuix/animation/internal/AnimRunnable;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/internal/AnimRunnable;->init(Lmiuix/animation/IAnimTarget;JJ)V

    .line 111
    iget-object p1, p0, Lmiuix/animation/IAnimTarget;->mAnimRunnable:Lmiuix/animation/internal/AnimRunnable;

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnimTask()Lmiuix/animation/internal/AnimTask;
    .locals 1

    .line 285
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mAnimTask:Lmiuix/animation/internal/AnimTask;

    return-object v0
.end method

.method public getDefaultMinVisible()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getId()I
    .locals 1

    .line 129
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .locals 1

    .line 216
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {p1, v0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 2

    .line 141
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 142
    instance-of v1, p1, Lmiuix/animation/property/FloatProperty;

    if-eqz v1, :cond_0

    .line 143
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getType(Lmiuix/animation/property/FloatProperty;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 145
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 150
    :cond_1
    iget p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    return p1

    .line 153
    :cond_2
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getDefaultMinVisible()F

    move-result p1

    return p1
.end method

.method public abstract getProperty(I)Lmiuix/animation/property/FloatProperty;
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getType(Lmiuix/animation/property/FloatProperty;)I
.end method

.method public getValue(I)F
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .locals 1

    .line 201
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1, v0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p1

    return p1

    :cond_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method public getVelocity(I)D
    .locals 2

    .line 239
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mVelocityMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 2

    .line 231
    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public hasFlags(J)Z
    .locals 2

    .line 137
    iget-wide v0, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    invoke-static {v0, v1, p1, p2}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFrameEnd(Z)V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 265
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setFlags(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    return-void
.end method

.method public setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7fffffff

    if-eq p2, v1, :cond_0

    .line 226
    invoke-interface {p1, v0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public varargs setMinVisibleChange(F[I)Lmiuix/animation/IAnimTarget;
    .locals 5

    .line 162
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 163
    iget-object v3, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;
    .locals 1

    .line 169
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Lmiuix/animation/property/FloatProperty;F)V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public setVelocity(ID)V
    .locals 2

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mVelocityMap:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .locals 0

    .line 235
    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/IAnimTarget;->setVelocity(ID)V

    return-void
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 278
    instance-of p1, p1, Lmiuix/animation/property/IIntValueProperty;

    return p1
.end method

.method public trackVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .locals 4

    .line 292
    invoke-direct {p0, p1}, Lmiuix/animation/IAnimTarget;->getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget$MonitorInfo;

    move-result-object v0

    .line 293
    iget-object v1, v0, Lmiuix/animation/IAnimTarget$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    invoke-virtual {v1, v2}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    .line 294
    iget-object p2, v0, Lmiuix/animation/IAnimTarget$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {p2, v3}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_0

    .line 296
    iget-object p3, v0, Lmiuix/animation/IAnimTarget$MonitorInfo;->resetTask:Lmiuix/animation/IAnimTarget$ResetRunnable;

    invoke-virtual {p3, p0, p1}, Lmiuix/animation/IAnimTarget$ResetRunnable;->post(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V

    float-to-double p2, p2

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    :cond_0
    return-void
.end method
