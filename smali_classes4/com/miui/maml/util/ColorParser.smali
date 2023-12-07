.class public Lcom/miui/maml/util/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/ColorParser$ExpressionType;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final LOG_TAG:Ljava/lang/String; = "ColorParser"


# instance fields
.field private mColor:I

.field private mColorExpression:Ljava/lang/String;

.field private mCurColorString:Ljava/lang/String;

.field private mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

.field private mRGBExpression:[Lcom/miui/maml/data/Expression;

.field private mType:Lcom/miui/maml/util/ColorParser$ExpressionType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 38
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 39
    sget-object p1, Lcom/miui/maml/util/ColorParser$ExpressionType;->CONST:Lcom/miui/maml/util/ColorParser$ExpressionType;

    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/util/ColorParser;->mColor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    goto :goto_0

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 46
    sget-object p2, Lcom/miui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lcom/miui/maml/util/ColorParser$ExpressionType;

    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 47
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_0

    .line 48
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v1, "argb("

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 49
    sget-object p2, Lcom/miui/maml/util/ColorParser$ExpressionType;->ARGB:Lcom/miui/maml/util/ColorParser$ExpressionType;

    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 50
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 51
    iget-object p0, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_4

    array-length p0, p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "ColorParser"

    const-string p1, "bad expression format"

    .line 52
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad expression format."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_3
    sget-object p1, Lcom/miui/maml/util/ColorParser$ExpressionType;->INVALID:Lcom/miui/maml/util/ColorParser$ExpressionType;

    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    :cond_4
    :goto_0
    return-void
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;
    .locals 2

    .line 87
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;
    .locals 2

    .line 91
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;
    .locals 1

    .line 95
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    invoke-static {p1, p2, p3}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 7

    .line 61
    sget-object v0, Lcom/miui/maml/util/ColorParser$1;->$SwitchMap$com$miui$maml$util$ColorParser$ExpressionType:[I

    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/high16 v2, -0x1000000

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 79
    iput v2, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int v0, v5

    .line 73
    iget-object v2, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    .line 74
    iget-object v2, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    .line 75
    iget-object v3, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    .line 76
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/ColorParser;->mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :cond_2
    iput v2, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 68
    iput-object v0, p0, Lcom/miui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    .line 83
    :cond_3
    :goto_0
    iget p0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    return p0
.end method
