.class public final Lcom/miui/maml/widget/edit/ImageSelectConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final height:I

.field private final subtitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiType:I

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p4, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->values:Ljava/util/List;

    iput-object p5, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->subtitleList:Ljava/util/List;

    iput p6, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->width:I

    iput p7, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->height:I

    iput p8, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->uiType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 65
    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/miui/maml/widget/edit/ImageSelectConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;III)V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->height:I

    return p0
.end method

.method public final getSubtitleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->subtitleList:Ljava/util/List;

    return-object p0
.end method

.method public final getUiType()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->uiType:I

    return p0
.end method

.method public final getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->values:Ljava/util/List;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/maml/widget/edit/ImageSelectConfig;->width:I

    return p0
.end method
