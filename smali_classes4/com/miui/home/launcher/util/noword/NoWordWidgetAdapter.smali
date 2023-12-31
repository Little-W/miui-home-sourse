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

    .line 282
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public iconContainerId()I
    .locals 0

    const p0, 0x7f0a03e7

    return p0
.end method

.method public iconView()Landroid/view/View;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;->getMBindElement()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;->iconContainerId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isNoWordModel()Z
    .locals 0

    .line 293
    invoke-super {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isNoWordModel()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public titleViewId()I
    .locals 0

    const p0, 0x7f0a01b5

    return p0
.end method
