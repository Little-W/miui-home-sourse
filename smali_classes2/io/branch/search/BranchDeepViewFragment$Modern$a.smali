.class public Lio/branch/search/BranchDeepViewFragment$Modern$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchDeepViewFragment$Modern;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/BranchDeepViewFragment$Modern;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchDeepViewFragment$Modern;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment$Modern$a;->a:Lio/branch/search/BranchDeepViewFragment$Modern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$Modern$a;->a:Lio/branch/search/BranchDeepViewFragment$Modern;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
