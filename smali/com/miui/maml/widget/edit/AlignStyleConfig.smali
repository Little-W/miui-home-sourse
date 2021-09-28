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

    .line 65
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

    .line 61
    check-cast p3, Ljava/util/Map;

    move-object v3, p3

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p7, 0x8

    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move v4, p8

    goto :goto_1

    :cond_1
    move v4, p4

    :goto_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    move v5, p8

    goto :goto_2

    :cond_2
    move v5, p5

    :goto_2
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    const/4 p6, 0x5

    move v6, p6

    goto :goto_3

    :cond_3
    move v6, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/widget/edit/AlignStyleConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-void
.end method


# virtual methods
.method public final getDef()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->def:I

    return v0
.end method

.method public final getFrom()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->from:I

    return v0
.end method

.method public final getTo()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;->to:I

    return v0
.end method
