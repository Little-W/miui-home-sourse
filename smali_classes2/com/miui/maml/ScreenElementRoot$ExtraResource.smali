.class Lcom/miui/maml/ScreenElementRoot$ExtraResource;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;,
        Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;,
        Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    }
.end annotation


# instance fields
.field private mResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mScales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .locals 4

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 1016
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    .line 1017
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    .line 1018
    invoke-static {p2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x1e0

    div-int/lit16 v1, v1, 0xf0

    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    const/4 v1, 0x0

    .line 1020
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mSizeType:I

    const/4 v2, 0x0

    .line 1021
    iput-object v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1022
    iput v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    .line 1023
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v2, "extraResourcesDensity"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1026
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v2, "extraResourcesScreenWidth"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1027
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v2, "extraResources"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1029
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    .line 1030
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 1031
    invoke-static {p2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result p2

    mul-int/lit16 p2, p2, 0x1e0

    div-int/lit16 p2, p2, 0xf0

    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 1033
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 1034
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 1035
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v0, "extraScaleByDensity"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1038
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v0, "extraScaleByScreenWidth"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1039
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v0, "extraScales"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .locals 0

    .line 886
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
            ")V"
        }
    .end annotation

    .line 1043
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    .line 1044
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1045
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1047
    :try_start_0
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    if-ne p1, v4, :cond_0

    .line 1048
    new-instance v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p0, v3, p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1049
    :cond_0
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    if-ne p1, v4, :cond_1

    .line 1050
    new-instance v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p0, v3, p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "ScreenElementRoot"

    .line 1053
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format error of attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static parseSizeType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "small"

    .line 1061
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    .line 1063
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "large"

    .line 1065
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "xlarge"

    .line 1067
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;)",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;"
        }
    .end annotation

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const v1, 0x7fffffff

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 1091
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-eq v4, p3, :cond_1

    goto :goto_0

    .line 1094
    :cond_1
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 1097
    iget v1, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1098
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1099
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_2
    if-ne v4, v1, :cond_0

    .line 1101
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 1104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1105
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_0

    .line 1107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1111
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 1112
    iget v0, p4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-ne v0, p3, :cond_6

    move-object p2, p4

    goto :goto_2

    .line 1115
    :cond_6
    iget v0, p4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-nez v0, :cond_5

    move-object p2, p4

    goto :goto_1

    :cond_7
    :goto_2
    return-object p2
.end method

.method public findResource(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    return-object p1
.end method

.method public findScale(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object p1

    return-object p1
.end method
