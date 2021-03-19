.class public Lmiuix/animation/base/AnimConfigLink;
.super Ljava/lang/Object;
.source "AnimConfigLink.java"


# static fields
.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final mHeadConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmiuix/animation/base/AnimConfigLink;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lmiuix/animation/base/AnimConfigLink;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lmiuix/animation/base/AnimConfigLink;->id:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 20
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method private doClear()V
    .locals 1

    .line 92
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0}, Lmiuix/animation/base/AnimConfig;->clear()V

    return-void
.end method

.method public static varargs linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;
    .locals 6

    .line 23
    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    .line 24
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 25
    new-array v5, v2, [Z

    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public varargs add(Lmiuix/animation/base/AnimConfig;[Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 31
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_0

    .line 33
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2, p1}, Lmiuix/animation/base/AnimConfig;-><init>(Lmiuix/animation/base/AnimConfig;)V

    .line 34
    iget-object p1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs add(Lmiuix/animation/base/AnimConfigLink;[Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object p1, p1, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimConfig;

    .line 46
    invoke-virtual {p0, v0, p2}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addTo(Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    .line 72
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/base/AnimConfig;

    .line 73
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 74
    iget-object v2, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 75
    iget-object v3, v1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v3, :cond_0

    .line 76
    sget-object v4, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eq v3, v4, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 77
    iget-object v2, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    iget-object v3, v1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->flags:J

    or-long/2addr v2, v4

    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 79
    iget v2, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    iget v3, v1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 80
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 81
    iget v2, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    iget v3, v1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 82
    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->addSpecialConfigs(Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lmiuix/animation/base/AnimConfigLink;->doClear()V

    .line 88
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHead()Lmiuix/animation/base/AnimConfig;
    .locals 2

    .line 97
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimConfigLink{id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/base/AnimConfigLink;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", configList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 107
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

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
