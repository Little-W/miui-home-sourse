.class public Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;
.super Ljava/lang/Object;
.source "FragmentContainerHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public static getImitativePositionData(Ljava/util/List;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;",
            ">;I)",
            "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 67
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 68
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    invoke-direct {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;-><init>()V

    if-gez p1, :cond_1

    const/4 v1, 0x0

    .line 75
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    .line 80
    :goto_0
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    .line 81
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mTop:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mTop:I

    .line 82
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    .line 83
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mBottom:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mBottom:I

    .line 84
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    .line 85
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentTop:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentTop:I

    .line 86
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v2

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    .line 87
    iget p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentBottom:I

    iput p0, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentBottom:I

    return-object v0
.end method
