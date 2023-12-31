.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallDialogViewContainer$ACLzBIrRCq5Vf-p2iSZPl0MyenA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field private final synthetic f$0:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallDialogViewContainer$ACLzBIrRCq5Vf-p2iSZPl0MyenA;->f$0:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallDialogViewContainer$ACLzBIrRCq5Vf-p2iSZPl0MyenA;->f$0:Landroidx/core/util/Consumer;

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->lambda$inflateShortcutIcon$2(Landroidx/core/util/Consumer;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method
