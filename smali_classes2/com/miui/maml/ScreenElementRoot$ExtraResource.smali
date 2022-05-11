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

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 989
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 1008
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    .line 1009
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    .line 1010
    invoke-static {p2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x1e0

    div-int/lit16 v1, v1, 0xf0

    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    const/4 v1, 0x0

    .line 1012
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mSizeType:I

    const/4 v2, 0x0

    .line 1013
    iput-object v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1014
    iput v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    .line 1015
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v2, "extraResourcesDensity"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1018
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v2, "extraResourcesScreenWidth"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1019
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v2, "extraResources"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1021
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    .line 1022
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 1023
    invoke-static {p2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result p2

    mul-int/lit16 p2, p2, 0x1e0

    div-int/lit16 p2, p2, 0xf0

    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 1025
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 1026
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 1027
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v0, "extraScaleByDensity"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1030
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v0, "extraScaleByScreenWidth"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 1031
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

    .line 878
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

    .line 1035
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    .line 1036
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1037
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1039
    :try_start_0
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    if-ne p1, v4, :cond_0

    .line 1040
    new-instance v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p0, v3, p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1041
    :cond_0
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    if-ne p1, v4, :cond_1

    .line 1042
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

    .line 1045
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

    .line 1053
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    .line 1055
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "large"

    .line 1057
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "xlarge"

    .line 1059
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

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1081
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

    .line 1083
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-eq v4, p3, :cond_1

    goto :goto_0

    .line 1086
    :cond_1
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 1089
    iget v1, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1090
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1091
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_2
    if-ne v4, v1, :cond_0

    .line 1093
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 1096
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1097
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_0

    .line 1099
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1103
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

    .line 1104
    iget v0, p4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-ne v0, p3, :cond_6

    move-object p2, p4

    goto :goto_2

    .line 1107
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

    .line 1067
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    return-object p1
.end method

.method public findScale(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object p1

    return-object p1
.end method
