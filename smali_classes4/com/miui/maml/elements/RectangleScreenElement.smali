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

.field private mRectF:Landroid/graphics/RectF;

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTempPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement$1;

    const-string v1, "cornerRadiusX"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/RectangleScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 49
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement$2;

    const-string v2, "cornerRadiusY"

    invoke-direct {v0, v2}, Lcom/miui/maml/elements/RectangleScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 74
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    const/16 v3, 0x3ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
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

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 89
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    .line 90
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPath:Landroid/graphics/Path;

    .line 91
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPaint:Landroid/graphics/Paint;

    .line 95
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/RectangleScreenElement;->resolveCornerRadius(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/RectangleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/RectangleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method private resolveCornerRadius(Lorg/w3c/dom/Element;)V
    .locals 14

    const-string v0, "cornerRadiusExp"

    .line 99
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v3, "cornerRadius"

    .line 102
    invoke-virtual {p0, p1, v3}, Lcom/miui/maml/elements/RectangleScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ","

    .line 103
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 105
    :try_start_0
    array-length v3, p1

    if-ge v3, v2, :cond_0

    return-void

    .line 107
    :cond_0
    array-length v3, p1

    if-ne v3, v2, :cond_1

    .line 108
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    goto :goto_0

    .line 110
    :cond_1
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v3

    iput v3, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 111
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

    .line 114
    invoke-static {p1, v3}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 117
    array-length p1, v0

    if-lez p1, :cond_3

    aget-object p1, v0, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object v6, p1

    if-eqz v0, :cond_4

    .line 118
    array-length p1, v0

    if-le p1, v2, :cond_4

    aget-object p1, v0, v2

    move-object v10, p1

    goto :goto_2

    :cond_4
    move-object v10, v6

    .line 119
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

    .line 120
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

    .line 132
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 133
    iget-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 134
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

    .line 125
    invoke-super {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->initProperties()V

    .line 126
    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 127
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 6

    .line 139
    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->getWidth()F

    move-result v0

    .line 140
    invoke-virtual {p0}, Lcom/miui/maml/elements/RectangleScreenElement;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/RectangleScreenElement;->getLeft(FF)F

    move-result v3

    .line 142
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

    .line 145
    iget-object v5, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 146
    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 147
    iget v1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    iget v3, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 148
    sget-object v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v3, :cond_2

    .line 149
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    neg-float v3, v0

    invoke-virtual {p2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    cmpl-float p2, v1, v2

    if-lez p2, :cond_5

    add-float/2addr v1, v0

    goto :goto_3

    .line 153
    :cond_2
    sget-object v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v3, :cond_5

    cmpl-float p2, v1, v0

    if-lez p2, :cond_3

    sub-float/2addr v1, v0

    goto :goto_2

    :cond_3
    cmpl-float p2, v1, v2

    if-lez p2, :cond_4

    .line 159
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 162
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 163
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    iget v1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mWeight:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 164
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 165
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 166
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 167
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 171
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_5
    :goto_3
    cmpg-float p2, v1, v2

    if-gtz p2, :cond_6

    .line 174
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 176
    :cond_6
    iget-object p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_4
    return-void
.end method
