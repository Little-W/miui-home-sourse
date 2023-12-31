.class public Lcom/miui/maml/elements/AutoScaleElementGroup;
.super Lcom/miui/maml/elements/ElementGroup;
.source "AutoScaleElementGroup.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AutoScaleGroup"


# instance fields
.field private mInitRawHeight:F

.field private mInitRawWidth:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getScaleX()F
    .locals 4

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/elements/AutoScaleElementGroup;->getWidthRaw()F

    move-result v0

    .line 27
    iget v1, p0, Lcom/miui/maml/elements/AutoScaleElementGroup;->mInitRawWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 28
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->getScaleX()F

    move-result p0

    mul-float/2addr v0, p0

    return v0

    .line 30
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->getScaleX()F

    move-result p0

    return p0
.end method

.method public getScaleY()F
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/elements/AutoScaleElementGroup;->getHeightRaw()F

    move-result v0

    .line 37
    iget v1, p0, Lcom/miui/maml/elements/AutoScaleElementGroup;->mInitRawHeight:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 38
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->getScaleY()F

    move-result p0

    mul-float/2addr v0, p0

    return v0

    .line 40
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->getScaleY()F

    move-result p0

    return p0
.end method

.method public init()V
    .locals 1

    .line 19
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/AutoScaleElementGroup;->getWidthRaw()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/AutoScaleElementGroup;->mInitRawWidth:F

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/elements/AutoScaleElementGroup;->getHeightRaw()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/AutoScaleElementGroup;->mInitRawHeight:F

    return-void
.end method
