.class public abstract Lcom/miui/maml/elements/GeometryScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "GeometryScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    }
.end annotation


# static fields
.field public static final FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field private static final LOG_TAG:Ljava/lang/String; = "GeometryScreenElement"

.field private static final PROPERTY_NAME_FILL_COLOR:Ljava/lang/String; = "fillColor"

.field private static final PROPERTY_NAME_STROKE_COLOR:Ljava/lang/String; = "strokeColor"

.field private static final PROPERTY_NAME_STROKE_WEIGHT:Ljava/lang/String; = "strokeWeight"

.field public static final STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;


# instance fields
.field private mFillColor:I

.field protected mFillColorParser:Lcom/miui/maml/util/ColorParser;

.field private mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

.field protected mPaint:Landroid/graphics/Paint;

.field private final mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field private mStrokeColor:I

.field protected mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

.field private mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

.field private mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mWeight:F

.field protected mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$1;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/GeometryScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 57
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$2;

    const-string v2, "strokeColor"

    invoke-direct {v0, v2}, Lcom/miui/maml/elements/GeometryScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 81
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$3;

    const-string v3, "strokeWeight"

    invoke-direct {v0, v3}, Lcom/miui/maml/elements/GeometryScreenElement$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    .line 106
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/miui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lcom/miui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/miui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 145
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 132
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/elements/GeometryScreenElement;->scale(D)F

    move-result v2

    iput v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    const-string v2, "strokeColor"

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/GeometryScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    .line 149
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    invoke-direct {v4, v3, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    :cond_0
    const-string v2, "fillColor"

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    invoke-direct {v4, v3, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    :cond_1
    const-string v2, "weight"

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v7

    const-string v2, "cap"

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;

    move-result-object v2

    .line 158
    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 159
    invoke-direct/range {p0 .. p1}, Lcom/miui/maml/elements/GeometryScreenElement;->resolveDashIntervals(Lorg/w3c/dom/Element;)[F

    move-result-object v2

    if-eqz v2, :cond_2

    .line 161
    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_2
    const-string v2, "strokeAlign"

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->getStrokeAlign(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const-string v2, "xfermodeNum"

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 166
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-nez v2, :cond_3

    const-string v2, "xfermode"

    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 168
    iget-object v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v4, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 170
    :cond_3
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    iput v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 173
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v3

    :cond_5
    iput v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 174
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fillColor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/GeometryScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/GeometryScreenElement;->isInFolmeMode()Z

    move-result v12

    iget v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    int-to-double v13, v3

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 175
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".strokeColor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/GeometryScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/GeometryScreenElement;->isInFolmeMode()Z

    move-result v19

    iget v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    int-to-double v3, v3

    move-object v15, v2

    move-wide/from16 v20, v3

    invoke-direct/range {v15 .. v21}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 176
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".strokeWeight"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/GeometryScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/GeometryScreenElement;->isInFolmeMode()Z

    move-result v8

    const-wide/16 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 177
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/GeometryScreenElement;->loadShadersElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method private final getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;
    .locals 1

    .line 189
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "round"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    const-string v0, "square"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :cond_2
    :goto_0
    return-object p0
.end method

.method private loadShadersElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    const-string v0, "StrokeShaders"

    .line 225
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Lcom/miui/maml/shader/ShadersElement;

    invoke-direct {v1, v0, p2}, Lcom/miui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    :cond_0
    const-string v0, "FillShaders"

    .line 229
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 231
    new-instance v0, Lcom/miui/maml/shader/ShadersElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    :cond_1
    return-void
.end method

.method private resolveDashIntervals(Lorg/w3c/dom/Element;)[F
    .locals 3

    const-string v0, "dash"

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, ","

    .line 209
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 210
    array-length p1, p0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_2

    array-length p1, p0

    rem-int/2addr p1, v1

    if-nez p1, :cond_2

    .line 211
    array-length p1, p0

    new-array p1, p1, [F

    const/4 v1, 0x0

    .line 212
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 214
    :try_start_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, p1, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    if-eqz v0, :cond_2

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    if-eqz v0, :cond_1

    .line 240
    iget-object v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/miui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 241
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 244
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget v3, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 247
    :goto_0
    sget-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V

    .line 250
    :cond_2
    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    if-eqz v0, :cond_5

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 252
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 253
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    if-eqz v0, :cond_4

    .line 254
    iget-object v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/miui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 255
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 258
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V

    :cond_5
    return-void
.end method

.method protected doTick(J)V
    .locals 1

    .line 289
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 290
    invoke-virtual {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->isInFolmeMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p1

    double-to-long p1, p1

    long-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 296
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p1

    double-to-long p1, p1

    long-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    goto :goto_0

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    if-eqz p1, :cond_2

    .line 299
    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 301
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    if-eqz p1, :cond_3

    .line 302
    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 306
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    if-eqz p1, :cond_4

    .line 307
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShadersElement;->updateShader()V

    .line 309
    :cond_4
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    if-eqz p1, :cond_5

    .line 310
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShadersElement;->updateShader()V

    .line 313
    :cond_5
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;->scale(D)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 315
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_6

    .line 316
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 317
    iget-object p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 320
    :cond_6
    iget-boolean p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mTintChanged:Z

    if-eqz p1, :cond_7

    .line 321
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_7
    return-void
.end method

.method protected initProperties()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    .line 183
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 184
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 185
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 327
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 328
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method
