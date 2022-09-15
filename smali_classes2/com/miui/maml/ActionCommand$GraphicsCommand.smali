.class Lcom/miui/maml/ActionCommand$GraphicsCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GraphicsCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "GraphicsCommand"


# instance fields
.field private mColorArrayNameExp:Lcom/miui/maml/data/Expression;

.field private mColorExp:Lcom/miui/maml/data/Expression;

.field private mColorParsers:[Lcom/miui/maml/util/ColorParser;

.field private mColors:[I

.field private mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field private mCurrentColorArrayName:Ljava/lang/String;

.field private mCurrentStopArrayName:Ljava/lang/String;

.field private mIsParamsValid:Z

.field private mIsStopsValid:Z

.field private mParamExps:[Lcom/miui/maml/data/Expression;

.field private mStopArrayNameExp:Lcom/miui/maml/data/Expression;

.field private mStopExps:[Lcom/miui/maml/data/Expression;

.field private mStops:[F


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1711
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1712
    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->checkExps(Lorg/w3c/dom/Element;)V

    .line 1713
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "colorArrayNameExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lcom/miui/maml/data/Expression;

    .line 1714
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "stopArrayNameExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lcom/miui/maml/data/Expression;

    .line 1715
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "colorExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lcom/miui/maml/data/Expression;

    .line 1716
    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseCommand(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private beginFill(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 2

    .line 1793
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 1794
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    .line 1795
    :cond_1
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/GraphicsElement;->beginFill(I)V

    return-void
.end method

.method private checkExps(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 1771
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "paramsExp"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 1772
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 1773
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "stopsExp"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lcom/miui/maml/data/Expression;

    .line 1774
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsStopsValid:Z

    const-string v0, "colors"

    .line 1776
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 1778
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1779
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1780
    array-length v0, p1

    new-array v0, v0, [Lcom/miui/maml/util/ColorParser;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    const/4 v0, 0x0

    .line 1781
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1782
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    new-instance v2, Lcom/miui/maml/util/ColorParser;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createGradientBox(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 9

    .line 1799
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1800
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v4

    .line 1801
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v5

    .line 1802
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v6

    .line 1803
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v7

    .line 1804
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    .line 1805
    invoke-virtual/range {v3 .. v8}, Lcom/miui/maml/elements/GraphicsElement;->createOrUpdateGradientBox(FFFFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private cubicCurveTo(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 10

    .line 1820
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1821
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v4

    .line 1822
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v5

    .line 1823
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v6

    .line 1824
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v7

    .line 1825
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v8

    .line 1826
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v9

    move-object v3, p1

    .line 1827
    invoke-virtual/range {v3 .. v9}, Lcom/miui/maml/elements/GraphicsElement;->cubicCurveTo(FFFFFF)V

    :cond_0
    return-void
.end method

.method private curveTo(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 6

    .line 1810
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1811
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    .line 1812
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    .line 1813
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v3

    .line 1814
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-direct {p0, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    .line 1815
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/miui/maml/elements/GraphicsElement;->curveTo(FFFF)V

    :cond_0
    return-void
.end method

.method private drawCircle(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 5

    .line 1832
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1833
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    .line 1834
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    .line 1835
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    .line 1836
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/maml/elements/GraphicsElement;->drawCircle(FFF)V

    :cond_0
    return-void
.end method

.method private drawEllipse(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 6

    .line 1841
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1842
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    .line 1843
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    .line 1844
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v3

    .line 1845
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-direct {p0, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    .line 1846
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/miui/maml/elements/GraphicsElement;->drawEllipse(FFFF)V

    :cond_0
    return-void
.end method

.method private drawRect(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 6

    .line 1851
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1852
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    .line 1853
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    .line 1854
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v3

    .line 1855
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-direct {p0, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    .line 1856
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/miui/maml/elements/GraphicsElement;->drawRect(FFFF)V

    :cond_0
    return-void
.end method

.method private drawRoundRect(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 10

    .line 1861
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 1862
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v4

    .line 1863
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v5

    .line 1864
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v6

    .line 1865
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v7

    .line 1866
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v8

    .line 1867
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    move-object v3, p1

    .line 1868
    invoke-virtual/range {v3 .. v9}, Lcom/miui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    :cond_1
    return-void
.end method

.method private lineStyle(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 9

    .line 1873
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_5

    const/high16 v0, -0x1000000

    .line 1875
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lcom/miui/maml/data/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1877
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    move v5, v0

    goto :goto_0

    .line 1878
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 1879
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v0

    .line 1881
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v4

    .line 1882
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v2

    .line 1883
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    move v7, v0

    goto :goto_2

    :cond_3
    move v7, v2

    .line 1884
    :goto_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v3, 0x3

    if-le v1, v3, :cond_4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v2, v0

    :cond_4
    int-to-float v8, v2

    move-object v3, p1

    .line 1885
    invoke-virtual/range {v3 .. v8}, Lcom/miui/maml/elements/GraphicsElement;->lineStyle(FIIIF)V

    :cond_5
    return-void
.end method

.method private lineTo(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 3

    .line 1890
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1891
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    .line 1892
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    .line 1893
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/GraphicsElement;->lineTo(FF)V

    :cond_0
    return-void
.end method

.method private moveTo(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 3

    .line 1898
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1899
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    .line 1900
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    .line 1901
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/GraphicsElement;->moveTo(FF)V

    :cond_0
    return-void
.end method

.method private parseColor()V
    .locals 2

    .line 1916
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 1917
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseColorByArrayName()V

    goto :goto_0

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1919
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseColorByParsers()V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseColorByArrayName()V
    .locals 5

    .line 1924
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 1925
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1926
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCurrentColorArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1927
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCurrentColorArrayName:Ljava/lang/String;

    .line 1928
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 1929
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1930
    instance-of v1, v0, [I

    if-eqz v1, :cond_0

    check-cast v0, [I

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 1931
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    goto :goto_0

    .line 1933
    :cond_0
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    goto :goto_0

    .line 1937
    :cond_1
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    :cond_2
    :goto_0
    return-void
.end method

.method private parseColorByParsers()V
    .locals 3

    .line 1942
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    if-nez v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    :cond_0
    const/4 v0, 0x0

    .line 1945
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1946
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parseCommand(Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "command"

    .line 1720
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1721
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "drawEllipse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "beginGradientFill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "curveTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "cubicCurveTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "drawRoundRect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_5
    const-string v0, "createGradientBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "lineGradientStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_7
    const-string v0, "drawCircle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "drawRect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "moveTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_a
    const-string v0, "beginFill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_b
    const-string v0, "lineTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v0, "setRenderListener"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_1

    :sswitch_d
    const-string v0, "lineStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1765
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1762
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1759
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1756
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1753
    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1750
    :pswitch_4
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1747
    :pswitch_5
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1744
    :pswitch_6
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1741
    :pswitch_7
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1738
    :pswitch_8
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1735
    :pswitch_9
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1732
    :pswitch_a
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1729
    :pswitch_b
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1726
    :pswitch_c
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    .line 1723
    :pswitch_d
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6bb6a9e3 -> :sswitch_d
        -0x67c75694 -> :sswitch_c
        -0x41b97271 -> :sswitch_b
        -0x3ff89a34 -> :sswitch_a
        -0x3fac69d4 -> :sswitch_9
        -0x314a46b8 -> :sswitch_8
        -0x212d2ccc -> :sswitch_7
        0x1a040cd -> :sswitch_6
        0x4c651df -> :sswitch_5
        0x839a7ae -> :sswitch_4
        0x2ce1f920 -> :sswitch_3
        0x432d8bca -> :sswitch_2
        0x4e35601c -> :sswitch_1
        0x6a20d1fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseStop()V
    .locals 1

    .line 1951
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 1952
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseStopByArrayName()V

    goto :goto_0

    .line 1953
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsStopsValid:Z

    if-eqz v0, :cond_1

    .line 1954
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseStopByExp()V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseStopByArrayName()V
    .locals 5

    .line 1959
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 1960
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1961
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCurrentStopArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1962
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCurrentStopArrayName:Ljava/lang/String;

    .line 1963
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 1964
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1965
    instance-of v1, v0, [F

    if-eqz v1, :cond_0

    check-cast v0, [F

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 1966
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    goto :goto_0

    .line 1968
    :cond_0
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    goto :goto_0

    .line 1972
    :cond_1
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    :cond_2
    :goto_0
    return-void
.end method

.method private parseStopByExp()V
    .locals 5

    .line 1977
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    if-nez v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    :cond_0
    const/4 v0, 0x0

    .line 1980
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lcom/miui/maml/data/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1981
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scale(F)F
    .locals 1

    .line 1789
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    mul-float/2addr p1, v0

    return p1
.end method

.method private setRenderListener(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 2

    .line 1906
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1907
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 1908
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1909
    instance-of v1, v0, Lcom/miui/maml/elements/FunctionElement;

    if-eqz v1, :cond_0

    .line 1910
    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/GraphicsElement;->setRenderListener(Lcom/miui/maml/elements/FunctionElement;)V

    :cond_0
    return-void
.end method

.method private setShader(Lcom/miui/maml/elements/GraphicsElement;)V
    .locals 12

    .line 1986
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    .line 1987
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseColor()V

    .line 1988
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseStop()V

    .line 1989
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    if-eqz v0, :cond_4

    array-length v2, v0

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 1993
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    if-eqz v2, :cond_1

    array-length v2, v2

    array-length v0, v0

    if-eq v2, v0, :cond_1

    const-string p1, "GraphicsCommand"

    const-string v0, "color and position arrays must be of equal length"

    .line 1994
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1997
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v6, v3

    .line 1998
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v9

    .line 1999
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v10

    .line 2000
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v3, 0x3

    if-le v1, v3, :cond_2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v2, v0

    :cond_2
    move v11, v2

    .line 2001
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    if-ne v0, v1, :cond_3

    .line 2002
    iget-object v7, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    iget-object v8, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Lcom/miui/maml/elements/GraphicsElement;->lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 2003
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    if-ne v0, v1, :cond_5

    .line 2004
    iget-object v7, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    iget-object v8, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Lcom/miui/maml/elements/GraphicsElement;->beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "GraphicsCommand"

    const-string v0, "needs >= 2 number of colors"

    .line 1990
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 2011
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2012
    instance-of v1, v0, Lcom/miui/maml/elements/GraphicsElement;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2016
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/GraphicsElement;

    .line 2017
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2056
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->setRenderListener(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2053
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->createGradientBox(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2050
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->setShader(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2046
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->drawRoundRect(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2043
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->cubicCurveTo(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2040
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->drawEllipse(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2037
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->drawCircle(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2034
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->lineStyle(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2031
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->beginFill(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2028
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->drawRect(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2025
    :pswitch_a
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->curveTo(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2022
    :pswitch_b
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->moveTo(Lcom/miui/maml/elements/GraphicsElement;)V

    goto :goto_0

    .line 2019
    :pswitch_c
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->lineTo(Lcom/miui/maml/elements/GraphicsElement;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
