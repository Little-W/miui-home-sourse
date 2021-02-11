.class public Lmiuix/animation/controller/AnimState;
.super Ljava/lang/Object;
.source "AnimState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/AnimState$StateValue;
    }
.end annotation


# static fields
.field private static STEP:I = 0x64

.field public static final VIEW_POS:I


# instance fields
.field private mGlobalConfig:Lmiuix/animation/base/AnimConfig;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/property/FloatProperty;",
            "Lmiuix/animation/controller/AnimState$StateValue;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget v0, Lmiuix/animation/controller/AnimState;->STEP:I

    const v1, 0xf4240

    add-int/2addr v0, v1

    sput v0, Lmiuix/animation/controller/AnimState;->VIEW_POS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 105
    iput-object p1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag mustn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addPropertyTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    .line 45
    instance-of v0, p2, Lmiuix/animation/property/IIntValueProperty;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p2

    check-cast v0, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p1, v0}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p1

    new-array v0, v1, [J

    invoke-virtual {p0, p2, p1, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1, p2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p1

    new-array v0, v1, [J

    invoke-virtual {p0, p2, p1, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    :goto_0
    return-void
.end method

.method public static alignState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)V
    .locals 4

    .line 34
    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/property/FloatProperty;

    .line 35
    invoke-direct {p2, v1}, Lmiuix/animation/controller/AnimState;->getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object v2

    .line 36
    iget v2, v2, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    const v3, 0x49742400    # 1000000.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 37
    sget v3, Lmiuix/animation/controller/AnimState;->VIEW_POS:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->contains(Lmiuix/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p1, p0, v1}, Lmiuix/animation/controller/AnimState;->addPropertyTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;
    .locals 2

    .line 292
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lmiuix/animation/controller/AnimState$StateValue;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState$StateValue;-><init>()V

    .line 295
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public varargs add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;
    .locals 2

    .line 154
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lmiuix/animation/controller/AnimState$StateValue;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState$StateValue;-><init>()V

    .line 157
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    invoke-virtual {v0, p2}, Lmiuix/animation/controller/AnimState$StateValue;->setValue(F)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p1

    array-length p2, p3

    if-lez p2, :cond_1

    const/4 p2, 0x0

    aget-wide p2, p3, p2

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Lmiuix/animation/controller/AnimState$StateValue;->setFlags(J)Lmiuix/animation/controller/AnimState$StateValue;

    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;
    .locals 2

    .line 164
    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lmiuix/animation/controller/AnimState$StateValue;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState$StateValue;-><init>()V

    .line 168
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    invoke-virtual {v0, p2}, Lmiuix/animation/controller/AnimState$StateValue;->setIntValue(I)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p1

    array-length p2, p3

    if-lez p2, :cond_1

    const/4 p2, 0x0

    aget-wide p2, p3, p2

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Lmiuix/animation/controller/AnimState$StateValue;->setFlags(J)Lmiuix/animation/controller/AnimState$StateValue;

    goto :goto_1

    :cond_2
    int-to-float p2, p2

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    :goto_1
    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public varargs add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 113
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Lmiuix/animation/property/FloatProperty;)Z
    .locals 1

    .line 181
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F
    .locals 2

    .line 223
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz v0, :cond_0

    .line 225
    iget v1, v0, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    invoke-static {p1, p2, v1}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;F)F

    move-result p1

    iput p1, v0, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    .line 226
    iget p1, v0, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    return p1

    :cond_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method public getAllConfig(Lmiuix/animation/base/AnimConfigLink;)V
    .locals 3

    .line 275
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getGlobalConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;)V

    .line 276
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/controller/AnimState$StateValue;

    .line 277
    iget-object v2, v1, Lmiuix/animation/controller/AnimState$StateValue;->config:Lmiuix/animation/base/AnimConfig;

    if-eqz v2, :cond_0

    .line 278
    iget-object v1, v1, Lmiuix/animation/controller/AnimState$StateValue;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFlags(Lmiuix/animation/property/FloatProperty;)J
    .locals 2

    .line 235
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p1

    .line 236
    iget-wide v0, p1, Lmiuix/animation/controller/AnimState$StateValue;->flags:J

    return-wide v0
.end method

.method public getFloat(Lmiuix/animation/property/FloatProperty;)F
    .locals 1

    .line 214
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz p1, :cond_0

    .line 215
    iget p1, p1, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    goto :goto_0

    :cond_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    return p1
.end method

.method public getGlobalConfig()Lmiuix/animation/base/AnimConfig;
    .locals 1

    .line 252
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    .line 255
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method

.method public getInt(Lmiuix/animation/property/FloatProperty;)I
    .locals 2

    .line 199
    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz p1, :cond_1

    .line 204
    iget p1, p1, Lmiuix/animation/controller/AnimState$StateValue;->intValue:I

    return p1

    :cond_1
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 134
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public hasFlags(Lmiuix/animation/property/FloatProperty;J)Z
    .locals 2

    .line 243
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p1

    .line 244
    iget-wide v0, p1, Lmiuix/animation/controller/AnimState$StateValue;->flags:J

    invoke-static {v0, v1, p2, p3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lmiuix/animation/property/FloatProperty;)Z
    .locals 1

    .line 314
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz p1, :cond_0

    .line 315
    iget-boolean p1, p1, Lmiuix/animation/controller/AnimState$StateValue;->enable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 319
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nAnimState{mTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    const-string v2, "    "

    .line 327
    invoke-static {v1, v2}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
