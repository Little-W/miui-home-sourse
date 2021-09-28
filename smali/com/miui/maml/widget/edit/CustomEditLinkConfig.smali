.class public final Lcom/miui/maml/widget/edit/CustomEditLinkConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private current:Ljava/lang/String;

.field private final link:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "customEditLocalId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 95
    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;->link:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;->current:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 94
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCurrent()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;->current:Ljava/lang/String;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final setCurrent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;->current:Ljava/lang/String;

    return-void
.end method
