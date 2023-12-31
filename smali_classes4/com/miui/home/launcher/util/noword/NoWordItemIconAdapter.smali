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

    .line 270
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public iconContainerId()I
    .locals 0

    const p0, 0x7f0a01ac

    return p0
.end method

.method public iconView()Landroid/view/View;
    .locals 0

    .line 273
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;->getMBindElement()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public titleViewId()I
    .locals 0

    const p0, 0x7f0a01b5

    return p0
.end method
