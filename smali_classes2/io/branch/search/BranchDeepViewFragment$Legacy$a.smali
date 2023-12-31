.class public Lio/branch/search/BranchDeepViewFragment$Legacy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchDeepViewFragment$Legacy;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/BranchDeepViewFragment$Legacy;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchDeepViewFragment$Legacy;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment$Legacy$a;->a:Lio/branch/search/BranchDeepViewFragment$Legacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$Legacy$a;->a:Lio/branch/search/BranchDeepViewFragment$Legacy;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
