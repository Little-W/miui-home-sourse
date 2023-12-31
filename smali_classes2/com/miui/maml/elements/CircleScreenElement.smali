.class public Lcom/miui/maml/elements/CircleScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "CircleScreenElement.java"


# static fields
.field private static final PROPERTY_NAME_R:Ljava/lang/String; = "r"

.field public static final R:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TAG_NAME:Ljava/lang/String; = "Circle"


# instance fields
.field private mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/miui/maml/elements/CircleScreenElement$1;

    const-string v1, "r"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/CircleScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/CircleScreenElement;->R:Lcom/miui/maml/folme/AnimatedProperty;

    .line 46
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/miui/maml/elements/CircleScreenElement;->R:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/elements/CircleScreenElement;->R:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/miui/maml/elements/CircleScreenElement;->R:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 8

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 55
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/CircleScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v4

    .line 56
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object p1, p0, Lcom/miui/maml/elements/CircleScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 57
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object p1, p0, Lcom/miui/maml/elements/CircleScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 58
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/CircleScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/maml/elements/CircleScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object p1, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/CircleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method private final getRadius()F
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/CircleScreenElement;->scale(D)F

    move-result p0

    return p0
.end method


# virtual methods
.method protected initProperties()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->initProperties()V

    .line 64
    iget-object p0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/miui/maml/elements/CircleScreenElement;->getRadius()F

    move-result v0

    .line 72
    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_0

    .line 73
    iget p2, p0, Lcom/miui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr p2, v2

    add-float/2addr v0, p2

    goto :goto_0

    .line 74
    :cond_0
    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v1, :cond_1

    .line 75
    iget p2, p0, Lcom/miui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr p2, v2

    sub-float/2addr v0, p2

    .line 77
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
