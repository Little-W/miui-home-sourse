.class public Lcom/miui/maml/elements/RectangleScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "RectangleScreenElement.java"


# static fields
.field public static final CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field private static final LOG_TAG:Ljava/lang/String; = "RectangleScreenElement"

.field private static final PROPERTY_NAME_CORNER_RADIUS_X:Ljava/lang/String; = "cornerRadiusX"

.field private static final PROPERTY_NAME_CORNER_RADIUS_Y:Ljava/lang/String; = "cornerRadiusY"

.field public static final TAG_NAME:Ljava/lang/String; = "Rectangle"


# instance fields
.field private mCornerRadiusX:F

.field private mCornerRadiusY:F

.field private mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement$1;

    const-string v1, "cornerRadiusX"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/RectangleScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 48
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement$2;

    const-string v1, "cornerRadiusY"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/RectangleScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 73
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "cornerRadiusX"

    sget-object v2, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    const/16 v2, 0x3ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "cornerRadiusY"

    sget-object v2, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    const/16 v2, 0x3ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/RectangleScreenElement;->resolveCornerRadius(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/RectangleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/RectangleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method private resolveCornerRadius(Lorg/w3c/dom/Element;)V
    .locals 14

    const-string v0, "cornerRadiusExp"

    .line 94
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v3, "cornerRadius"

    .line 97
    invoke-virtual {p0, p1, v3}, Lcom/miui/maml/elements/RectangleScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ","

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 100
    :try_start_0
    array-length v3, p1

    if-ge v3, v2, :cond_0

    return-void

    .line 102
    :cond_0
    array-length v3, p1

    if-ne v3, v2, :cond_1

    .line 103
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    goto :goto_0

    .line 105
    :cond_1
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v3

    iput v3, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 106
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RectangleScreenElement"

    const-string v3, "illegal number format of cornerRadius."

    .line 109
    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 112
    array-length p1, v0

    if-lez p1, :cond_3

    aget-object p1, v0, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object v6, p1

    if-eqz v0, :cond_4

    .line 113
    array-length p1, v0

    if-le p1, v2, :cond_4

    aget-object p1, v0, v2

    move-object v10, p1

    goto :goto_2

    :cond_4
    move-object v10, v6

    .line 114
    :goto_2
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cornerRadiusX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->isInFolmeMode()Z

    move-result v7

    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/RectangleScreenElement;->descale(D)D

    move-result-wide v8

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 115
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cornerRadiusY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->isInFolmeMode()Z

    move-result v11

    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/RectangleScreenElement;->descale(D)D

    move-result-wide v12

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 128
    iget-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 129
    iget-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    return-void
.end method

.method protected initProperties()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->initProperties()V

    .line 121
    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 122
    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 11

    .line 134
    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->getWidth()F

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/RectangleScreenElement;->getLeft(FF)F

    move-result v3

    .line 137
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/RectangleScreenElement;->getTop(FF)F

    move-result v4

    cmpl-float v5, v0, v2

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-float/2addr v0, v3

    cmpl-float v5, v1, v2

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-float/2addr v1, v4

    .line 140
    sget-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const/high16 v6, 0x40000000    # 2.0f

    if-ne p2, v5, :cond_2

    .line 141
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr p2, v6

    sub-float/2addr v3, p2

    .line 142
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr p2, v6

    sub-float/2addr v4, p2

    .line 143
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr p2, v6

    add-float/2addr v0, p2

    .line 144
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr p2, v6

    add-float/2addr v1, p2

    move v8, v0

    move v9, v1

    move v6, v3

    move v7, v4

    goto :goto_2

    .line 145
    :cond_2
    sget-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v5, :cond_3

    .line 146
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr p2, v6

    add-float/2addr v3, p2

    .line 147
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr p2, v6

    add-float/2addr v4, p2

    .line 148
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr p2, v6

    sub-float/2addr v0, p2

    .line 149
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr p2, v6

    sub-float/2addr v1, p2

    move v8, v0

    move v9, v1

    move v6, v3

    move v7, v4

    goto :goto_2

    :cond_3
    move v8, v0

    move v9, v1

    move v6, v3

    move v7, v4

    .line 152
    :goto_2
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    cmpg-float p2, p2, v2

    if-lez p2, :cond_5

    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_4

    goto :goto_3

    .line 155
    :cond_4
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    iget v1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iget-object v2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 153
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_4
    return-void
.end method
