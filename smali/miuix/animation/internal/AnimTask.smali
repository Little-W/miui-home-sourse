.class public Lmiuix/animation/internal/AnimTask;
.super Lmiuix/animation/utils/LinkNode;
.source "AnimTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/utils/LinkNode<",
        "Lmiuix/animation/internal/AnimTask;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final animStats:Lmiuix/animation/internal/AnimStats;

.field public volatile deltaT:J

.field public volatile info:Lmiuix/animation/internal/TransitionInfo;

.field public volatile startPos:I

.field public volatile totalT:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lmiuix/animation/utils/LinkNode;-><init>()V

    .line 27
    new-instance v0, Lmiuix/animation/internal/AnimStats;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimStats;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    return-void
.end method

.method public static isRunning(B)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getAnimCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v0, v0, Lmiuix/animation/internal/AnimStats;->animCount:I

    return v0
.end method

.method public getTotalAnimCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 60
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v2, v2, Lmiuix/animation/internal/AnimStats;->animCount:I

    add-int/2addr v1, v2

    .line 61
    iget-object v0, v0, Lmiuix/animation/internal/AnimTask;->next:Lmiuix/animation/utils/LinkNode;

    check-cast v0, Lmiuix/animation/internal/AnimTask;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public run()V
    .locals 6

    .line 93
    :try_start_0
    iget-wide v1, p0, Lmiuix/animation/internal/AnimTask;->totalT:J

    iget-wide v3, p0, Lmiuix/animation/internal/AnimTask;->deltaT:J

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/animation/internal/AnimRunnerTask;->doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "miuix_anim"

    const-string v2, "doAnimationFrame failed"

    .line 95
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_0
    sget-object v0, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/RunnerHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setup(II)V
    .locals 1

    .line 41
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimStats;->clear()V

    .line 42
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iput p2, v0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 43
    iput p1, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    return-void
.end method

.method public start(JJ)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lmiuix/animation/internal/AnimTask;->totalT:J

    .line 48
    iput-wide p3, p0, Lmiuix/animation/internal/AnimTask;->deltaT:J

    .line 49
    invoke-static {p0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateAnimStats()V
    .locals 6

    .line 67
    iget v0, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    iget v1, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v2, v2, Lmiuix/animation/internal/AnimStats;->animCount:I

    add-int/2addr v1, v2

    :goto_0
    if-ge v0, v1, :cond_2

    .line 68
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/listener/UpdateInfo;

    .line 69
    iget-object v3, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iget-object v3, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v5, v3, Lmiuix/animation/internal/AnimStats;->initCount:I

    add-int/2addr v5, v4

    iput v5, v3, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 73
    iget-object v2, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 75
    :pswitch_0
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->failCount:I

    goto :goto_2

    .line 78
    :pswitch_1
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    goto :goto_2

    .line 81
    :pswitch_2
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->endCount:I

    goto :goto_2

    .line 70
    :cond_1
    :goto_1
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->startCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->startCount:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
