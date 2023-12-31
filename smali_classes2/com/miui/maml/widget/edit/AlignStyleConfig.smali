.class public final Lcom/miui/maml/widget/edit/AlignStyleConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final def:I

.field private final from:I

.field private final to:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput p4, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->def:I

    iput p5, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->from:I

    iput p6, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->to:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    .line 55
    check-cast p3, Ljava/util/Map;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move v4, p8

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    move v5, p8

    goto :goto_1

    :cond_2
    move v5, p5

    :goto_1
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    const/4 p6, 0x5

    :cond_3
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/widget/edit/AlignStyleConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-void
.end method


# virtual methods
.method public final getDef()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->def:I

    return p0
.end method

.method public final getFrom()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->from:I

    return p0
.end method

.method public final getTo()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->to:I

    return p0
.end method
