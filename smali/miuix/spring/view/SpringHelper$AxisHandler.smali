.class abstract Lmiuix/spring/view/SpringHelper$AxisHandler;
.super Ljava/lang/Object;
.source "SpringHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/spring/view/SpringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AxisHandler"
.end annotation


# instance fields
.field mAllDistance:F

.field mAxis:I

.field mDistance:F

.field final synthetic this$0:Lmiuix/spring/view/SpringHelper;


# direct methods
.method constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .locals 0

    .line 114
    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    return-void
.end method

.method private obtainSpringBackDistance(F)F
    .locals 7

    .line 199
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    return p1

    .line 203
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 204
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v5, v3

    add-double/2addr v5, v1

    double-to-float p1, v5

    mul-float/2addr p1, v0

    return p1
.end method

.method private pull(I[IZ)V
    .locals 2

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->canScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    int-to-float v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    if-eqz p3, :cond_0

    .line 148
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->obtainSpringBackDistance(F)F

    move-result v0

    mul-float/2addr p3, v0

    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    goto :goto_0

    .line 150
    :cond_0
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    add-float/2addr p3, v1

    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 151
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->unObtainSpringBackDistance(F)F

    move-result v0

    mul-float/2addr p3, v0

    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 153
    :goto_0
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aget v0, p2, p3

    add-int/2addr v0, p1

    aput v0, p2, p3

    :cond_1
    return-void
.end method

.method private release(I[IZ)I
    .locals 6

    .line 159
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 160
    iget v1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 161
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 163
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    int-to-float v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    if-eqz p3, :cond_0

    .line 165
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lmiuix/spring/view/SpringHelper$AxisHandler;->obtainSpringBackDistance(F)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 166
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aget v4, p2, v3

    sub-int v5, p1, p1

    add-int/2addr v4, v5

    aput v4, p2, v3

    .line 169
    :cond_0
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    iget v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v1, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    if-nez p3, :cond_1

    .line 172
    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 174
    :cond_1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aput p1, p2, v0

    goto :goto_0

    .line 176
    :cond_2
    iput v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 177
    iget p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aget v2, p2, p1

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    aput v0, p2, p1

    .line 179
    :goto_0
    iget p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    .line 180
    iput v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    :cond_3
    if-nez p3, :cond_4

    .line 183
    iget p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-direct {p0, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;->unObtainSpringBackDistance(F)F

    move-result p2

    mul-float/2addr p1, p2

    iput p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    :cond_4
    return v1
.end method

.method private unObtainSpringBackDistance(F)F
    .locals 8

    .line 208
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1

    .line 212
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    const v3, 0x3eaaaaab

    cmpg-float v1, v1, v3

    const/high16 v3, 0x40400000    # 3.0f

    if-gtz v1, :cond_1

    int-to-double v0, v0

    const-wide v4, 0x3fe5555560000000L    # 0.6666666865348816

    .line 213
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 214
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v3

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide v6, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    double-to-float p1, v0

    return p1

    :cond_1
    mul-float/2addr p1, v3

    return p1
.end method


# virtual methods
.method protected abstract canScroll()Z
.end method

.method protected abstract getSize()I
.end method

.method handleNestedPreScroll([I[IZ)Z
    .locals 4

    .line 123
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aget v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->canScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    float-to-int v2, v2

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v2

    mul-int/2addr v2, v0

    if-lez v2, :cond_1

    return v1

    .line 133
    :cond_1
    iget v1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    invoke-direct {p0, v0, p2, p3}, Lmiuix/spring/view/SpringHelper$AxisHandler;->release(I[IZ)I

    move-result p2

    aput p2, p1, v1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method handleNestedScroll(I[II[I)V
    .locals 0

    .line 138
    iget-object p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p2}, Lmiuix/spring/view/SpringHelper;->springAvailable()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 139
    :goto_0
    invoke-direct {p0, p1, p4, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;->pull(I[IZ)V

    :cond_1
    return-void
.end method
