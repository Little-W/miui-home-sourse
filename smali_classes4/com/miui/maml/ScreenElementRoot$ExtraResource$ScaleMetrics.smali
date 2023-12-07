.class Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleMetrics"
.end annotation


# instance fields
.field mDensity:I

.field mScreenWidth:I

.field mSizeType:I

.field scale:F

.field final synthetic this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 895
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 7

    .line 900
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 895
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    :try_start_0
    const-string p1, ":"

    .line 902
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 903
    sget-object v0, Lcom/miui/maml/ScreenElementRoot$4;->$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_9

    const/4 v2, 0x2

    if-eq p3, v2, :cond_8

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    goto/16 :goto_2

    .line 922
    :cond_0
    aget-object p3, p1, v0

    const-string v4, "-"

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 923
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 924
    array-length v4, p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "invalid format: "

    if-ne v4, v1, :cond_3

    .line 925
    :try_start_1
    aget-object v4, p3, v0

    const-string v6, "sw"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 926
    aget-object p3, p3, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 927
    iget p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 p3, p3, 0xf0

    div-int/lit16 p3, p3, 0x1e0

    invoke-static {p3}, Lcom/miui/maml/ResourceManager;->retranslateDensity(I)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    goto :goto_0

    .line 929
    :cond_1
    aget-object v4, p3, v0

    const-string v6, "den"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 930
    aget-object p3, p3, v0

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 931
    iget p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {p3}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result p3

    mul-int/lit16 p3, p3, 0x1e0

    div-int/lit16 p3, p3, 0xf0

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    goto :goto_0

    .line 934
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 935
    :cond_3
    array-length v4, p3

    if-lt v4, v2, :cond_7

    .line 936
    aget-object v0, p3, v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 937
    aget-object v0, p3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 938
    array-length v0, p3

    if-ne v0, v3, :cond_4

    .line 939
    aget-object p3, p3, v2

    invoke-static {p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->access$200(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 944
    :cond_4
    :goto_0
    array-length p3, p1

    if-le p3, v1, :cond_6

    .line 945
    array-length p3, p1

    if-ne p3, v2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    aget-object p3, p1, v1

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    .line 947
    :cond_6
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->onParseInfo([Ljava/lang/String;)V

    goto :goto_2

    .line 942
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 913
    :cond_8
    aget-object p3, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 914
    iget p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 p3, p3, 0xf0

    div-int/lit16 p3, p3, 0x1e0

    invoke-static {p3}, Lcom/miui/maml/ResourceManager;->retranslateDensity(I)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 916
    array-length p3, p1

    if-le p3, v1, :cond_a

    .line 917
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    goto :goto_2

    .line 905
    :cond_9
    aget-object p3, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 906
    iget p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {p3}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result p3

    mul-int/lit16 p3, p3, 0x1e0

    div-int/lit16 p3, p3, 0xf0

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 908
    array-length p3, p1

    if-le p3, v1, :cond_a

    .line 909
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    :goto_2
    return-void

    .line 951
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "format error of string: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenElementRoot"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected onParseInfo([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScaleMetrics sw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " den:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sizeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
