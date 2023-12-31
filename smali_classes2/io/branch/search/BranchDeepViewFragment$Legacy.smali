.class public Lio/branch/search/BranchDeepViewFragment$Legacy;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchDeepViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Legacy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/BranchDeepViewFragment;->access$000(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-static {p1, p2}, Lio/branch/search/BranchDeepViewFragment;->access$100(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    new-instance v0, Lio/branch/search/BranchDeepViewFragment$Legacy$a;

    invoke-direct {v0, p0}, Lio/branch/search/BranchDeepViewFragment$Legacy$a;-><init>(Lio/branch/search/BranchDeepViewFragment$Legacy;)V

    invoke-static {p1, p2, v0}, Lio/branch/search/BranchDeepViewFragment;->access$200(Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method
