.class public Lcom/miui/home/launcher/util/FlingBlockCheck;
.super Ljava/lang/Object;
.source "FlingBlockCheck.java"


# instance fields
.field private mBlockFling:Z

.field private mBlockFlingTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blockFling()V
    .locals 2

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/miui/home/launcher/util/FlingBlockCheck;->mBlockFling:Z

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/util/FlingBlockCheck;->mBlockFlingTime:J

    return-void
.end method

.method public isBlocked()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/miui/home/launcher/util/FlingBlockCheck;->mBlockFling:Z

    return p0
.end method

.method public onEvent()V
    .locals 4

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/util/FlingBlockCheck;->mBlockFlingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/miui/home/launcher/util/FlingBlockCheck;->mBlockFling:Z

    :cond_0
    return-void
.end method

.method public unblockFling()V
    .locals 2

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/miui/home/launcher/util/FlingBlockCheck;->mBlockFling:Z

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/miui/home/launcher/util/FlingBlockCheck;->mBlockFlingTime:J

    return-void
.end method
