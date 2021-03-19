.class public Lmiuix/animation/base/AnimConfig;
.super Ljava/lang/Object;
.source "AnimConfig.java"


# static fields
.field public static final sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;


# instance fields
.field public delay:J

.field public ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public flags:J

.field public fromSpeed:F

.field public final listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/base/AnimSpecialConfig;",
            ">;"
        }
    .end annotation
.end field

.field public minDuration:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tag:Ljava/lang/Object;

.field public tintMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, -0x2

    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    sput-object v0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-void

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    .line 71
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 31
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 62
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    :goto_0
    return-void
.end method

.method private queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 1

    .line 239
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 241
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 242
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 213
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .locals 1

    .line 126
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSpecialConfigs(Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public clear()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    const/4 v2, 0x0

    .line 93
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 94
    iget-object v3, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 95
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 96
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 97
    iput v2, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 98
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 100
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public copy(Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    .line 76
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 77
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 78
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    iget-object v1, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 80
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 81
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 82
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 83
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 84
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 86
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public queryAndCreateSpecial(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 1

    const/4 v0, 0x1

    .line 206
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public setDelay(J)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 116
    iput-wide p1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    return-object p0
.end method

.method public varargs setEase(I[F)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 111
    invoke-static {p1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 106
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setFromSpeed(F)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 121
    iput p1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 173
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .locals 7

    const/4 v0, 0x1

    .line 182
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 183
    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 177
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method varargs setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V
    .locals 2

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimSpecialConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_1

    .line 192
    invoke-virtual {p1, p3, p4}, Lmiuix/animation/base/AnimSpecialConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 194
    :cond_1
    array-length p2, p5

    if-lez p2, :cond_2

    const/4 p2, 0x0

    aget p2, p5, p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimSpecialConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimConfig{delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", minDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tintMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", specialNameMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    const-string v2, "    "

    .line 258
    invoke-static {v1, v2}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
