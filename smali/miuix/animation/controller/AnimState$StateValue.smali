.class Lmiuix/animation/controller/AnimState$StateValue;
.super Ljava/lang/Object;
.source "AnimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/AnimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateValue"
.end annotation


# instance fields
.field config:Lmiuix/animation/base/AnimConfig;

.field enable:Z

.field flags:J

.field intValue:I

.field value:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lmiuix/animation/controller/AnimState$StateValue;->enable:Z

    return-void
.end method


# virtual methods
.method setFlags(J)Lmiuix/animation/controller/AnimState$StateValue;
    .locals 0

    .line 83
    iput-wide p1, p0, Lmiuix/animation/controller/AnimState$StateValue;->flags:J

    return-object p0
.end method

.method setIntValue(I)Lmiuix/animation/controller/AnimState$StateValue;
    .locals 0

    .line 78
    iput p1, p0, Lmiuix/animation/controller/AnimState$StateValue;->intValue:I

    return-object p0
.end method

.method setValue(F)Lmiuix/animation/controller/AnimState$StateValue;
    .locals 0

    .line 73
    iput p1, p0, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateValue{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", intValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/controller/AnimState$StateValue;->intValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/animation/controller/AnimState$StateValue;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/controller/AnimState$StateValue;->flags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
