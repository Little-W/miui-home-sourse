.class public final Lcom/miui/maml/widget/edit/TextSizeConfig;
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

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput p4, p0, Lcom/miui/maml/widget/edit/TextSizeConfig;->def:I

    iput p5, p0, Lcom/miui/maml/widget/edit/TextSizeConfig;->from:I

    iput p6, p0, Lcom/miui/maml/widget/edit/TextSizeConfig;->to:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    .line 45
    check-cast p3, Ljava/util/Map;

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/widget/edit/TextSizeConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-void
.end method


# virtual methods
.method public final getDef()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/miui/maml/widget/edit/TextSizeConfig;->def:I

    return p0
.end method

.method public final getFrom()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/miui/maml/widget/edit/TextSizeConfig;->from:I

    return p0
.end method

.method public final getTo()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/miui/maml/widget/edit/TextSizeConfig;->to:I

    return p0
.end method
