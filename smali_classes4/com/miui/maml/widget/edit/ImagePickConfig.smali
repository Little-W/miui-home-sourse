.class public final Lcom/miui/maml/widget/edit/ImagePickConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 94
    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
