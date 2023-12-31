.class public final Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;
.super Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.source "NoWordLauncherElementAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter<",
        "Lcom/miui/home/launcher/gadget/Gadget;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 1

    const-string v0, "mBindElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public iconContainerId()I
    .locals 0

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->getMBindElement()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->iconContainerId()I

    move-result p0

    return p0
.end method

.method public iconView()Landroid/view/View;
    .locals 0

    .line 304
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->getMBindElement()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->iconView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public invalidateViewWhenEditModeChange()Landroid/view/View;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->getMBindElement()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->invalidateViewWhenEditModeChange()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->getMBindElement()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public titleViewId()I
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->getMBindElement()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->titleViewId()I

    move-result p0

    return p0
.end method
