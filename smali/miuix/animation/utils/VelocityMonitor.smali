.class public Lmiuix/animation/utils/VelocityMonitor;
.super Ljava/lang/Object;
.source "VelocityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/VelocityMonitor$MoveRecord;
    }
.end annotation


# instance fields
.field private mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lmiuix/animation/utils/VelocityMonitor$MoveRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocity:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    return-void
.end method

.method private addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 56
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->updateVelocity()V

    return-void
.end method

.method private calVelocity(ILmiuix/animation/utils/VelocityMonitor$MoveRecord;Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)F
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 98
    iget-object v2, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v8, v2, p1

    .line 99
    iget-wide v10, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    .line 100
    iget-object v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    .line 101
    iget-wide v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v5, v10, v0

    move-object/from16 v0, p0

    move-wide v1, v8

    .line 102
    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    float-to-double v12, v0

    .line 106
    iget-object v0, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    const/4 v14, 0x0

    const-wide/16 v15, 0x64

    const-wide/16 v17, 0x1e

    const v19, 0x7f7fffff    # Float.MAX_VALUE

    if-ltz v0, :cond_3

    .line 107
    iget-object v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    .line 108
    iget-wide v1, v5, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v20, v10, v1

    cmp-long v1, v20, v17

    if-lez v1, :cond_2

    cmp-long v1, v20, v15

    if-gez v1, :cond_2

    .line 110
    iget-object v0, v5, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    move-object/from16 v0, p0

    move-wide v1, v8

    move-object/from16 v22, v5

    move-wide/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    float-to-double v1, v0

    mul-double v3, v12, v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    cmpl-float v0, v0, v14

    if-lez v0, :cond_0

    .line 112
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    move-object/from16 v1, v22

    goto :goto_2

    :cond_1
    move-object/from16 v1, v22

    goto :goto_2

    :cond_2
    move-object/from16 v22, v5

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, v22

    goto :goto_0

    :cond_3
    move/from16 v0, v19

    :goto_2
    cmpl-float v2, v0, v19

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 120
    iget-wide v2, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v5, v10, v2

    cmp-long v2, v5, v17

    if-lez v2, :cond_4

    cmp-long v2, v5, v15

    if-gez v2, :cond_4

    .line 122
    iget-object v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    :cond_4
    cmpl-float v1, v0, v19

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v14, v0

    :goto_3
    return v14
.end method

.method private clearVelocity()V
    .locals 2

    .line 75
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 76
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_0
    return-void
.end method

.method private getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;
    .locals 3

    .line 46
    new-instance v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;-><init>(Lmiuix/animation/utils/VelocityMonitor$1;)V

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    return-object v0
.end method

.method private getVelocity(DDJ)F
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    sub-double/2addr p1, p3

    long-to-float p3, p5

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    float-to-double p3, p3

    div-double/2addr p1, p3

    :goto_0
    double-to-float p1, p1

    return p1
.end method

.method private updateVelocity()V
    .locals 5

    .line 81
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 83
    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    .line 84
    iget-object v3, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    .line 86
    iget-object v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v1, :cond_0

    array-length v1, v1

    iget-object v3, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 87
    :cond_0
    iget-object v1, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    :cond_1
    const/4 v1, 0x0

    .line 89
    :goto_0
    iget-object v3, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 90
    iget-object v3, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    invoke-direct {p0, v1, v2, v0}, Lmiuix/animation/utils/VelocityMonitor;->calVelocity(ILmiuix/animation/utils/VelocityMonitor$MoveRecord;Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->clearVelocity()V

    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 70
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 71
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->clearVelocity()V

    return-void
.end method

.method public getVelocity(I)F
    .locals 6

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 61
    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget-wide v4, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x32

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    return v3

    .line 63
    :cond_0
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, p1, :cond_1

    .line 64
    aget p1, v0, p1

    return p1

    :cond_1
    return v3
.end method

.method public varargs update([D)V
    .locals 1

    if-eqz p1, :cond_1

    .line 37
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    .line 41
    iput-object p1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 42
    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor;->addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
