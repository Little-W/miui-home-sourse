.class public final Lcom/miui/maml/widget/edit/OneConfig;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private alignStyleConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

.field private dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

.field private imageConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onOffConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private textConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textFontConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textSizeConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/miui/maml/widget/edit/OneConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/maml/widget/edit/DateSetSaveConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    iput-object p2, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    iput-object p3, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    iput-object p4, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    iput-object p5, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    iput-object p6, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    iput-object p7, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    iput-object p8, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    iput-object p9, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 38
    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 39
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 40
    move-object v4, v2

    check-cast v4, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 41
    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 42
    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 43
    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 44
    move-object v8, v2

    check-cast v8, Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 45
    move-object v9, v2

    check-cast v9, Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 46
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    goto :goto_8

    :cond_8
    move-object/from16 v0, p9

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v0

    invoke-direct/range {p1 .. p10}, Lcom/miui/maml/widget/edit/OneConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/widget/edit/OneConfig;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;ILjava/lang/Object;)Lcom/miui/maml/widget/edit/OneConfig;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/miui/maml/widget/edit/OneConfig;->copy(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)Lcom/miui/maml/widget/edit/OneConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final component3()Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final component5()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final component6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final component8()Lcom/miui/maml/widget/edit/DateSetSaveConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    return-object v0
.end method

.method public final component9()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)Lcom/miui/maml/widget/edit/OneConfig;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/maml/widget/edit/DateSetSaveConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/miui/maml/widget/edit/OneConfig;"
        }
    .end annotation

    new-instance v10, Lcom/miui/maml/widget/edit/OneConfig;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/widget/edit/OneConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/maml/widget/edit/OneConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/maml/widget/edit/OneConfig;

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    iget-object p1, p1, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAlignStyleConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final getColorConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final getColorGroupConfig()Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    return-object v0
.end method

.method public final getDateSetConfig()Lcom/miui/maml/widget/edit/DateSetSaveConfig;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    return-object v0
.end method

.method public final getImageConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final getOnOffConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final getTextConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final getTextFontConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    return-object v0
.end method

.method public final getTextSizeConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final set(Lcom/miui/maml/widget/edit/OneConfig;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 49
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 50
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 51
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    if-eqz p1, :cond_3

    .line 52
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 53
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 54
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    if-eqz p1, :cond_6

    .line 55
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object v1, v0

    :goto_6
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 56
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    goto :goto_7

    :cond_7
    move-object v1, v0

    :goto_7
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    if-eqz p1, :cond_8

    .line 57
    iget-object v0, p1, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    :cond_8
    iput-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-void
.end method

.method public final setAlignStyleConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    return-void
.end method

.method public final setColorConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    return-void
.end method

.method public final setColorGroupConfig(Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    return-void
.end method

.method public final setDateSetConfig(Lcom/miui/maml/widget/edit/DateSetSaveConfig;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    return-void
.end method

.method public final setImageConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    return-void
.end method

.method public final setOnOffConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-void
.end method

.method public final setTextConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    return-void
.end method

.method public final setTextFontConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    return-void
.end method

.method public final setTextSizeConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneConfig(textConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorGroupConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textSizeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alignStyleConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textFontConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateSetConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onOffConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
