.class public final Lcom/tencent/matrix/resource/hproflib/model/Field;
.super Ljava/lang/Object;
.source "Field.java"


# instance fields
.field public final nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

.field public final staticValue:Ljava/lang/Object;

.field public final typeId:I


# direct methods
.method public constructor <init>(ILcom/tencent/matrix/resource/hproflib/model/ID;Ljava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    .line 33
    iput-object p2, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 34
    iput-object p3, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->staticValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/tencent/matrix/resource/hproflib/model/Field;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 47
    :cond_1
    check-cast p1, Lcom/tencent/matrix/resource/hproflib/model/Field;

    .line 49
    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    iget v3, p1, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    if-eq v1, v3, :cond_2

    return v2

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    iget-object v3, p1, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    invoke-virtual {v1, v3}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->staticValue:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/tencent/matrix/resource/hproflib/model/Field;->staticValue:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/model/Field;->staticValue:Ljava/lang/Object;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->staticValue:Ljava/lang/Object;

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :cond_6
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    invoke-virtual {v0}, Lcom/tencent/matrix/resource/hproflib/model/ID;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    add-int/2addr v0, v1

    return v0
.end method
