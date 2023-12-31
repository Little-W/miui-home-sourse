.class public final Lcom/miui/maml/widget/edit/ColorGroupConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/ColorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final uiType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/ColorConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput p4, p0, Lcom/miui/maml/widget/edit/ColorGroupConfig;->uiType:I

    iput-object p5, p0, Lcom/miui/maml/widget/edit/ColorGroupConfig;->colors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    .line 36
    check-cast p3, Ljava/util/Map;

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/widget/edit/ColorGroupConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/ColorConfig;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/miui/maml/widget/edit/ColorGroupConfig;->colors:Ljava/util/List;

    return-object p0
.end method

.method public final getUiType()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/miui/maml/widget/edit/ColorGroupConfig;->uiType:I

    return p0
.end method
