.class public Lmiuix/animation/base/AnimConfig;
.super Ljava/lang/Object;
.source "AnimConfig.java"


# instance fields
.field public delay:J

.field public ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public effectFromValue:D

.field public flags:J

.field public fromSpeed:F

.field public listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field public minDuration:J

.field public relatedProperty:[Lmiuix/animation/property/FloatProperty;

.field public tag:Ljava/lang/Object;

.field public tintMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 32
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 32
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 84
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 85
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 86
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    .line 87
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    iget-object v1, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 89
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 90
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 91
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 92
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 93
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->effectFromValue:D

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->effectFromValue:D

    :cond_0
    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatProperty;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 32
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 71
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->setProperty(Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs constructor <init>([Lmiuix/animation/property/FloatProperty;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 32
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 79
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    return-void
.end method


# virtual methods
.method public varargs addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .locals 1

    .line 118
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDelay(J)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 108
    iput-wide p1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    return-object p0
.end method

.method public varargs setEase(I[F)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 103
    invoke-static {p1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 98
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setFromSpeed(F)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 113
    iput p1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    return-object p0
.end method

.method public final setProperty(Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    const/4 v0, 0x1

    .line 75
    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimConfig{, delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", minDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fromSpeed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedProperty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    .line 158
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listeners = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 160
    invoke-virtual {v1}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
