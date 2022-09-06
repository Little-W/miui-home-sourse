.class public Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;
.super Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.source "NoWordLauncherElementAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter<",
        "Lcom/miui/home/launcher/ItemIcon;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    const-string v0, "mBindElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public iconContainerId()I
    .locals 1

    const v0, 0x7f0a019f

    return v0
.end method

.method public iconView()Landroid/view/View;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;->getMBindElement()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public titleViewId()I
    .locals 1

    const v0, 0x7f0a01a7

    return v0
.end method
