.class public Lcom/miui/maml/elements/ElementGroup;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ElementGroup$LinearDirection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mHovered:Z

.field private mIndexVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

.field private mTouched:Z


# direct methods
.method private constructor <init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 30
    sget-object p1, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 49
    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 30
    sget-object p2, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static createArrayGroup(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)Lcom/miui/maml/elements/ElementGroup;
    .locals 1

    .line 53
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V

    return-object v0
.end method

.method public static isArrayGroup(Lcom/miui/maml/elements/ScreenElement;)Z
    .locals 1

    .line 57
    instance-of v0, p0, Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->isArray()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "clip"

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    const-string v0, "layered"

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    const-string v0, "linear"

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    goto :goto_0

    :cond_1
    const-string v1, "v"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 77
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 80
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 81
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 82
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .locals 3

    .line 438
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 439
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 441
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addElement(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ScreenElement;->setParent(Lcom/miui/maml/elements/ElementGroup;)V

    .line 90
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 12

    .line 212
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getWidth()F

    move-result v0

    .line 213
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    .line 214
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v10

    .line 215
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v11

    .line 217
    iget-boolean v3, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    add-float v6, v10, v0

    add-float v7, v11, v1

    .line 218
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getAlpha()I

    move-result v8

    const/16 v9, 0x1f

    move-object v3, p1

    move v4, v10

    move v5, v11

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v3

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 222
    :goto_0
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    .line 223
    iget-boolean v4, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v4, :cond_1

    .line 224
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 227
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    .line 228
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doRenderChildren(Landroid/graphics/Canvas;)V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 235
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    int-to-double v4, v1

    .line 236
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 237
    :cond_0
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected doTick(J)V
    .locals 0

    .line 243
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTickChildren(J)V

    return-void
.end method

.method protected doTickChildren(J)V
    .locals 10

    .line 248
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    .line 252
    iget-object v6, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/elements/ScreenElement;

    .line 253
    iget-object v7, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v7, :cond_0

    int-to-double v8, v2

    .line 254
    invoke-virtual {v7, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 255
    :cond_0
    invoke-virtual {v6, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->tick(J)V

    .line 257
    iget-object v7, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    sget-object v8, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    if-eq v7, v8, :cond_3

    instance-of v7, v6, Lcom/miui/maml/elements/AnimatedScreenElement;

    if-eqz v7, :cond_3

    .line 259
    invoke-virtual {v6}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 260
    check-cast v6, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 261
    sget-object v7, Lcom/miui/maml/elements/ElementGroup$1;->$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v8, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v8}, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_2

    if-eq v7, v4, :cond_1

    goto :goto_2

    .line 271
    :cond_1
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    move-result v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    .line 272
    invoke-virtual {v6, v4, v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 273
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 274
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    cmpg-float v5, v3, v4

    if-gez v5, :cond_3

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    move-result v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    .line 264
    invoke-virtual {v6, v4, v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->setX(D)V

    .line 265
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 266
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    cmpg-float v5, v3, v4

    if-gez v5, :cond_3

    :goto_1
    move v3, v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_4
    sget-object p1, Lcom/miui/maml/elements/ElementGroup$1;->$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {p2}, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    goto :goto_3

    :cond_5
    float-to-double p1, v1

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setHeight(D)V

    float-to-double v0, v3

    .line 291
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ElementGroup;->setWidth(D)V

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setActualHeight(D)V

    .line 293
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setActualWidth(D)V

    goto :goto_3

    :cond_6
    float-to-double p1, v1

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setWidth(D)V

    float-to-double v0, v3

    .line 285
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ElementGroup;->setHeight(D)V

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setActualWidth(D)V

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setActualHeight(D)V

    :goto_3
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 3

    .line 418
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 424
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public finish()V
    .locals 5

    .line 392
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 394
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 400
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MAML_ElementGroup"

    invoke-static {v4, v3}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChild(I)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    if-ltz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/ScreenElement;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getParentLeft()F
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method protected getParentTop()F
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public getSize()I
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 5

    .line 111
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 113
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 115
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    int-to-double v3, v1

    .line 116
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isArray()Z
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLayered()Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 456
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 457
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 459
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, p0}, Lcom/miui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p0

    return-object p0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 350
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v0

    .line 354
    iget-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 355
    iget-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xa

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_5

    .line 367
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/ScreenElement;

    .line 368
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v4, :cond_3

    int-to-double v5, v0

    .line 369
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 370
    :cond_3
    invoke-virtual {v3, p1}, Lcom/miui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    .line 376
    :cond_6
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_2
    iput-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    .line 377
    iget-boolean p0, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    return p0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 300
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v2

    .line 305
    iget-boolean v3, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 306
    iget-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    .line 312
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 316
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 319
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->version()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v3, v4, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_6

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_9

    .line 323
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/ScreenElement;

    .line 324
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v4, :cond_4

    int-to-double v6, v2

    .line 325
    invoke-virtual {v4, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 326
    :cond_4
    invoke-virtual {v3, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_9

    .line 333
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    .line 334
    iget-object v6, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v6, :cond_7

    int-to-double v7, v3

    .line 335
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 336
    :cond_7
    invoke-virtual {v4, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_3
    move v1, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 342
    :cond_9
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    if-eqz v1, :cond_a

    goto :goto_5

    .line 344
    :cond_a
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_5
    iput-boolean v5, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    .line 345
    iget-boolean p0, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    return p0
.end method

.method protected onVisibilityChange(Z)V
    .locals 2

    .line 447
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 448
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 177
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 179
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 3

    .line 147
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 149
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 13

    move-object v0, p0

    .line 135
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 137
    iget-object v1, v0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 139
    iget-object v3, v0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    int-to-double v4, v2

    .line 140
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 141
    :cond_0
    iget-object v3, v0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAllElements()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public removeElement(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public reset(J)V
    .locals 3

    .line 167
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 169
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 171
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 187
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->resume()V

    .line 189
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 3

    .line 157
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 159
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 161
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 5

    .line 123
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setAnim([Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    int-to-double v3, v1

    .line 128
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClip(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    .line 469
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 470
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 472
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3

    .line 408
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 410
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 412
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
