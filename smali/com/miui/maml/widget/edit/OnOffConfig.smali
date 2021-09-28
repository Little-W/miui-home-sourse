.class public final Lcom/miui/maml/widget/edit/OnOffConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final defaultOn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-boolean p4, p0, Lcom/miui/maml/widget/edit/OnOffConfig;->defaultOn:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    .line 88
    check-cast p3, Ljava/util/Map;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 89
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/widget/edit/OnOffConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public final getDefaultOn()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/miui/maml/widget/edit/OnOffConfig;->defaultOn:Z

    return v0
.end method
