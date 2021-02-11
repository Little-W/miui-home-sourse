.class public Lmiuix/animation/listener/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field public anim:Lmiuix/animation/styles/PropertyStyle;

.field public endTime:J

.field public isCanceled:Z

.field public isCompleted:Z

.field public isEndByUser:Z

.field private mValue:Ljava/lang/Number;

.field public property:Lmiuix/animation/property/FloatProperty;

.field public transId:J

.field public velocity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFloatValue()F
    .locals 1

    .line 77
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .line 81
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->isEndByUser:Z

    iput-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    iput-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->isCanceled:Z

    return-void
.end method

.method public setComplete(Z)V
    .locals 2

    .line 85
    iput-boolean p1, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 86
    iget-boolean p1, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p1, :cond_0

    .line 87
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/internal/AnimRunner;->getRunningTime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/listener/UpdateInfo;->endTime:J

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(TT;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lmiuix/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateInfo{property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
