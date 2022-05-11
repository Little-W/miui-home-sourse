.class public final Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;
.super Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.source "NoWordLauncherElementAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter<",
        "Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;)V
    .locals 1

    const-string v0, "mBindElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public iconContainerId()I
    .locals 1

    const v0, 0x7f0a02e5

    return v0
.end method

.method public iconView()Landroid/view/View;
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;->getMBindElement()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;->iconContainerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public titleViewId()I
    .locals 1

    const v0, 0x7f0a0147

    return v0
.end method
